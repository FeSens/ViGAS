library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Vga is

port (
	clk : in std_logic;
	reset : in std_logic;
			
	clk_25 : in std_logic;
	VGA_R : out std_logic_vector(7 downto 0);
	VGA_G : out std_logic_vector(7 downto 0);
	VGA_B : out std_logic_vector(7 downto 0);
	VGA_HS : out std_logic;
	VGA_VS : out std_logic;
	VGA_CLK : out std_logic;
	VGA_SYNC_n : out std_logic := '0';
	VGA_BLANK_n : out std_logic := '1';
	
	-- debug dragon of foam
	sw : in std_logic_vector (3 downto 0);
	-- read master
	--read_lock: out std_logic;
	clk_Avalon : in std_logic;
	read_request : buffer std_logic;
	read_address : out std_logic_vector (31 downto 0);
	read_readdata : in std_logic_vector (31 downto 0);
	read_waitrequest : in std_logic
);
end Vga;

architecture behavior of Vga is
component ap
port (
		data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		rdclk		: IN STD_LOGIC ;
		rdreq		: IN STD_LOGIC ;
		wrclk		: IN STD_LOGIC ;
		wrreq		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		rdempty		: OUT STD_LOGIC ;
		wrfull		: OUT STD_LOGIC
);
end component;
	signal Vga_data : std_logic_vector(31 downto 0);
	signal hc : integer range 0 to 799 := 0;
	signal vc : integer range 0 to 799 := 0;
	signal vga_address : std_logic_vector (31 downto 0);
	
	type read_states_T is (idle, running, stopping);
	signal read_state : read_states_T;
	signal read_flag : std_logic;
	signal master_address : std_logic_vector (31 downto 0);
	signal fifo_read, fifo_write, fifo_empty, fifo_full : std_logic;
begin

fifo_inst: ap
port map (
	data => read_readdata,
	rdclk => clk_25,
	rdreq => fifo_read,
	wrclk => clk_Avalon,
	wrreq => fifo_write,
	q => Vga_data,
	rdempty => fifo_empty,
	wrfull => fifo_full
);


	VGA_CLK <= clk_25;
	--read_lock <= sw(1);
	
	--vga_address (8 downto 0) <= std_logic_vector(to_unsigned((vc),9));
	--vga_address (18 downto 9) <= std_logic_vector(to_unsigned((hc),10));
	--vga_address (31 downto 19) <= "0000000000000";

Avalon_read: process (clk_Avalon, reset)
begin
	if reset = '1' then
		read_state <= idle;
		master_address <= (others => '0');
	elsif rising_edge (clk) then
		case read_state is 
		
			when idle =>
				if read_flag = '1' then
					read_state <= running;
					--read_lock <= '0';
					master_address <= (others => '0');--vga_address;
				end if;
		
			when running =>
				if read_waitrequest /= '1' and fifo_full = '0' then
						--read_lock <= '1';
						master_address <= master_address + 1;
						if master_address = 307200 then	
							read_state <= stopping;
						end if;
				end if;
			
			when stopping =>
				master_address <= (others => '0');
				read_state <= idle;
		end case;
	end if;
end process;

--Avalon read combinatory signals
read_flag <= sw(0);
--read_flag <= '1' when clk_25 = '1' and read_state /= idle else '0';
read_request <= '1' when read_state = running and fifo_full = '0' else '0';
fifo_write <= '1' when read_state = running and read_waitrequest = '0' and fifo_full = '0' else '0';
read_address <= master_address;

process (clk)
begin
	if(clk'event and clk = '0') then	
		if(hc < 96) then
			VGA_HS <= '0';
		else
			VGA_HS <= '1';
		end if;
		
		if(vc < 2) then
			VGA_VS <= '0';
		else
			VGA_VS <= '1';
		end if;
	end if;	
end process;

-- Avalon read state machine	



process (clk_25)
begin
	if(clk_25'event and clk_25 = '0') then
		if(hc < 799) then
			hc <= hc + 1;
			--vga_address <= vga_address + 1;
		else 
			hc <= 0;
			if (vc < 524) then
				vc <= vc + 1;
			else
				vc <= 0;
				--vga_address <= (others => '0');
			end if;
		end if;
	end if;		
end process;
fifo_read <= '1' when fifo_empty = '0' else '0';

process (vc,hc)
begin
	if( (hc > 144) and (hc < (144 + 640)) and (vc > 31) and (vc < (31 + 480)) ) then 
		VGA_R <= Vga_data(7 downto 0);
		VGA_G <= Vga_data(15 downto 8);
		VGA_B <= Vga_data(23 downto 16);
	else
		VGA_R <= "00000000";
		VGA_G <= "00000000";
		VGA_B <= "00000000";
	end if;
end process;
end behavior;
