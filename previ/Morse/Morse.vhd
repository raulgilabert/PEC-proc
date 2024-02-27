library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



ENTITY Morse IS
	PORT (
		CLOCK_50: IN std_logic;
		SW: IN std_logic_vector(2 downto 0);
		KEY: IN std_logic_vector(1 downto 0);
		LEDR: OUT std_logic_vector(3 downto 0);
		LEDG: OUT std_logic_vector(3 downto 0);
		HEX0: OUT std_logic_vector(6 downto 0)
	);
END Morse;


ARCHITECTURE Structure of Morse IS
	COMPONENT driver7display IS
		PORT (
			charCode: IN std_logic_vector(2 downto 0);
			charBits: OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;
	
	COMPONENT clock IS
		GENERIC (
			size: integer
		);
		PORT (
			CLOCK_50: IN std_logic;
			counter: IN std_logic_vector(size - 1 downto 0);
			clk: OUT std_logic			
		);
	END COMPONENT;
	
	COMPONENT MorseChar IS
		PORT (
			clk: IN std_logic;
			data: IN std_logic_vector(12 downto 0);
			working: IN std_logic;
			led: OUT std_logic;
			end_char: OUT std_logic
		);
	END COMPONENT;
	
	
	
		
	SIGNAL clk: std_logic;
	
	SIGNAL end_char: std_logic;
	SIGNAL data: std_logic_vector(12 downto 0);
	SIGNAL state: std_logic := '0'; -- 0->repos, 1->morse
	
	SIGNAL actual: std_logic_vector (3 downto 0):= "0000";
	SIGNAL s: std_logic_vector (3 downto 0) := "0000";
	SIGNAL str: std_logic_vector (3 downto 0) := "0000";
	
	SIGNAL led: std_logic;
BEGIN

	with SW select
		 data <= "1011100000000" when "000",
					"1110101010000" when "001",
					"1110101110100" when "010",
					"1110101000000" when "011",
					"1000000000000" when "100",
					"1010111010000" when "101",
					"1110111010000" when "110",
					"1010101000000" when others;

	morse_char: MorseChar
		PORT map(
			clk => clk,
			data => data,
			working => state,
			led => led,
			end_char => end_char
		);
					
					
	clock_05: clock
		GENERIC map(25)
		PORT map(
			CLOCK_50 => CLOCK_50,
			counter => std_logic_vector(to_unsigned(25_000_000, 25)),
			clk => clk
		);
		
	Display: driver7display
		PORT map(
			charCode => SW,
			charBits => HEX0
		);	
	
	ledg(0) <= not state;

	ledr(0) <= s (2);

	state <= s (3);

	actual <= (state or s(3)) & end_char & not key(1) & not key (0);
	
	str <= '1' & led & "11";
	
	with actual select
		s <= str when "0010",
			  str when "0110",
			  str when "1000",
			  str when "1010",
			  "0000" when others;
		

END Structure;


