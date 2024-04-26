-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "02/27/2024 11:04:25"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Morse IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(2 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0);
	LEDG : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Morse;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Morse IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock_05|clk_s~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_05|Add0~0_combout\ : std_logic;
SIGNAL \clock_05|Add0~1\ : std_logic;
SIGNAL \clock_05|Add0~2_combout\ : std_logic;
SIGNAL \clock_05|Add0~3\ : std_logic;
SIGNAL \clock_05|Add0~4_combout\ : std_logic;
SIGNAL \clock_05|Add0~5\ : std_logic;
SIGNAL \clock_05|Add0~6_combout\ : std_logic;
SIGNAL \clock_05|Add0~7\ : std_logic;
SIGNAL \clock_05|Add0~8_combout\ : std_logic;
SIGNAL \clock_05|Add0~9\ : std_logic;
SIGNAL \clock_05|Add0~10_combout\ : std_logic;
SIGNAL \clock_05|Add0~11\ : std_logic;
SIGNAL \clock_05|Add0~12_combout\ : std_logic;
SIGNAL \clock_05|Add0~13\ : std_logic;
SIGNAL \clock_05|Add0~14_combout\ : std_logic;
SIGNAL \clock_05|Add0~15\ : std_logic;
SIGNAL \clock_05|Add0~16_combout\ : std_logic;
SIGNAL \clock_05|Add0~17\ : std_logic;
SIGNAL \clock_05|Add0~18_combout\ : std_logic;
SIGNAL \clock_05|Add0~19\ : std_logic;
SIGNAL \clock_05|Add0~20_combout\ : std_logic;
SIGNAL \clock_05|Add0~21\ : std_logic;
SIGNAL \clock_05|Add0~22_combout\ : std_logic;
SIGNAL \clock_05|Add0~23\ : std_logic;
SIGNAL \clock_05|Add0~24_combout\ : std_logic;
SIGNAL \clock_05|Add0~25\ : std_logic;
SIGNAL \clock_05|Add0~26_combout\ : std_logic;
SIGNAL \clock_05|Add0~27\ : std_logic;
SIGNAL \clock_05|Add0~28_combout\ : std_logic;
SIGNAL \clock_05|Add0~29\ : std_logic;
SIGNAL \clock_05|Add0~30_combout\ : std_logic;
SIGNAL \clock_05|Add0~31\ : std_logic;
SIGNAL \clock_05|Add0~32_combout\ : std_logic;
SIGNAL \clock_05|Add0~33\ : std_logic;
SIGNAL \clock_05|Add0~34_combout\ : std_logic;
SIGNAL \clock_05|Add0~35\ : std_logic;
SIGNAL \clock_05|Add0~36_combout\ : std_logic;
SIGNAL \clock_05|Add0~37\ : std_logic;
SIGNAL \clock_05|Add0~38_combout\ : std_logic;
SIGNAL \clock_05|Add0~39\ : std_logic;
SIGNAL \clock_05|Add0~40_combout\ : std_logic;
SIGNAL \clock_05|Add0~41\ : std_logic;
SIGNAL \clock_05|Add0~42_combout\ : std_logic;
SIGNAL \clock_05|Add0~43\ : std_logic;
SIGNAL \clock_05|Add0~44_combout\ : std_logic;
SIGNAL \clock_05|Add0~45\ : std_logic;
SIGNAL \clock_05|Add0~46_combout\ : std_logic;
SIGNAL \morse_char|Mux0~2_combout\ : std_logic;
SIGNAL \morse_char|Mux0~9_combout\ : std_logic;
SIGNAL \clock_05|clk_s~regout\ : std_logic;
SIGNAL \clock_05|Equal0~0_combout\ : std_logic;
SIGNAL \clock_05|Equal0~1_combout\ : std_logic;
SIGNAL \clock_05|Equal0~2_combout\ : std_logic;
SIGNAL \clock_05|Equal0~3_combout\ : std_logic;
SIGNAL \clock_05|Equal0~4_combout\ : std_logic;
SIGNAL \clock_05|Equal0~5_combout\ : std_logic;
SIGNAL \clock_05|Equal0~6_combout\ : std_logic;
SIGNAL \clock_05|clk_s~0_combout\ : std_logic;
SIGNAL \clock_05|half_counter_s~0_combout\ : std_logic;
SIGNAL \clock_05|half_counter_s~1_combout\ : std_logic;
SIGNAL \clock_05|half_counter_s~2_combout\ : std_logic;
SIGNAL \clock_05|half_counter_s~3_combout\ : std_logic;
SIGNAL \clock_05|half_counter_s~4_combout\ : std_logic;
SIGNAL \clock_05|half_counter_s~5_combout\ : std_logic;
SIGNAL \clock_05|half_counter_s~6_combout\ : std_logic;
SIGNAL \clock_05|half_counter_s~7_combout\ : std_logic;
SIGNAL \clock_05|half_counter_s~8_combout\ : std_logic;
SIGNAL \clock_05|half_counter_s~9_combout\ : std_logic;
SIGNAL \clock_05|half_counter_s~10_combout\ : std_logic;
SIGNAL \clock_05|half_counter_s~11_combout\ : std_logic;
SIGNAL \morse_char|Mux0~11_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \clock_05|clk_s~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \morse_char|Mux0~10_combout\ : std_logic;
SIGNAL \morse_char|Mux0~7_combout\ : std_logic;
SIGNAL \morse_char|iterator~0_combout\ : std_logic;
SIGNAL \morse_char|Add0~0_combout\ : std_logic;
SIGNAL \morse_char|iterator~3_combout\ : std_logic;
SIGNAL \morse_char|end_char~3_combout\ : std_logic;
SIGNAL \morse_char|end_char~2_combout\ : std_logic;
SIGNAL \morse_char|end_char~4_combout\ : std_logic;
SIGNAL \morse_char|end_char~5_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \morse_char|iterator~2_combout\ : std_logic;
SIGNAL \morse_char|iterator~1_combout\ : std_logic;
SIGNAL \morse_char|Mux0~6_combout\ : std_logic;
SIGNAL \morse_char|Mux0~5_combout\ : std_logic;
SIGNAL \morse_char|Mux0~8_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \morse_char|Mux0~3_combout\ : std_logic;
SIGNAL \morse_char|Mux0~4_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Display|Mux5~0_combout\ : std_logic;
SIGNAL \Display|Mux4~0_combout\ : std_logic;
SIGNAL \Display|Mux3~0_combout\ : std_logic;
SIGNAL \Display|Mux2~0_combout\ : std_logic;
SIGNAL \Display|Mux1~0_combout\ : std_logic;
SIGNAL \Display|Mux0~0_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock_05|half_counter_s\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \morse_char|iterator\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_05|clk_s~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock_05|clk_s~regout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;

-- Location: LCCOMB_X26_Y4_N8
\clock_05|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~0_combout\ = \clock_05|half_counter_s\(0) $ (VCC)
-- \clock_05|Add0~1\ = CARRY(\clock_05|half_counter_s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_05|half_counter_s\(0),
	datad => VCC,
	combout => \clock_05|Add0~0_combout\,
	cout => \clock_05|Add0~1\);

-- Location: LCCOMB_X26_Y4_N10
\clock_05|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~2_combout\ = (\clock_05|half_counter_s\(1) & (\clock_05|Add0~1\ & VCC)) # (!\clock_05|half_counter_s\(1) & (!\clock_05|Add0~1\))
-- \clock_05|Add0~3\ = CARRY((!\clock_05|half_counter_s\(1) & !\clock_05|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|half_counter_s\(1),
	datad => VCC,
	cin => \clock_05|Add0~1\,
	combout => \clock_05|Add0~2_combout\,
	cout => \clock_05|Add0~3\);

-- Location: LCCOMB_X26_Y4_N12
\clock_05|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~4_combout\ = (\clock_05|half_counter_s\(2) & ((GND) # (!\clock_05|Add0~3\))) # (!\clock_05|half_counter_s\(2) & (\clock_05|Add0~3\ $ (GND)))
-- \clock_05|Add0~5\ = CARRY((\clock_05|half_counter_s\(2)) # (!\clock_05|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_05|half_counter_s\(2),
	datad => VCC,
	cin => \clock_05|Add0~3\,
	combout => \clock_05|Add0~4_combout\,
	cout => \clock_05|Add0~5\);

-- Location: LCCOMB_X26_Y4_N14
\clock_05|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~6_combout\ = (\clock_05|half_counter_s\(3) & (\clock_05|Add0~5\ & VCC)) # (!\clock_05|half_counter_s\(3) & (!\clock_05|Add0~5\))
-- \clock_05|Add0~7\ = CARRY((!\clock_05|half_counter_s\(3) & !\clock_05|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_05|half_counter_s\(3),
	datad => VCC,
	cin => \clock_05|Add0~5\,
	combout => \clock_05|Add0~6_combout\,
	cout => \clock_05|Add0~7\);

-- Location: LCCOMB_X26_Y4_N16
\clock_05|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~8_combout\ = (\clock_05|half_counter_s\(4) & ((GND) # (!\clock_05|Add0~7\))) # (!\clock_05|half_counter_s\(4) & (\clock_05|Add0~7\ $ (GND)))
-- \clock_05|Add0~9\ = CARRY((\clock_05|half_counter_s\(4)) # (!\clock_05|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_05|half_counter_s\(4),
	datad => VCC,
	cin => \clock_05|Add0~7\,
	combout => \clock_05|Add0~8_combout\,
	cout => \clock_05|Add0~9\);

-- Location: LCCOMB_X26_Y4_N18
\clock_05|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~10_combout\ = (\clock_05|half_counter_s\(5) & (\clock_05|Add0~9\ & VCC)) # (!\clock_05|half_counter_s\(5) & (!\clock_05|Add0~9\))
-- \clock_05|Add0~11\ = CARRY((!\clock_05|half_counter_s\(5) & !\clock_05|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_05|half_counter_s\(5),
	datad => VCC,
	cin => \clock_05|Add0~9\,
	combout => \clock_05|Add0~10_combout\,
	cout => \clock_05|Add0~11\);

-- Location: LCCOMB_X26_Y4_N20
\clock_05|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~12_combout\ = (\clock_05|half_counter_s\(6) & ((GND) # (!\clock_05|Add0~11\))) # (!\clock_05|half_counter_s\(6) & (\clock_05|Add0~11\ $ (GND)))
-- \clock_05|Add0~13\ = CARRY((\clock_05|half_counter_s\(6)) # (!\clock_05|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_05|half_counter_s\(6),
	datad => VCC,
	cin => \clock_05|Add0~11\,
	combout => \clock_05|Add0~12_combout\,
	cout => \clock_05|Add0~13\);

-- Location: LCCOMB_X26_Y4_N22
\clock_05|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~14_combout\ = (\clock_05|half_counter_s\(7) & (\clock_05|Add0~13\ & VCC)) # (!\clock_05|half_counter_s\(7) & (!\clock_05|Add0~13\))
-- \clock_05|Add0~15\ = CARRY((!\clock_05|half_counter_s\(7) & !\clock_05|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_05|half_counter_s\(7),
	datad => VCC,
	cin => \clock_05|Add0~13\,
	combout => \clock_05|Add0~14_combout\,
	cout => \clock_05|Add0~15\);

-- Location: LCCOMB_X26_Y4_N24
\clock_05|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~16_combout\ = (\clock_05|half_counter_s\(8) & ((GND) # (!\clock_05|Add0~15\))) # (!\clock_05|half_counter_s\(8) & (\clock_05|Add0~15\ $ (GND)))
-- \clock_05|Add0~17\ = CARRY((\clock_05|half_counter_s\(8)) # (!\clock_05|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_05|half_counter_s\(8),
	datad => VCC,
	cin => \clock_05|Add0~15\,
	combout => \clock_05|Add0~16_combout\,
	cout => \clock_05|Add0~17\);

-- Location: LCCOMB_X26_Y4_N26
\clock_05|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~18_combout\ = (\clock_05|half_counter_s\(9) & (\clock_05|Add0~17\ & VCC)) # (!\clock_05|half_counter_s\(9) & (!\clock_05|Add0~17\))
-- \clock_05|Add0~19\ = CARRY((!\clock_05|half_counter_s\(9) & !\clock_05|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_05|half_counter_s\(9),
	datad => VCC,
	cin => \clock_05|Add0~17\,
	combout => \clock_05|Add0~18_combout\,
	cout => \clock_05|Add0~19\);

-- Location: LCCOMB_X26_Y4_N28
\clock_05|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~20_combout\ = (\clock_05|half_counter_s\(10) & ((GND) # (!\clock_05|Add0~19\))) # (!\clock_05|half_counter_s\(10) & (\clock_05|Add0~19\ $ (GND)))
-- \clock_05|Add0~21\ = CARRY((\clock_05|half_counter_s\(10)) # (!\clock_05|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_05|half_counter_s\(10),
	datad => VCC,
	cin => \clock_05|Add0~19\,
	combout => \clock_05|Add0~20_combout\,
	cout => \clock_05|Add0~21\);

-- Location: LCCOMB_X26_Y4_N30
\clock_05|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~22_combout\ = (\clock_05|half_counter_s\(11) & (\clock_05|Add0~21\ & VCC)) # (!\clock_05|half_counter_s\(11) & (!\clock_05|Add0~21\))
-- \clock_05|Add0~23\ = CARRY((!\clock_05|half_counter_s\(11) & !\clock_05|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_05|half_counter_s\(11),
	datad => VCC,
	cin => \clock_05|Add0~21\,
	combout => \clock_05|Add0~22_combout\,
	cout => \clock_05|Add0~23\);

-- Location: LCCOMB_X26_Y3_N0
\clock_05|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~24_combout\ = (\clock_05|half_counter_s\(12) & ((GND) # (!\clock_05|Add0~23\))) # (!\clock_05|half_counter_s\(12) & (\clock_05|Add0~23\ $ (GND)))
-- \clock_05|Add0~25\ = CARRY((\clock_05|half_counter_s\(12)) # (!\clock_05|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_05|half_counter_s\(12),
	datad => VCC,
	cin => \clock_05|Add0~23\,
	combout => \clock_05|Add0~24_combout\,
	cout => \clock_05|Add0~25\);

-- Location: LCCOMB_X26_Y3_N2
\clock_05|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~26_combout\ = (\clock_05|half_counter_s\(13) & (\clock_05|Add0~25\ & VCC)) # (!\clock_05|half_counter_s\(13) & (!\clock_05|Add0~25\))
-- \clock_05|Add0~27\ = CARRY((!\clock_05|half_counter_s\(13) & !\clock_05|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_05|half_counter_s\(13),
	datad => VCC,
	cin => \clock_05|Add0~25\,
	combout => \clock_05|Add0~26_combout\,
	cout => \clock_05|Add0~27\);

-- Location: LCCOMB_X26_Y3_N4
\clock_05|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~28_combout\ = (\clock_05|half_counter_s\(14) & ((GND) # (!\clock_05|Add0~27\))) # (!\clock_05|half_counter_s\(14) & (\clock_05|Add0~27\ $ (GND)))
-- \clock_05|Add0~29\ = CARRY((\clock_05|half_counter_s\(14)) # (!\clock_05|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_05|half_counter_s\(14),
	datad => VCC,
	cin => \clock_05|Add0~27\,
	combout => \clock_05|Add0~28_combout\,
	cout => \clock_05|Add0~29\);

-- Location: LCCOMB_X26_Y3_N6
\clock_05|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~30_combout\ = (\clock_05|half_counter_s\(15) & (\clock_05|Add0~29\ & VCC)) # (!\clock_05|half_counter_s\(15) & (!\clock_05|Add0~29\))
-- \clock_05|Add0~31\ = CARRY((!\clock_05|half_counter_s\(15) & !\clock_05|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|half_counter_s\(15),
	datad => VCC,
	cin => \clock_05|Add0~29\,
	combout => \clock_05|Add0~30_combout\,
	cout => \clock_05|Add0~31\);

-- Location: LCCOMB_X26_Y3_N8
\clock_05|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~32_combout\ = (\clock_05|half_counter_s\(16) & ((GND) # (!\clock_05|Add0~31\))) # (!\clock_05|half_counter_s\(16) & (\clock_05|Add0~31\ $ (GND)))
-- \clock_05|Add0~33\ = CARRY((\clock_05|half_counter_s\(16)) # (!\clock_05|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|half_counter_s\(16),
	datad => VCC,
	cin => \clock_05|Add0~31\,
	combout => \clock_05|Add0~32_combout\,
	cout => \clock_05|Add0~33\);

-- Location: LCCOMB_X26_Y3_N10
\clock_05|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~34_combout\ = (\clock_05|half_counter_s\(17) & (\clock_05|Add0~33\ & VCC)) # (!\clock_05|half_counter_s\(17) & (!\clock_05|Add0~33\))
-- \clock_05|Add0~35\ = CARRY((!\clock_05|half_counter_s\(17) & !\clock_05|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|half_counter_s\(17),
	datad => VCC,
	cin => \clock_05|Add0~33\,
	combout => \clock_05|Add0~34_combout\,
	cout => \clock_05|Add0~35\);

-- Location: LCCOMB_X26_Y3_N12
\clock_05|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~36_combout\ = (\clock_05|half_counter_s\(18) & ((GND) # (!\clock_05|Add0~35\))) # (!\clock_05|half_counter_s\(18) & (\clock_05|Add0~35\ $ (GND)))
-- \clock_05|Add0~37\ = CARRY((\clock_05|half_counter_s\(18)) # (!\clock_05|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|half_counter_s\(18),
	datad => VCC,
	cin => \clock_05|Add0~35\,
	combout => \clock_05|Add0~36_combout\,
	cout => \clock_05|Add0~37\);

-- Location: LCCOMB_X26_Y3_N14
\clock_05|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~38_combout\ = (\clock_05|half_counter_s\(19) & (\clock_05|Add0~37\ & VCC)) # (!\clock_05|half_counter_s\(19) & (!\clock_05|Add0~37\))
-- \clock_05|Add0~39\ = CARRY((!\clock_05|half_counter_s\(19) & !\clock_05|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_05|half_counter_s\(19),
	datad => VCC,
	cin => \clock_05|Add0~37\,
	combout => \clock_05|Add0~38_combout\,
	cout => \clock_05|Add0~39\);

-- Location: LCCOMB_X26_Y3_N16
\clock_05|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~40_combout\ = (\clock_05|half_counter_s\(20) & ((GND) # (!\clock_05|Add0~39\))) # (!\clock_05|half_counter_s\(20) & (\clock_05|Add0~39\ $ (GND)))
-- \clock_05|Add0~41\ = CARRY((\clock_05|half_counter_s\(20)) # (!\clock_05|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|half_counter_s\(20),
	datad => VCC,
	cin => \clock_05|Add0~39\,
	combout => \clock_05|Add0~40_combout\,
	cout => \clock_05|Add0~41\);

-- Location: LCCOMB_X26_Y3_N18
\clock_05|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~42_combout\ = (\clock_05|half_counter_s\(21) & (\clock_05|Add0~41\ & VCC)) # (!\clock_05|half_counter_s\(21) & (!\clock_05|Add0~41\))
-- \clock_05|Add0~43\ = CARRY((!\clock_05|half_counter_s\(21) & !\clock_05|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_05|half_counter_s\(21),
	datad => VCC,
	cin => \clock_05|Add0~41\,
	combout => \clock_05|Add0~42_combout\,
	cout => \clock_05|Add0~43\);

-- Location: LCCOMB_X26_Y3_N20
\clock_05|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~44_combout\ = (\clock_05|half_counter_s\(22) & ((GND) # (!\clock_05|Add0~43\))) # (!\clock_05|half_counter_s\(22) & (\clock_05|Add0~43\ $ (GND)))
-- \clock_05|Add0~45\ = CARRY((\clock_05|half_counter_s\(22)) # (!\clock_05|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_05|half_counter_s\(22),
	datad => VCC,
	cin => \clock_05|Add0~43\,
	combout => \clock_05|Add0~44_combout\,
	cout => \clock_05|Add0~45\);

-- Location: LCCOMB_X26_Y3_N22
\clock_05|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Add0~46_combout\ = \clock_05|Add0~45\ $ (!\clock_05|half_counter_s\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clock_05|half_counter_s\(23),
	cin => \clock_05|Add0~45\,
	combout => \clock_05|Add0~46_combout\);

-- Location: LCCOMB_X49_Y14_N24
\morse_char|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|Mux0~2_combout\ = (\morse_char|iterator\(0) & ((\morse_char|iterator\(1)))) # (!\morse_char|iterator\(0) & (\SW~combout\(2) & !\morse_char|iterator\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(2),
	datac => \morse_char|iterator\(0),
	datad => \morse_char|iterator\(1),
	combout => \morse_char|Mux0~2_combout\);

-- Location: LCCOMB_X49_Y14_N6
\morse_char|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|Mux0~9_combout\ = (\morse_char|iterator\(3) & ((\morse_char|iterator\(0) & ((!\morse_char|iterator\(1)))) # (!\morse_char|iterator\(0) & (!\morse_char|iterator\(2) & \morse_char|iterator\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \morse_char|iterator\(2),
	datab => \morse_char|iterator\(3),
	datac => \morse_char|iterator\(0),
	datad => \morse_char|iterator\(1),
	combout => \morse_char|Mux0~9_combout\);

-- Location: LCFF_X27_Y4_N21
\clock_05|clk_s\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|clk_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|clk_s~regout\);

-- Location: LCFF_X26_Y4_N5
\clock_05|half_counter_s[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|half_counter_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(0));

-- Location: LCFF_X26_Y4_N7
\clock_05|half_counter_s[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|half_counter_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(1));

-- Location: LCFF_X26_Y4_N1
\clock_05|half_counter_s[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|half_counter_s~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(2));

-- Location: LCFF_X26_Y4_N3
\clock_05|half_counter_s[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|half_counter_s~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(3));

-- Location: LCCOMB_X27_Y4_N8
\clock_05|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Equal0~0_combout\ = (!\clock_05|half_counter_s\(2) & (!\clock_05|half_counter_s\(1) & (!\clock_05|half_counter_s\(0) & !\clock_05|half_counter_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|half_counter_s\(2),
	datab => \clock_05|half_counter_s\(1),
	datac => \clock_05|half_counter_s\(0),
	datad => \clock_05|half_counter_s\(3),
	combout => \clock_05|Equal0~0_combout\);

-- Location: LCFF_X27_Y4_N25
\clock_05|half_counter_s[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|half_counter_s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(4));

-- Location: LCFF_X26_Y4_N19
\clock_05|half_counter_s[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(5));

-- Location: LCFF_X27_Y4_N31
\clock_05|half_counter_s[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|half_counter_s~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(6));

-- Location: LCFF_X27_Y4_N23
\clock_05|half_counter_s[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|half_counter_s~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(7));

-- Location: LCCOMB_X27_Y4_N10
\clock_05|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Equal0~1_combout\ = (!\clock_05|half_counter_s\(4) & (!\clock_05|half_counter_s\(6) & (!\clock_05|half_counter_s\(7) & !\clock_05|half_counter_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|half_counter_s\(4),
	datab => \clock_05|half_counter_s\(6),
	datac => \clock_05|half_counter_s\(7),
	datad => \clock_05|half_counter_s\(5),
	combout => \clock_05|Equal0~1_combout\);

-- Location: LCFF_X27_Y4_N13
\clock_05|half_counter_s[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|half_counter_s~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(8));

-- Location: LCFF_X27_Y4_N15
\clock_05|half_counter_s[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|half_counter_s~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(9));

-- Location: LCFF_X26_Y4_N29
\clock_05|half_counter_s[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(10));

-- Location: LCFF_X26_Y4_N31
\clock_05|half_counter_s[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(11));

-- Location: LCCOMB_X27_Y4_N2
\clock_05|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Equal0~2_combout\ = (!\clock_05|half_counter_s\(8) & (!\clock_05|half_counter_s\(9) & (!\clock_05|half_counter_s\(11) & !\clock_05|half_counter_s\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|half_counter_s\(8),
	datab => \clock_05|half_counter_s\(9),
	datac => \clock_05|half_counter_s\(11),
	datad => \clock_05|half_counter_s\(10),
	combout => \clock_05|Equal0~2_combout\);

-- Location: LCFF_X26_Y3_N1
\clock_05|half_counter_s[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(12));

-- Location: LCFF_X26_Y3_N3
\clock_05|half_counter_s[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(13));

-- Location: LCFF_X26_Y3_N29
\clock_05|half_counter_s[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|half_counter_s~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(14));

-- Location: LCFF_X26_Y3_N7
\clock_05|half_counter_s[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(15));

-- Location: LCCOMB_X26_Y3_N26
\clock_05|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Equal0~3_combout\ = (!\clock_05|half_counter_s\(15) & (!\clock_05|half_counter_s\(12) & (!\clock_05|half_counter_s\(13) & !\clock_05|half_counter_s\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|half_counter_s\(15),
	datab => \clock_05|half_counter_s\(12),
	datac => \clock_05|half_counter_s\(13),
	datad => \clock_05|half_counter_s\(14),
	combout => \clock_05|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y4_N16
\clock_05|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Equal0~4_combout\ = (\clock_05|Equal0~1_combout\ & (\clock_05|Equal0~2_combout\ & (\clock_05|Equal0~0_combout\ & \clock_05|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|Equal0~1_combout\,
	datab => \clock_05|Equal0~2_combout\,
	datac => \clock_05|Equal0~0_combout\,
	datad => \clock_05|Equal0~3_combout\,
	combout => \clock_05|Equal0~4_combout\);

-- Location: LCFF_X26_Y3_N25
\clock_05|half_counter_s[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|half_counter_s~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(16));

-- Location: LCFF_X26_Y3_N11
\clock_05|half_counter_s[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(17));

-- Location: LCFF_X26_Y3_N13
\clock_05|half_counter_s[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(18));

-- Location: LCFF_X26_Y3_N15
\clock_05|half_counter_s[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(19));

-- Location: LCCOMB_X27_Y3_N0
\clock_05|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Equal0~5_combout\ = (!\clock_05|half_counter_s\(18) & (!\clock_05|half_counter_s\(16) & (!\clock_05|half_counter_s\(17) & !\clock_05|half_counter_s\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|half_counter_s\(18),
	datab => \clock_05|half_counter_s\(16),
	datac => \clock_05|half_counter_s\(17),
	datad => \clock_05|half_counter_s\(19),
	combout => \clock_05|Equal0~5_combout\);

-- Location: LCFF_X26_Y3_N17
\clock_05|half_counter_s[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(20));

-- Location: LCFF_X26_Y3_N19
\clock_05|half_counter_s[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(21));

-- Location: LCFF_X26_Y3_N31
\clock_05|half_counter_s[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|half_counter_s~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(22));

-- Location: LCFF_X26_Y3_N23
\clock_05|half_counter_s[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock_05|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_05|half_counter_s\(23));

-- Location: LCCOMB_X27_Y3_N30
\clock_05|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|Equal0~6_combout\ = (!\clock_05|half_counter_s\(23) & (!\clock_05|half_counter_s\(21) & (!\clock_05|half_counter_s\(22) & !\clock_05|half_counter_s\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|half_counter_s\(23),
	datab => \clock_05|half_counter_s\(21),
	datac => \clock_05|half_counter_s\(22),
	datad => \clock_05|half_counter_s\(20),
	combout => \clock_05|Equal0~6_combout\);

-- Location: LCCOMB_X27_Y4_N20
\clock_05|clk_s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|clk_s~0_combout\ = \clock_05|clk_s~regout\ $ (((\clock_05|Equal0~4_combout\ & (\clock_05|Equal0~6_combout\ & \clock_05|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|Equal0~4_combout\,
	datab => \clock_05|Equal0~6_combout\,
	datac => \clock_05|clk_s~regout\,
	datad => \clock_05|Equal0~5_combout\,
	combout => \clock_05|clk_s~0_combout\);

-- Location: LCCOMB_X26_Y4_N4
\clock_05|half_counter_s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|half_counter_s~0_combout\ = (\clock_05|Add0~0_combout\ & (((!\clock_05|Equal0~5_combout\) # (!\clock_05|Equal0~4_combout\)) # (!\clock_05|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|Add0~0_combout\,
	datab => \clock_05|Equal0~6_combout\,
	datac => \clock_05|Equal0~4_combout\,
	datad => \clock_05|Equal0~5_combout\,
	combout => \clock_05|half_counter_s~0_combout\);

-- Location: LCCOMB_X26_Y4_N6
\clock_05|half_counter_s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|half_counter_s~1_combout\ = (\clock_05|Add0~2_combout\ & (((!\clock_05|Equal0~5_combout\) # (!\clock_05|Equal0~4_combout\)) # (!\clock_05|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|Add0~2_combout\,
	datab => \clock_05|Equal0~6_combout\,
	datac => \clock_05|Equal0~4_combout\,
	datad => \clock_05|Equal0~5_combout\,
	combout => \clock_05|half_counter_s~1_combout\);

-- Location: LCCOMB_X26_Y4_N0
\clock_05|half_counter_s~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|half_counter_s~2_combout\ = (\clock_05|Add0~4_combout\ & (((!\clock_05|Equal0~5_combout\) # (!\clock_05|Equal0~4_combout\)) # (!\clock_05|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|Add0~4_combout\,
	datab => \clock_05|Equal0~6_combout\,
	datac => \clock_05|Equal0~4_combout\,
	datad => \clock_05|Equal0~5_combout\,
	combout => \clock_05|half_counter_s~2_combout\);

-- Location: LCCOMB_X26_Y4_N2
\clock_05|half_counter_s~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|half_counter_s~3_combout\ = (\clock_05|Add0~6_combout\ & (((!\clock_05|Equal0~5_combout\) # (!\clock_05|Equal0~6_combout\)) # (!\clock_05|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|Equal0~4_combout\,
	datab => \clock_05|Equal0~6_combout\,
	datac => \clock_05|Add0~6_combout\,
	datad => \clock_05|Equal0~5_combout\,
	combout => \clock_05|half_counter_s~3_combout\);

-- Location: LCCOMB_X27_Y4_N24
\clock_05|half_counter_s~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|half_counter_s~4_combout\ = (\clock_05|Add0~8_combout\ & (((!\clock_05|Equal0~6_combout\) # (!\clock_05|Equal0~5_combout\)) # (!\clock_05|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|Equal0~4_combout\,
	datab => \clock_05|Equal0~5_combout\,
	datac => \clock_05|Equal0~6_combout\,
	datad => \clock_05|Add0~8_combout\,
	combout => \clock_05|half_counter_s~4_combout\);

-- Location: LCCOMB_X27_Y4_N30
\clock_05|half_counter_s~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|half_counter_s~5_combout\ = (\clock_05|Add0~12_combout\ & (((!\clock_05|Equal0~5_combout\) # (!\clock_05|Equal0~6_combout\)) # (!\clock_05|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|Equal0~4_combout\,
	datab => \clock_05|Equal0~6_combout\,
	datac => \clock_05|Add0~12_combout\,
	datad => \clock_05|Equal0~5_combout\,
	combout => \clock_05|half_counter_s~5_combout\);

-- Location: LCCOMB_X27_Y4_N22
\clock_05|half_counter_s~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|half_counter_s~6_combout\ = (\clock_05|Add0~14_combout\ & (((!\clock_05|Equal0~6_combout\) # (!\clock_05|Equal0~5_combout\)) # (!\clock_05|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|Equal0~4_combout\,
	datab => \clock_05|Equal0~5_combout\,
	datac => \clock_05|Equal0~6_combout\,
	datad => \clock_05|Add0~14_combout\,
	combout => \clock_05|half_counter_s~6_combout\);

-- Location: LCCOMB_X27_Y4_N12
\clock_05|half_counter_s~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|half_counter_s~7_combout\ = (\clock_05|Add0~16_combout\ & (((!\clock_05|Equal0~6_combout\) # (!\clock_05|Equal0~5_combout\)) # (!\clock_05|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|Equal0~4_combout\,
	datab => \clock_05|Equal0~5_combout\,
	datac => \clock_05|Equal0~6_combout\,
	datad => \clock_05|Add0~16_combout\,
	combout => \clock_05|half_counter_s~7_combout\);

-- Location: LCCOMB_X27_Y4_N14
\clock_05|half_counter_s~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|half_counter_s~8_combout\ = (\clock_05|Add0~18_combout\ & (((!\clock_05|Equal0~6_combout\) # (!\clock_05|Equal0~5_combout\)) # (!\clock_05|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|Equal0~4_combout\,
	datab => \clock_05|Equal0~5_combout\,
	datac => \clock_05|Equal0~6_combout\,
	datad => \clock_05|Add0~18_combout\,
	combout => \clock_05|half_counter_s~8_combout\);

-- Location: LCCOMB_X26_Y3_N28
\clock_05|half_counter_s~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|half_counter_s~9_combout\ = (\clock_05|Add0~28_combout\ & (((!\clock_05|Equal0~4_combout\) # (!\clock_05|Equal0~5_combout\)) # (!\clock_05|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|Equal0~6_combout\,
	datab => \clock_05|Equal0~5_combout\,
	datac => \clock_05|Add0~28_combout\,
	datad => \clock_05|Equal0~4_combout\,
	combout => \clock_05|half_counter_s~9_combout\);

-- Location: LCCOMB_X26_Y3_N24
\clock_05|half_counter_s~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|half_counter_s~10_combout\ = (\clock_05|Add0~32_combout\ & (((!\clock_05|Equal0~4_combout\) # (!\clock_05|Equal0~5_combout\)) # (!\clock_05|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|Equal0~6_combout\,
	datab => \clock_05|Equal0~5_combout\,
	datac => \clock_05|Add0~32_combout\,
	datad => \clock_05|Equal0~4_combout\,
	combout => \clock_05|half_counter_s~10_combout\);

-- Location: LCCOMB_X26_Y3_N30
\clock_05|half_counter_s~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_05|half_counter_s~11_combout\ = (\clock_05|Add0~44_combout\ & (((!\clock_05|Equal0~4_combout\) # (!\clock_05|Equal0~5_combout\)) # (!\clock_05|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_05|Equal0~6_combout\,
	datab => \clock_05|Equal0~5_combout\,
	datac => \clock_05|Add0~44_combout\,
	datad => \clock_05|Equal0~4_combout\,
	combout => \clock_05|half_counter_s~11_combout\);

-- Location: LCCOMB_X49_Y14_N10
\morse_char|Mux0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|Mux0~11_combout\ = (\morse_char|iterator\(1) & (((\morse_char|iterator\(0))))) # (!\morse_char|iterator\(1) & (\morse_char|iterator\(3) & ((\SW~combout\(2)) # (\morse_char|iterator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \morse_char|iterator\(1),
	datab => \SW~combout\(2),
	datac => \morse_char|iterator\(0),
	datad => \morse_char|iterator\(3),
	combout => \morse_char|Mux0~11_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G15
\clock_05|clk_s~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_05|clk_s~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_05|clk_s~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCCOMB_X49_Y14_N16
\morse_char|Mux0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|Mux0~10_combout\ = (\morse_char|Mux0~9_combout\ & (!\SW~combout\(0) & (\SW~combout\(1) & !\SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \morse_char|Mux0~9_combout\,
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	datad => \SW~combout\(2),
	combout => \morse_char|Mux0~10_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCCOMB_X49_Y14_N26
\morse_char|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|Mux0~7_combout\ = (\SW~combout\(1)) # ((\SW~combout\(0)) # (!\SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \morse_char|Mux0~7_combout\);

-- Location: LCCOMB_X48_Y14_N14
\morse_char|iterator~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|iterator~0_combout\ = (\Mux9~0_combout\ & (\morse_char|iterator\(2) $ (((\morse_char|iterator\(0) & \morse_char|iterator\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \morse_char|iterator\(0),
	datab => \morse_char|iterator\(1),
	datac => \morse_char|iterator\(2),
	datad => \Mux9~0_combout\,
	combout => \morse_char|iterator~0_combout\);

-- Location: LCFF_X48_Y14_N15
\morse_char|iterator[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_05|clk_s~clkctrl_outclk\,
	datain => \morse_char|iterator~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \morse_char|iterator\(2));

-- Location: LCCOMB_X49_Y14_N0
\morse_char|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|Add0~0_combout\ = \morse_char|iterator\(3) $ (((\morse_char|iterator\(2) & (\morse_char|iterator\(0) & \morse_char|iterator\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \morse_char|iterator\(2),
	datab => \morse_char|iterator\(3),
	datac => \morse_char|iterator\(0),
	datad => \morse_char|iterator\(1),
	combout => \morse_char|Add0~0_combout\);

-- Location: LCCOMB_X48_Y14_N12
\morse_char|iterator~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|iterator~3_combout\ = (\morse_char|Add0~0_combout\ & \Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \morse_char|Add0~0_combout\,
	datad => \Mux9~0_combout\,
	combout => \morse_char|iterator~3_combout\);

-- Location: LCFF_X48_Y14_N13
\morse_char|iterator[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_05|clk_s~clkctrl_outclk\,
	datain => \morse_char|iterator~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \morse_char|iterator\(3));

-- Location: LCCOMB_X48_Y14_N24
\morse_char|end_char~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|end_char~3_combout\ = (!\SW~combout\(0) & (\SW~combout\(1) & (!\morse_char|iterator\(1) & \morse_char|iterator\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \SW~combout\(1),
	datac => \morse_char|iterator\(1),
	datad => \morse_char|iterator\(3),
	combout => \morse_char|end_char~3_combout\);

-- Location: LCCOMB_X48_Y14_N10
\morse_char|end_char~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|end_char~2_combout\ = (\morse_char|iterator\(3) & (\SW~combout\(0) $ (((\SW~combout\(1) & \morse_char|iterator\(1)))))) # (!\morse_char|iterator\(3) & (((\morse_char|iterator\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \SW~combout\(1),
	datac => \morse_char|iterator\(1),
	datad => \morse_char|iterator\(3),
	combout => \morse_char|end_char~2_combout\);

-- Location: LCCOMB_X48_Y14_N6
\morse_char|end_char~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|end_char~4_combout\ = (\morse_char|iterator\(2) & (!\SW~combout\(2) & (\morse_char|end_char~3_combout\ & !\morse_char|end_char~2_combout\))) # (!\morse_char|iterator\(2) & ((\morse_char|end_char~3_combout\ $ 
-- (\morse_char|end_char~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \morse_char|iterator\(2),
	datac => \morse_char|end_char~3_combout\,
	datad => \morse_char|end_char~2_combout\,
	combout => \morse_char|end_char~4_combout\);

-- Location: LCCOMB_X48_Y14_N2
\morse_char|end_char~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|end_char~5_combout\ = (\morse_char|end_char~4_combout\) # ((!\morse_char|iterator\(3) & (\morse_char|Mux0~7_combout\ & \morse_char|iterator\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \morse_char|iterator\(3),
	datab => \morse_char|Mux0~7_combout\,
	datac => \morse_char|iterator\(2),
	datad => \morse_char|end_char~4_combout\,
	combout => \morse_char|end_char~5_combout\);

-- Location: LCCOMB_X48_Y14_N0
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\KEY~combout\(0) & ((\Mux9~0_combout\ & ((\morse_char|end_char~5_combout\))) # (!\Mux9~0_combout\ & (!\KEY~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datab => \KEY~combout\(0),
	datac => \Mux9~0_combout\,
	datad => \morse_char|end_char~5_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X48_Y14_N30
\morse_char|iterator~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|iterator~2_combout\ = (!\morse_char|iterator\(0) & \Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \morse_char|iterator\(0),
	datad => \Mux9~0_combout\,
	combout => \morse_char|iterator~2_combout\);

-- Location: LCFF_X48_Y14_N31
\morse_char|iterator[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_05|clk_s~clkctrl_outclk\,
	datain => \morse_char|iterator~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \morse_char|iterator\(0));

-- Location: LCCOMB_X48_Y14_N16
\morse_char|iterator~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|iterator~1_combout\ = (\morse_char|iterator\(0) $ (\morse_char|iterator\(1))) # (!\Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \morse_char|iterator\(0),
	datac => \morse_char|iterator\(1),
	datad => \Mux9~0_combout\,
	combout => \morse_char|iterator~1_combout\);

-- Location: LCFF_X48_Y14_N17
\morse_char|iterator[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_05|clk_s~clkctrl_outclk\,
	datain => \morse_char|iterator~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \morse_char|iterator\(1));

-- Location: LCCOMB_X49_Y14_N28
\morse_char|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|Mux0~6_combout\ = (\SW~combout\(2) & (\SW~combout\(1) & (!\SW~combout\(0) & !\morse_char|iterator\(1)))) # (!\SW~combout\(2) & (\morse_char|iterator\(1) $ (((\SW~combout\(1)) # (\SW~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(1),
	datac => \SW~combout\(0),
	datad => \morse_char|iterator\(1),
	combout => \morse_char|Mux0~6_combout\);

-- Location: LCCOMB_X49_Y14_N18
\morse_char|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|Mux0~5_combout\ = (!\morse_char|iterator\(3) & \morse_char|iterator\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \morse_char|iterator\(3),
	datad => \morse_char|iterator\(2),
	combout => \morse_char|Mux0~5_combout\);

-- Location: LCCOMB_X49_Y14_N4
\morse_char|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|Mux0~8_combout\ = (\morse_char|Mux0~5_combout\ & ((\morse_char|Mux0~6_combout\) # ((\morse_char|iterator\(0) & \morse_char|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \morse_char|iterator\(0),
	datab => \morse_char|Mux0~6_combout\,
	datac => \morse_char|Mux0~7_combout\,
	datad => \morse_char|Mux0~5_combout\,
	combout => \morse_char|Mux0~8_combout\);

-- Location: LCCOMB_X48_Y14_N20
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux9~0_combout\ & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datac => \KEY~combout\(0),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X49_Y14_N14
\morse_char|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|Mux0~3_combout\ = (\SW~combout\(0) & ((!\SW~combout\(1)) # (!\morse_char|Mux0~2_combout\))) # (!\SW~combout\(0) & ((\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \morse_char|Mux0~2_combout\,
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	combout => \morse_char|Mux0~3_combout\);

-- Location: LCCOMB_X49_Y14_N12
\morse_char|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \morse_char|Mux0~4_combout\ = (\morse_char|Mux0~11_combout\ & (!\morse_char|iterator\(2) & ((\morse_char|Mux0~3_combout\) # (!\morse_char|iterator\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \morse_char|Mux0~11_combout\,
	datab => \morse_char|iterator\(3),
	datac => \morse_char|Mux0~3_combout\,
	datad => \morse_char|iterator\(2),
	combout => \morse_char|Mux0~4_combout\);

-- Location: LCCOMB_X49_Y14_N22
\Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & ((\morse_char|Mux0~10_combout\) # ((\morse_char|Mux0~8_combout\) # (\morse_char|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \morse_char|Mux0~10_combout\,
	datab => \morse_char|Mux0~8_combout\,
	datac => \Mux10~0_combout\,
	datad => \morse_char|Mux0~4_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X48_Y14_N26
\Display|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display|Mux5~0_combout\ = (\SW~combout\(1) & ((\SW~combout\(0)) # (!\SW~combout\(2)))) # (!\SW~combout\(1) & (\SW~combout\(0) & !\SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \Display|Mux5~0_combout\);

-- Location: LCCOMB_X48_Y14_N8
\Display|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display|Mux4~0_combout\ = \SW~combout\(1) $ (((\SW~combout\(0)) # (\SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \Display|Mux4~0_combout\);

-- Location: LCCOMB_X48_Y14_N18
\Display|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display|Mux3~0_combout\ = (\SW~combout\(1) & (!\SW~combout\(0) & !\SW~combout\(2))) # (!\SW~combout\(1) & ((\SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \Display|Mux3~0_combout\);

-- Location: LCCOMB_X48_Y14_N4
\Display|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display|Mux2~0_combout\ = (\SW~combout\(0) & ((\SW~combout\(2)))) # (!\SW~combout\(0) & (!\SW~combout\(1) & !\SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \Display|Mux2~0_combout\);

-- Location: LCCOMB_X48_Y14_N22
\Display|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display|Mux1~0_combout\ = (\SW~combout\(1) & (!\SW~combout\(0) & \SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \Display|Mux1~0_combout\);

-- Location: LCCOMB_X48_Y14_N28
\Display|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display|Mux0~0_combout\ = (\SW~combout\(1) & !\SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(1),
	datad => \SW~combout\(2),
	combout => \Display|Mux0~0_combout\);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Display|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Display|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Display|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Display|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Display|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Display|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));
END structure;


