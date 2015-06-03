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
			chipselect : out std_logic := '1';	
			readD : buffer  std_logic := '0';
			readdata : in std_logic_vector(31 downto 0);		
			writeD : out std_logic := '0';
			writedata : out std_logic_vector(31 downto 0);			
			waitrequest : in std_logic;
			
			clk : in std_logic;
			reset : in std_logic

);


end SpaceCraft;

architecture behavior of SpaceCraft is
	signal clk_pix : std_logic;
	signal OSC_50_B5B : std_logic; 
	signal data : std_logic_vector(7 downto 0);
	signal hc : integer range 0 to 799 := 0;
	signal vc : integer range 0 to 799 := 0;
	
begin
OSC_50_B5B <= clk;
	
	process (OSC_50_B5B)
	begin
	if(OSC_50_B5B'event and OSC_50_B5B = '0') then
		clk_pix <= NOT clk_pix;
		
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
		
		if(readD = '0') then
--			address <= std_logic_vector(to_unsigned(((vc+1)*(hc+1)),19));
			address(8 downto 0) <= std_logic_vector(to_unsigned((vc),9));  
			address(18 downto 9) <= std_logic_vector(to_unsigned((hc),10));
			readD <= '1';
		else
			readD <= '0';
			data <= readdata;
		end if;
	end if;	
	end process;
	
	VGA_CLK <= clk_pix;
	
	process (clk_pix)
	begin
		if(clk_pix'event and clk_pix = '0') then
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
		VGA_R <= data(7 downto 0);
		VGA_G <= data(15 downto 8);
		VGA_B <= data(23 downto 16);
	else
		VGA_R <= "00000000";
		VGA_G <= "00000000";
		VGA_B <= "00000000";
	end if;
	
end process;

end behavior;
