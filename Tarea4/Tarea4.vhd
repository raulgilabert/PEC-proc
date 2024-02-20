LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Tarea4 IS
	PORT( SW : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END Tarea4;

ARCHITECTURE Structure OF Tarea4 IS
BEGIN
	with sw select
		HEX0 <=  not "0111111" when "000",
					not "0000110" when "001",
					not "1011011" when "010",
					not "1001111" when "011",
					not "1100110" when "100",
					not "1101101" when "101",
					not "1111101" when "110",
					not "0000111" when others;
END Structure;
