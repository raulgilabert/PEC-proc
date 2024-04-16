LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY driver7display IS
	PORT( codigoCaracter : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			bitsCaracter : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END driver7display;

ARCHITECTURE Structure OF driver7display IS
BEGIN
	with codigoCaracter select
		bitsCaracter <=   "1000000" when "0000",
								"1111001" when "0001",
								"0100100" when "0010",
								"0110000" when "0011",
								"0011001" when "0100",
								"0010010" when "0101",
								"0000010" when "0110",
								"1111000" when "0111",
								"0000000" when "1000",
								"0010000" when "1001",
								"0111111" when others;
END Structure;
