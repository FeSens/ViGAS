library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity SpaceCraft is
port (
			clk : in std_logic;
			reset : in std_logic;
			
			dataW : in std_logic;
			datain : in std_logic_vector(7 downto 0);
			
			dataout : out std_logic_vector(3 downto 0)
);
end SpaceCraft;

architecture behavior of SpaceCraft is
	signal dataA : std_logic_vector(3 downto 0);
	signal dataB : std_logic_vector(3 downto 0);
begin	
	process (clk)
	begin
	if(clk'event and clk = '1') then
		dataA <= datain(3 downto 0);
		dataB <= datain(7 downto 4);
		
		dataout <= std_logic_vector(unsigned(dataA) + unsigned(dataB));
	end if;
	end process;
	
end behavior;
	