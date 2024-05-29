LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

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
		-- PS2
		-----------------------------------------------
		read_char	: IN STD_LOGIC_VECTOR(7 downto 0);
		clear_char	: OUT std_logic;
		data_ready	: IN std_logic;
		-----------------------------------------------
		SW 		  	: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		KEY		  	: IN STD_LOGIC_VECTOR(3 DOWNTO 0)

	);
END controladores_io;

ARCHITECTURE Structure of controladores_io is

	TYPE t_io is array(0 to 31) of std_logic_vector(15 downto 0);
	SIGNAL io_mem: t_io;
	signal contador_ciclos : STD_LOGIC_VECTOR(15 downto 0):=x"0000";
	signal contador_milisegundos : STD_LOGIC_VECTOR(15 downto 0):=x"0000";
BEGIN

	PROCESS (CLOCK_50)
	BEGIN
		if rising_edge(CLOCK_50) then
			io_mem(21) <= x"0000";

			clear_char <= '0';
			
			if contador_ciclos=0 then
				contador_ciclos<=x"C350"; -- tiempo de ciclo=20ns(50Mhz) 1ms=50000ciclos
				if contador_milisegundos>0 then
					contador_milisegundos <= contador_milisegundos-1;
				end if;
			else
				contador_ciclos <= contador_ciclos-1;
			end if;
			
			if (wr_out = '1') then
				if (addr_io = x"10") then
					clear_char <= '1';
					io_mem(to_integer(unsigned(addr_io))) <= x"0000";
				elsif addr_io = x"15" then 
					contador_milisegundos <= wr_io;
				else
					io_mem(to_integer(unsigned(addr_io))) <= wr_io;
				end if;
			else 
				io_mem(7)(3 downto 0) <= KEY;
				io_mem(8)(7 downto 0) <= SW(7 downto 0);
				io_mem(15)(7 downto 0) <= read_char;
				io_mem(16)(0) <= data_ready;
				io_mem(20) <= contador_ciclos;
				io_mem(21) <= contador_milisegundos;
			END if;
		END if;
	END PROCESS;
	
	rd_io <= io_mem(to_integer(unsigned(addr_io))) when rd_in = '1' else "XXXXXXXXXXXXXXXX"; --xxxx per is algu ha llegit quan no es pot
	
	led_verdes <= io_mem(5)(7 downto 0);
	led_rojos <= io_mem(6)(7 downto 0);
	n_hex <= io_mem(9)(3 downto 0);
	hex <= io_mem(10);

END Structure;