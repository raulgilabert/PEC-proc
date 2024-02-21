-- generic con size, input de vector con los datos
-- funcionamiento

-- process con for con if rising y dentro poner luz dependiendo de calor en vector

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY MorseChar IS
	GENERIC (
		size: integer
	);
	PORT (
		data: IN std_logic_vector(size - 1 downto 0);
		reset: IN std_logic;
		clk: IN std_logic;
		led: OUT std_logic;
		end_char: OUT std_logic;
	);
END MorseChar;


ARCHITECTURE Structure OF MorseChar IS



BEGIN
	PROCESS (reset)
	BEGIN
	
		for i in 0 to size - 1 loop

			if rising_edge(clk) then
				led <= data(i);
			END if;
		
		END loop;
		
		end_char <= '1';
	
	END PROCESS;


END Structure;



