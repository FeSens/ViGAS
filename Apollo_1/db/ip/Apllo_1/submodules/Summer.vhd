library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Summer is
port (
			clk : in std_logic;
			reset : in std_logic;
			
			dataW : in std_logic;
			datain : in std_logic_vector(15 downto 0);
	
			dataR : in std_logic;
			dataout : out std_logic_vector(7 downto 0)
);
end Summer;

architecture behavior of Summer is
	signal dataA : std_logic_vector(7 downto 0);
	signal dataB : std_logic_vector(7 downto 0);
begin	
	process (clk)
	begin
	if(clk'event and clk = '1') then
		dataA <= datain(7 downto 0);
		dataB <= datain(15 downto 8);
		
		dataout <= std_logic_vector(unsigned(dataA) + unsigned(dataB));
	end if;
	end process;
	
end behavior;
	

	