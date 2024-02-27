LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY clock IS
	GENERIC (
		size: integer
	);

	PORT( CLOCK_50: IN std_logic;
			counter: IN std_logic_vector(size - 1 downto 0);
			reset: in std_logic;
			clk: OUT std_logic
	);
END clock;

ARCHITECTURE Structure OF clock IS
	SIGNAL half_counter: std_logic_vector(size - 2 downto 0) := counter(size - 1 downto 1);
	SIGNAL clk_s: std_logic := '0';
	SIGNAL half_counter_s: std_logic_vector(size - 2 downto 0);
	
BEGIN
	PROCESS (clock_50)
	BEGIN
		if rising_edge(clock_50) then
			if half_counter = 0 then
				half_counter_s <= counter(size - 1 downto 1);
				clk_s <= not clk_s;
			else
				half_counter_s <= half_counter - 1;
			END if;
		END if;
	END PROCESS;
	
	
	with reset select
		half_counter <= half_counter_s when '0',
							 counter(size - 1 downto 1) when others;

	clk <= clk_s;
	
END Structure;