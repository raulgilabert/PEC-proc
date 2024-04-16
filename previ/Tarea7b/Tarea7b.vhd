LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


ENTITY Tarea7b IS
	PORT( CLOCK_50 : IN std_logic;
			KEY: IN std_logic_vector(0 downto 0);
			HEX0 : OUT std_logic_vector(6 downto 0);
			HEX1 : OUT std_logic_vector(6 downto 0);
			HEX2 : OUT std_logic_vector(6 downto 0);
			HEX3 : OUT std_logic_vector(6 downto 0);
			LEDR : OUT std_logic_vector(0 downto 0)
	);
END Tarea7b;

ARCHITECTURE Structure OF Tarea7b IS
	COMPONENT dataVisualizer IS
		PORT (
			num: IN std_logic_vector(15 downto 0);
			HEX0 : OUT std_logic_vector(6 downto 0);
			HEX1 : OUT std_logic_vector(6 downto 0);
			HEX2 : OUT std_logic_vector(6 downto 0);
			HEX3 : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;
	
	COMPONENT clock IS
		GENERIC (
			size: integer
		);
		PORT(
			CLOCK_50: IN std_logic;
			reset: IN std_logic;
			counter: IN std_logic_vector(size - 1 downto 0);
			clk: OUT std_logic
		);
	END COMPONENT;

	SIGNAL counter: std_logic_vector(15 downto 0) := (others => '0');
	SIGNAL clk: std_logic;
	SIGNAL reset: std_logic;
	SIGNAL counter_s: std_logic_vector(15 downto 0);
	
BEGIN
	PROCESS (reset)
	BEGIN
		if rising_edge(clk)then
			counter_s <= counter + 1;
		END if;
	END PROCESS;
			
	Clock_tic_tac: clock
		GENERIC map (26)
		PORT map (
			CLOCK_50 => CLOCK_50,
			reset => not key(0),
			counter => std_logic_vector(to_unsigned(50_000_000, 26)),
			clk => clk
		);
	
	ViewData: dataVisualizer
		PORT map (
			num => counter,
			HEX0 => HEX0,
			HEX1 => HEX1,
			HEX2 => HEX2,
			HEX3 => HEX3
		);
		
		with key(0) select
			counter <= counter_s when '1',
			           (others => '1') when others;
	

	reset <= clk or not key(0);

	ledr(0) <= clk;
	
END Structure;