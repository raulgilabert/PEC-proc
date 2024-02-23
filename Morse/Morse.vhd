library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



ENTITY Morse IS
	PORT (
		CLOCK_50: IN std_logic;
		SW: IN std_logic_vector(2 downto 0);
		KEY: IN std_logic_vector(1 downto 0);
		LEDR: OUT std_logic_vector(0 downto 0);
		LEDG: OUT std_logic_vector(0 downto 0);
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
			reset: IN std_logic;
			clk: OUT std_logic			
		);
	END COMPONENT;
	
	COMPONENT MorseChar IS
		PORT (
			clk: IN std_logic;
			data: IN std_logic_vector(11 downto 0);
			len: IN std_logic_vector(3 downto 0);
			working: IN std_logic;
			led: OUT std_logic;
			end_char: OUT std_logic
		);
	END COMPONENT;
	
	
	
		
	SIGNAL clk: std_logic;
	
	SIGNAL end_char: std_logic;
	
	SIGNAL len: std_logic_vector(3 downto 0);
	SIGNAL data: std_logic_vector(11 downto 0);
	
	SIGNAL state: std_logic := '0'; -- 0->repos, 1->morse
BEGIN


	with SW select
		len <= "0110" when "000",
				 "1010" when "001",
				 "1100" when "010",
				 "1000" when "011",
				 "0010" when "100",
				 "1010" when "101",
				 "1010" when "110",
				 "1000" when others;

	with SW select
		 data <= "101110000000" when "000",
					"111010101000" when "001",
					"111010111010" when "010",
					"111010100000" when "011",
					"100000000000" when "100",
					"101011101000" when "101",
					"111011101000" when "110",
					"101010100000" when others;

	morse_char: MorseChar
		PORT map(
			clk => clk,
			data => data,
			len => len,
			working => state,
			led => ledr(0),
			end_char => end_char
		);
					
					
	clock_05: clock
		GENERIC map(25)
		PORT map(
			CLOCK_50 => CLOCK_50,
			reset => (not key(0) or not key(1)),
			counter => std_logic_vector(to_unsigned(25_000_000, 25)),
			clk => clk
		);
		
	Display: driver7display
		PORT map(
			charCode => SW,
			charBits => HEX0
		);	
	
	ledg(0) <= not state;

	PROCESS (clk)
	BEGIN
		if rising_edge(clk) then
			if state = '0' and key(1) = '0' then
				state <= '1';
			elsif state = '1' and end_char = '1' then
				state <= '0';
			elsif key(0) = '0' then
				state <= '0';
			elsif state = '1' and key(0) = '1' then
				state <= '1';
			else
				state <= '0';
			END if;
		end if;
	END PROCESS;
END Structure;


