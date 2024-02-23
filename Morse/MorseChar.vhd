library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY MorseChar IS
	PORT (
		clk: IN std_logic;
		data: IN std_logic_vector(11 downto 0);
		len: IN std_logic_vector(3 downto 0);
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
				iterator <= "0000";
			else
				iterator <= std_logic_vector(to_unsigned(to_integer(unsigned(iterator)) + 1, 4));
			END if;
		END if;
	END PROCESS;
					
	led <= data(11 - to_integer(unsigned(iterator))) when working = '1' else '0';
	end_char <= '1' when iterator = len else '0';
	
END Structure;


