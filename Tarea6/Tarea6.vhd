LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Tarea6 IS
	PORT( KEY : IN std_logic_vector(0 downto 0);
			SW : IN std_logic_vector(0 downto 0);
			HEX0 : OUT std_logic_vector(6 downto 0);
			HEX1 : OUT std_logic_vector(6 downto 0);
			HEX2 : OUT std_logic_vector(6 downto 0);
			HEX3 : OUT std_logic_vector(6 downto 0);
			LEDR : OUT std_logic_vector(2 downto 0));
END Tarea6;

ARCHITECTURE Structure OF Tarea6 IS
	COMPONENT driver7Segmentos IS
		PORT( codigoCaracter : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
				bitsCaracter : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
	END COMPONENT;

	SIGNAL comptador : std_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
	
	PROCESS (key(0)) BEGIN
		if rising_edge(key(0)) then
			if sw(0) = '1' then
				comptador <= comptador - 1;
			else
				comptador <= comptador + 1;				
			END if;		
		END if;
	END PROCESS;
	
	ledr <= comptador;
	
	
	Visor0 : driver7Segmentos
		PORT MAP (codigoCaracter => comptador + 3,
					 bitsCaracter => HEX0);

	Visor1 : driver7Segmentos
		PORT MAP (codigoCaracter => comptador + 2,
					 bitsCaracter => HEX1);

	Visor2 : driver7Segmentos
		PORT MAP (codigoCaracter => comptador + 1,
					 bitsCaracter => HEX2);

	Visor3 : driver7Segmentos
		PORT MAP (codigoCaracter => comptador,
					 bitsCaracter => HEX3);
	 
END Structure;