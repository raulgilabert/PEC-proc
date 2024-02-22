-- generic con size, input de vector con los datos
-- funcionamiento

-- process con for con if rising y dentro poner luz dependiendo de calor en vector

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

ENTITY MorseChar IS
	GENERIC (
		size: integer
	);
	PORT (
		data: IN std_logic_vector(size - 1 downto 0);
		start: IN std_logic;
		clk: IN std_logic;
		led: OUT std_logic;
		end_char: OUT std_logic
	);
END MorseChar;


ARCHITECTURE Structure OF MorseChar IS
	SIGNAL counter: std_logic_vector(3 downto 0);
	SIGNAL counter_s: std_logic_vector(3 downto 0);

BEGIN
	
	PROCESS (clk)
	BEGIN
		if rising_edge(clk) then
			counter_s <= counter - 1;
			
			led <= data(to_integer(unsigned(counter)));
			
			end_char <= '0';
			
			if  data(counter) nor data(counter + 1) then
				counter_s <= std_logic_vector(to_unsigned(size - 1, 4));
				end_char <= '1';
			END if;
		END if;
	END PROCESS;

	PROCESS (start)
	BEGIN

        

	END PROCESS
		
	with reset select 	
			counter <= counter_s when '0',
						  (others=>'0') when others;
	
END Structure;



