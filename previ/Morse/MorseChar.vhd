library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY MorseChar IS
	PORT (
		clk: IN std_logic;
		data: IN std_logic_vector(12 downto 0);
		working: IN std_logic;
		led: OUT std_logic;
		end_char: OUT std_logic
	);
END MorseChar;


ARCHITECTURE Structure OF MorseChar IS
	
	SIGNAL iterator: std_logic_vector(3 downto 0) := "1111";

BEGIN
	
	PROCESS (clk)
	BEGIN
		if rising_edge(clk) then
			if working = '0' then
				iterator <= "1101";
			else 
				iterator <= std_logic_vector(to_unsigned(to_integer(unsigned(iterator)) - 1, 4));
			END if;
		END if;
	END PROCESS;

	led <= data(to_integer(unsigned(iterator))) when working = '1' else '0';
	end_char <= '1' when data(to_integer(unsigned(iterator))) = '0' and data(to_integer(unsigned(iterator)) - 1) = '0' else '0';
	
END structure;