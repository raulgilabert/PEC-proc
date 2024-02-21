LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY driver7display IS
	PORT( charCode : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			charBits : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END driver7display;

ARCHITECTURE Structure OF driver7display IS
BEGIN
	with charCode select
		charBits <= "0001000" when "000", -- A
						"0000011" when "001", -- B
						"0100111" when "010", -- C
						"0100001" when "011", -- D
						"0000110" when "100", -- E
						"0001110" when "101", -- F
						"0010000" when "110", -- G
						"0001001" when "111", -- H
						"1111111" when others;
END Structure;
