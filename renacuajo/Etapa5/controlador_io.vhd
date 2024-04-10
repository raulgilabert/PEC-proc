LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

LIBRARY work;
USE work.renacuajo_pkg.all;

ENTITY controladores_io IS
	PORT (
		boot			: IN STD_LOGIC;
		CLOCK_50    : IN std_logic;
		addr_io		: in STD_LOGIC_VECTOR(7 DOWNTO 0);
		wr_io			: IN STD_LOGIC_VECTOR(15 downto 0);
		rd_io			: OUT STD_LOGIC_VECTOR(15 downto 0);
		wr_out		: IN std_LOGIC;
		rd_in			: IN STD_LOGIC;
		led_verdes  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		led_rojos	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END controladores_io;

ARCHITECTURE Structure of controladores_io is
BEGIN
	
END Structure;