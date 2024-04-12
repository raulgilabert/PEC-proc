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

	TYPE t_io is array(0 to 255) of std_logic_vector(15 downto 0);
	SIGNAL io_mem: t_io;

BEGIN

	PROCESS (CLOCK_50)
	BEGIN
		if rising_edge(CLOCK_50) then
			if (wr_out = '1') then
				io_mem(to_integer(unsigned(addr_io))) <= wr_io;
			END if;
			
			--if (rd_in = '1') then
				--rd_io <= io_mem(to_integer(unsigned(addr_io)));
			--END if;
		END if;
	END PROCESS;
	
	rd_io <= io_mem(to_integer(unsigned(addr_io))) when rd_in = '1' else "XXXXXXXXXXXXXXXX"; --per provar sense process
	
	led_verdes <= io_mem(5)(7 downto 0);
	led_rojos <= io_mem(6)(7 downto 0);
	
END Structure;