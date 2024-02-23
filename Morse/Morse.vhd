LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY Morse IS
	PORT(
		CLOCK_50: IN std_logic;
		SW: IN std_logic_vector(2 downto 0);
		KEY: IN std_logic_vector(1 downto 0);
		LEDR: OUT std_logic_vector(1 downto 0);
		LEDG: OUT std_logic_vector(2 downto 0);
		HEX0: OUT std_logic_vector(6 downto 0)
	);
END Morse;


ARCHITECTURE Structure OF Morse IS
	COMPONENT driver7display IS
		PORT (
			charCode : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			charBits : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT clock IS
		GENERIC (
			size: integer
		);
		PORT (
			CLOCK_50: IN std_logic;
			reset: IN std_logic;
			counter: IN std_logic_vector(size -1 downto 0);
			clk: OUT std_logic
		);
	END COMPONENT;
	
	
	COMPONENT MorseChar IS
		GENERIC (
			size: integer
		);
		PORT (
			data: IN std_logic_vector(size - 1 downto 0);
			start: IN std_logic;
			reset: IN std_logic;
			clk: IN std_logic;
			led: OUT std_logic;
			end_char: OUT std_logic
		);
	END COMPONENT;
	

	SIGNAL clk_05: std_logic := '0';
	SIGNAL clk_15: std_logic := '0';
	SIGNAL reset: std_logic := '0';
	SIGNAL reset_s: std_logic := '0';
	SIGNAL start: std_logic;
	SIGNAL data: std_logic_vector(12 downto 0);
	SIGNAL end_bit: std_logic;
	
	
BEGIN
	
	--ledG(0) <= '1';
	
	
	Clock_05: clock
		GENERIC map(
			25
		)
		PORT map(
			CLOCK_50 => CLOCK_50,
			reset => reset,
			counter => std_logic_vector(to_unsigned(25_000_000, 25)),
			clk => clk_05
		);
		
	Clock_15: clock
		GENERIC map(
			27
		)
		PORT map(
			CLOCK_50 => CLOCK_50,
			reset => reset,
			counter => std_logic_vector(to_unsigned(75_000_000, 27)),
			clk => clk_15
		);

	
	Visualizer: driver7display
		PORT map(
			charCode => SW,
			charBits => HEX0
		);
		
	generator: MorseChar
		GENERIC map(
			13
		)
		PORT map(
			data => data,
			start => key(1),
			reset => reset,
			clk => clk_05,
			led => ledR(0),
			end_char => end_bit
		);

	start <= key(1);

	with sw select
		data <= "1011100000000" when "000", 	--A
				"1110101010000" when "001", 	--B
				"1110101110100" when "010", 	--C
				"1110101000000" when "011", 	--D
				"1000000000000" when "100", 	--E
				"1010111010000" when "101", 	--F
				"1110111010000" when "110", 	--G
				"0101010100000" when others;	--H
	
	ledG(0) <= not end_bit;

	-- temp
	ledg(1) <= clk_05;
	ledg(2) <= clk_15;

END Structure;