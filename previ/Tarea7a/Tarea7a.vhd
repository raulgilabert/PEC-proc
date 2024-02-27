LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Tarea7a IS
	PORT( CLOCK_50 : IN std_logic;
			HEX0 : OUT std_logic_vector(6 downto 0));
END Tarea7a;

ARCHITECTURE Structure OF Tarea7a IS
	COMPONENT driver7display IS
		PORT( codigoCaracter : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				bitsCaracter : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
	END COMPONENT;

	SIGNAL comptador : std_logic_vector(24 downto 0);
	
	SIGNAL num : std_logic_vector(3 downto 0);
BEGIN
	PROCESS (CLOCK_50) BEGIN
		if rising_edge(CLOCK_50) then
			comptador <= comptador + 1;
		end if;
	END PROCESS;

	PROCESS (comptador(24)) BEGIN
		if rising_edge(comptador(24)) then
			num <= num + 1;
			if num = 9 then
				num <= (others=>'0');
			end if;
		end if;
	END PROCESS;
	
	Visor : driver7display
	Port Map( codigoCaracter => num,
					 bitsCaracter => HEX0);
END Structure;