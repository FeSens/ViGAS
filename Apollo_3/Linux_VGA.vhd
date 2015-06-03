library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_signed.all;

entity Linux_VGA is

port (
			VGA_R : out std_logic_vector(1 downto 0);
			VGA_G : out std_logic_vector(1 downto 0);
			VGA_B : out std_logic_vector(1 downto 0);
			VGA_HS : out std_logic;
			VGA_VS : out std_logic;
			VGA_CLK : out std_logic;
			VGA_SYNC_n : out std_logic := '0';
			VGA_BLANK_n : out std_logic := '1';
			
			clk : in std_logic;
			reset : in std_logic;
			
			Datain : in std_logic_vector(7 downto 0);
			
			DataW : in std_logic
);


end Linux_VGA;

architecture behavior of Linux_VGA is
	signal clk_pix : std_logic;
	signal OSC_50_B5B : std_logic; 
	signal hc : integer range 0 to 799 := 0;
	signal vc : integer range 0 to 799 := 0;
	
begin
OSC_50_B5B <= clk;
	
	process (OSC_50_B5B)
	begin
	if(OSC_50_B5B'event and OSC_50_B5B = '1') then
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
		
	end if;	
	end process;
	
	VGA_CLK <= clk_pix;
	process (clk_pix)
	begin
		if(clk_pix'event and clk_pix = '1') then
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
	VGA_R <= Datain(1 downto 0);
	VGA_G <= Datain(3 downto 2);
	VGA_B <= Datain(5 downto 4);
end process;

end behavior;