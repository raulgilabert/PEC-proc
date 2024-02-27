LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Tarea2 IS
PORT( SW : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		LEDR : OUT STD_LOGIC_VECTOR(0 DOWNTO 0));
END Tarea2;

ARCHITECTURE Structure OF Tarea2 IS
BEGIN
	with sw select	
		ledR(0) <= not key(0) when "00",
				     not key(1) when "01",
				     not key(2) when "10",
				     not key(3) when others;
END Structure;