library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_signed.all;

entity SpaceCraft is

port (
			VGA_R : out std_logic_vector(7 downto 0);
			VGA_G : out std_logic_vector(7 downto 0);
			VGA_B : out std_logic_vector(7 downto 0);
			VGA_HS : out std_logic;
			VGA_VS : out std_logic;
			VGA_CLK : out std_logic;
			VGA_SYNC_n : out std_logic := '0';
			VGA_BLANK_n : out std_logic := '1';
			
			address : out std_logic_vector(31 downto 0);
		   chipselect : out std_logic := '0';	
			readD : buffer  std_logic := '0';
			readdata : in std_logic_vector(15 downto 0);		
			writeD : out std_logic := '0';
			writedata : out std_logic_vector(15 downto 0);			
			waitrequest : in std_logic;
		   transferrequest : out std_logic := '0';
			readdatavalid : in std_logic;
			
			led : out std_logic_vector(3 downto 0);
			
			sw : in std_logic_vector(3 downto 0);
			clk100 : in std_logic;
			clk50 : in std_logic;
			clk25 : in std_logic;
			reset : in std_logic

);


end SpaceCraft;

architecture behavior of SpaceCraft is
	type mem_state is (s0,s1,s2,s3,s4);
	signal state : mem_state := s3;
	signal state_n : mem_state := s3;
	signal data : std_logic_vector(15 downto 0);
	signal hc : integer range 0 to 799 := 0;
	signal vc : integer range 0 to 799 := 0;
	signal add : std_logic_vector(31 downto 0);
	signal request : std_logic;
	signal request_p : std_logic;
begin
transferrequest <= sw(1);
VGA_CLK <= clk25;
add (8 downto 0) <= std_logic_vector(to_unsigned((vc),9));
add (18 downto 9) <= std_logic_vector(to_unsigned((hc),10));
add (31 downto 19) <= "0000000000000";

	process(state, add, clk100)
	begin
		case state is
			when s0 =>
			if((request = (not request_p)) )then
				--	transferrequest <= '1';
				chipselect <= '1';
					address <= add;
					readD <= '1';
					state_n <= s1;
					led <= "0001";
			end if;
			
			when s1 =>
				if(waitrequest = '0') then
					state_n <= s2;
					led <= "0010";
				end if;
				
			when s2 =>
				if(readdatavalid = '1') then
					data <= readdata;
					readD <= '0';

					state_n <= s3;
					led <= "0011";
				end if;
				
			when s3 =>
		--	transferrequest <= '0';
			chipselect <= '0';
			state_n <= s0;
			led <= "0100";
			request <= request_p;
			
			when others =>
			state_n <= s0;
			led <= "0101";
		end case;
	end process;
	
	process(clk100) 
	begin
		if(clk100'event and clk100 = '0') then
			if( reset = '0') then
				state <= state_n;
			else
				state <= s0;
			end if;
		end if;
		end process;

	process (clk50)
	begin
	if(clk50'event and clk50 = '1') then
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
	
	process (clk25)
	begin
		if(clk25'event and clk25 = '1') then
			request_p <= not request_p;
			if(hc < 799) then
				hc <= hc + 1;
			else 
				hc <= 0;
				if (vc < 524) then
					vc <= vc + 1;
				else
					vc <= 0;
				end if;
			end if;
		end if;		
	end process;

process (vc,hc)
begin
	if( (hc > 144) and (hc < (144 + 640)) and (vc > 31) and (vc < (31 + 480)) ) then 
		VGA_R(7 downto 3) <= data(4 downto 0);
		VGA_G(7 downto 2) <= data(10 downto 5);
		VGA_B(7 downto 3) <= data(15 downto 11);
	else
		VGA_R <= "00000000";
		VGA_G <= "00000000";
		VGA_B <= "00000000";
	end if;
	
end process;

end behavior;