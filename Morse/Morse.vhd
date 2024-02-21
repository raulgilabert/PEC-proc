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
	SIGNAL A_s: std_logic;
	SIGNAL B_s: std_logic;
	SIGNAL C_s: std_logic;
	SIGNAL D_s: std_logic;
	SIGNAL E_s: std_logic;
	SIGNAL F_s: std_logic;
	SIGNAL G_s: std_logic;
	SIGNAL H_s: std_logic;
	SIGNAL end_bit: std_logic;
	SIGNAL end_bitA: std_logic;
	SIGNAL end_bitB: std_logic;
	SIGNAL end_bitC: std_logic;
	SIGNAL end_bitD: std_logic;
	SIGNAL end_bitE: std_logic;
	SIGNAL end_bitF: std_logic;
	SIGNAL end_bitG: std_logic;
	SIGNAL end_bitH: std_logic;
	
	
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
		
	A: MorseChar
		GENERIC map(
			6
		)
		PORT map(
			data => "101110",
			reset => reset,
			clk => clk_05,
			led => A_s,
			end_char => end_bitA
		);

	B: MorseChar
		GENERIC map(
			10
		)
		PORT map(
			data => "1110101010",
			reset => reset,
			clk => clk_05,
			led => B_s,
			end_char => end_bitB
		);

	C: MorseChar
		GENERIC map(
			12
		)
		PORT map(
			data => "111010111010",
			reset => reset,
			clk => clk_05,
			led => C_s,
			end_char => end_bitC
		);

	D: MorseChar
		GENERIC map(
			8
		)
		PORT map(
			data => "11101010",
			reset => reset,
			clk => clk_05,
			led => D_s,
			end_char => end_bitD
		);

	E: MorseChar
		GENERIC map(
			2
		)
		PORT map(
			data => "10",
			reset => reset,
			clk => clk_05,
			led => E_s,
			end_char => end_bitE
		);

	F: MorseChar
		GENERIC map(
			10
		)
		PORT map(
			data => "1010111010",
			reset => reset,
			clk => clk_05,
			led => F_s,
			end_char => end_bitF
		);

	G: MorseChar
		GENERIC map(
			10
		)
		PORT map(
			data => "1110111010",
			reset => reset,
			clk => clk_05,
			led => G_s,
			end_char => end_bitG
		);

	H: MorseChar
		GENERIC map(
			8
		)
		PORT map(
			data => "10101010",
			reset => reset,
			clk => clk_05,
			led => H_s,
			end_char => end_bitH
		);
		
	reset <= not key(0) or not key(1);

--	with sw select
--		ledR(0) <= A_s when "000",
--					  B_s when "001", 
--					  C_s when "010",
--					  D_s when "011",
--					  E_s when "100",
--					  F_s when "101",
--					  G_s when "110",
--					  H_s when others;

	with sw select	
		end_bit <= end_bitA when "000",
				   end_bitB	when "001",
				   end_bitC when "010",
				   end_bitD when "011",
				   end_bitE when "100",
				   end_bitF when "101",
				   end_bitG when "110",
				   end_bitH when others;
				   

	
	
	with end_bit & sw select
		ledR(0) <= A_s when "0000",
					  B_s when "0001", 
					  C_s when "0010",
					  D_s when "0011",
					  E_s when "0100",
					  F_s when "0101",
					  G_s when "0110",
					  H_s when "0111",
					  '0' when others;

	
	ledG(0) <= not end_bit;

	-- temp
	ledg(1) <= clk_05;
	ledg(2) <= clk_15;

END Structure;



