library ieee;
USE ieee.std_logic_1164.all;

ENTITY interrupt_controller IS
	PORT (
		boot		: IN  STD_LOGIC;
		clk			: IN  STD_LOGIC;
		inta		: IN  STD_LOGIC;
		key_intr	: IN  STD_LOGIC;
		ps2_intr	: IN  STD_LOGIC;
		switch_intr	: IN  STD_LOGIC;
		timer_intr	: IN  STD_LOGIC;
		intr		: OUT STD_LOGIC;
		key_inta	: OUT STD_LOGIC;
		ps2_inta	: OUT STD_LOGIC;
		switch_inta	: OUT STD_LOGIC;
		timer_inta	: OUT STD_LOGIC;
		iid			: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END interrupt_controller;

ARCHITECTURE Structure OF interrupt_controller IS

BEGIN

	

END Structure;
	