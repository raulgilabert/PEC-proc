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
		led_rojos	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		hex			: OUT STD_LOGIC_VECTOR(15 DOWNTO 0) := x"0000"; -- numero en 16 bits per codificar en els 4 7seg
		n_hex			: OUT STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000"; --indica quin hex es vol mostrar
		SW 		  	: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		KEY		  	: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		addr_mem		: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		addr_VGA		: OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		we_VGA		: OUT STD_LOGIC;
		wr_data_VGA	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		rd_data_VGA	: IN STD_LOGIC_VECTOR(15 DOWNTO 0)
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
			else 
				io_mem(7)(3 downto 0) <= KEY;
				io_mem(8)(7 downto 0) <= SW(7 downto 0);
			END if;
		END if;
	END PROCESS;
	
	rd_io <= io_mem(to_integer(unsigned(addr_io))) when rd_in = '1' else "XXXXXXXXXXXXXXXX"; --xxxx per is algu ha llegit quan no es pot
	
	led_verdes <= io_mem(5)(7 downto 0);
	led_rojos <= io_mem(6)(7 downto 0);
	n_hex <= io_mem(9)(3 downto 0);
	hex <= io_mem(10);
	 
	addr_VGA <= std_LOGIC_VECTOR(unsigned(addr_mem) - x"A000")(12 downto 0) when addr_mem >= x"A000" and addr_mem <= x"B2BE" else "XXXXXXXXXXXXX";
	we_VGA <= '1' when addr_mem >= x"A000" and addr_mem <= x"B2BE" else '0';
	
END Structure;