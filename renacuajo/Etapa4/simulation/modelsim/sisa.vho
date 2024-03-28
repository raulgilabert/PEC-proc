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

-- DATE "03/21/2024 19:29:19"

-- 
-- Device: Altera EP2C20AF484A7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sisa IS
    PORT (
	CLOCK_50 : IN std_logic;
	SRAM_ADDR : OUT std_logic_vector(17 DOWNTO 0);
	SRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	SRAM_UB_N : OUT std_logic;
	SRAM_LB_N : OUT std_logic;
	SRAM_CE_N : OUT std_logic;
	SRAM_OE_N : OUT std_logic;
	SRAM_WE_N : OUT std_logic;
	SW : IN std_logic_vector(9 DOWNTO 9)
	);
END sisa;

-- Design Ports Information
-- SRAM_DQ[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[3]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[4]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[5]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[6]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[8]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[9]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[10]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[11]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[12]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[13]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[14]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[15]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[0]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[1]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[2]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[3]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[4]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[5]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[6]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[7]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[8]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[9]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[10]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[11]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[12]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[13]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[14]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[15]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[16]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[17]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_UB_N	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_LB_N	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_CE_N	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_OE_N	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_WE_N	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF sisa IS
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
SIGNAL ww_SRAM_ADDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SRAM_UB_N : std_logic;
SIGNAL ww_SRAM_LB_N : std_logic;
SIGNAL ww_SRAM_CE_N : std_logic;
SIGNAL ww_SRAM_OE_N : std_logic;
SIGNAL ww_SRAM_WE_N : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 9);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pro0|c0|pc_s[7]~33_combout\ : std_logic;
SIGNAL \pro0|c0|pc_s[9]~37_combout\ : std_logic;
SIGNAL \pro0|c0|pc_s[2]~19_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \pro0|c0|ir~13_combout\ : std_logic;
SIGNAL \pro0|c0|ir~14_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~84_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~36_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~101_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~37_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~86_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~134_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~87_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~135_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~39_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~40_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~57_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~41_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~74_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~107_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~75_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~44_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~76_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~93_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~61_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~45_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~29_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~195_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~77_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~196_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~126_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~142_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~46_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~127_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~143_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~79_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~112_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~128_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~80_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~129_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~81_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~130_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~115_regout\ : std_logic;
SIGNAL \counter[0]~0_combout\ : std_logic;
SIGNAL \counter[2]~clkctrl_outclk\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~84feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~134feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~86feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~87feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~135feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~41feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~107feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~44feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~29feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~45feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~93feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~46feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~143feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~112feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~80feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~115feeder_combout\ : std_logic;
SIGNAL \SRAM_DQ[0]~0\ : std_logic;
SIGNAL \SRAM_DQ[1]~1\ : std_logic;
SIGNAL \SRAM_DQ[2]~2\ : std_logic;
SIGNAL \SRAM_DQ[3]~3\ : std_logic;
SIGNAL \SRAM_DQ[4]~4\ : std_logic;
SIGNAL \SRAM_DQ[5]~5\ : std_logic;
SIGNAL \SRAM_DQ[6]~6\ : std_logic;
SIGNAL \SRAM_DQ[7]~7\ : std_logic;
SIGNAL \SRAM_DQ[8]~8\ : std_logic;
SIGNAL \SRAM_DQ[9]~9\ : std_logic;
SIGNAL \SRAM_DQ[10]~10\ : std_logic;
SIGNAL \SRAM_DQ[11]~11\ : std_logic;
SIGNAL \SRAM_DQ[12]~12\ : std_logic;
SIGNAL \SRAM_DQ[13]~13\ : std_logic;
SIGNAL \SRAM_DQ[14]~14\ : std_logic;
SIGNAL \SRAM_DQ[15]~15\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \pro0|c0|ir~6_combout\ : std_logic;
SIGNAL \pro0|c0|m|state~0_combout\ : std_logic;
SIGNAL \pro0|c0|m|state~regout\ : std_logic;
SIGNAL \pro0|c0|ir[10]~1_combout\ : std_logic;
SIGNAL \pro0|c0|ir~2_combout\ : std_logic;
SIGNAL \pro0|c0|ir~0_combout\ : std_logic;
SIGNAL \pro0|c0|ir~4_combout\ : std_logic;
SIGNAL \pro0|c0|c_l|Mux5~0_combout\ : std_logic;
SIGNAL \pro0|c0|ir~12_combout\ : std_logic;
SIGNAL \pro0|c0|c_l|Mux4~0_combout\ : std_logic;
SIGNAL \pro0|c0|ir~3_combout\ : std_logic;
SIGNAL \pro0|c0|c_l|Mux22~0_combout\ : std_logic;
SIGNAL \pro0|e0|Mux15~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~132feeder_combout\ : std_logic;
SIGNAL \pro0|c0|ir~16_combout\ : std_logic;
SIGNAL \pro0|c0|c_l|Mux17~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~230_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~233_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~132_regout\ : std_logic;
SIGNAL \pro0|c0|ir~11_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~228_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~229_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~100_regout\ : std_logic;
SIGNAL \pro0|c0|ir~8_combout\ : std_logic;
SIGNAL \pro0|c0|c_l|Mux6~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~231_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~116_regout\ : std_logic;
SIGNAL \pro0|c0|c_l|Mux5~1_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~148_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~149_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~234_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~235_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~52_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~239_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~68_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~236_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~238_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~20_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~150_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~151_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~152_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[0]~reg0_regout\ : std_logic;
SIGNAL \pro0|c0|c_l|Mux18~0_combout\ : std_logic;
SIGNAL \mem0|write_s~0_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[0]~en_regout\ : std_logic;
SIGNAL \pro0|c0|pc_s[1]~15_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \pro0|c0|ir~15_combout\ : std_logic;
SIGNAL \pro0|c0|pc_s[2]~20_combout\ : std_logic;
SIGNAL \pro0|c0|ir~7_combout\ : std_logic;
SIGNAL \pro0|c0|pc_s[2]~18_combout\ : std_logic;
SIGNAL \pro0|c0|pc_s[2]~17_combout\ : std_logic;
SIGNAL \pro0|c0|pc_s[2]~21_combout\ : std_logic;
SIGNAL \pro0|c0|pc_s[2]~22_combout\ : std_logic;
SIGNAL \pro0|c0|ir~5_combout\ : std_logic;
SIGNAL \pro0|e0|Mux16~0_combout\ : std_logic;
SIGNAL \pro0|c0|ir~10_combout\ : std_logic;
SIGNAL \pro0|c0|ir~9_combout\ : std_logic;
SIGNAL \pro0|e0|Mux16~1_combout\ : std_logic;
SIGNAL \pro0|e0|Mux0~0_combout\ : std_logic;
SIGNAL \pro0|e0|Mux14~1_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~53feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~53_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~69_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~21_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~155_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~156_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~133feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~133_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~117feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~117_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~232_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~85_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~153_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~154_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~157_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[1]~reg0_regout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[1]~en_regout\ : std_logic;
SIGNAL \pro0|c0|pc_s[1]~16\ : std_logic;
SIGNAL \pro0|c0|pc_s[2]~23_combout\ : std_logic;
SIGNAL \pro0|e0|Mux13~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~54feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~54_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~70_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~22_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~237_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~38_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~160_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~161_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~102_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~118_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~158_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~159_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~162_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[2]~reg0_regout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[2]~en_regout\ : std_logic;
SIGNAL \pro0|c0|pc_s[2]~24\ : std_logic;
SIGNAL \pro0|c0|pc_s[3]~25_combout\ : std_logic;
SIGNAL \pro0|e0|Mux12~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~103_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~119_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~163_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~164_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~55_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~71_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~23_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~165_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~166_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~167_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[3]~reg0_regout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[3]~en_regout\ : std_logic;
SIGNAL \pro0|e0|Mux11~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~104_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~136_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~120feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~120_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~88_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~168_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~169_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~72_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~56_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~24_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~170_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~171_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~172_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[4]~reg0_regout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[4]~en_regout\ : std_logic;
SIGNAL \pro0|e0|Mux10~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~105_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~137_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~121_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~89_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~173_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~174_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~73_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~25_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~175_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~176_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~177_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[5]~reg0_regout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[5]~enfeeder_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[5]~en_regout\ : std_logic;
SIGNAL \pro0|c0|pc_s[3]~26\ : std_logic;
SIGNAL \pro0|c0|pc_s[4]~28\ : std_logic;
SIGNAL \pro0|c0|pc_s[5]~29_combout\ : std_logic;
SIGNAL \pro0|c0|pc_s[5]~30\ : std_logic;
SIGNAL \pro0|c0|pc_s[6]~31_combout\ : std_logic;
SIGNAL \pro0|e0|Mux9~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~58_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~42_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~26_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~180_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~181_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~106feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~106_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~138_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~122feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~122_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~90_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~178_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~179_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~182_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[6]~reg0_regout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[6]~en_regout\ : std_logic;
SIGNAL \pro0|e0|Mux8~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~139_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~123feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~123_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~91_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~183_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~184_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~59_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~43_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~27_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~185_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~186_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~187_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[7]~reg0_regout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[7]~enfeeder_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[7]~en_regout\ : std_logic;
SIGNAL \pro0|e0|Mux7~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~60_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~28feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~28_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~190_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~191_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~108_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~140_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~124feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~124_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~92_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~188_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~189_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~192_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[8]~reg0_regout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[8]~en_regout\ : std_logic;
SIGNAL \pro0|e0|Mux6~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~109_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~141_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~125feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~125_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~193_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~194_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~197_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[9]~reg0_regout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[9]~en_regout\ : std_logic;
SIGNAL \pro0|c0|pc_s[6]~32\ : std_logic;
SIGNAL \pro0|c0|pc_s[7]~34\ : std_logic;
SIGNAL \pro0|c0|pc_s[8]~35_combout\ : std_logic;
SIGNAL \pro0|c0|pc_s[8]~36\ : std_logic;
SIGNAL \pro0|c0|pc_s[9]~38\ : std_logic;
SIGNAL \pro0|c0|pc_s[10]~39_combout\ : std_logic;
SIGNAL \pro0|e0|Mux5~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~62feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~62_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~78_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~30feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~30_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~200_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~201_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~110_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~94_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~198_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~199_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~202_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[10]~reg0_regout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[10]~en_regout\ : std_logic;
SIGNAL \pro0|e0|Mux4~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~111_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~95_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~203_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~204_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~63_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~47feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~47_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~31_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~205_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~206_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~207_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[11]~reg0_regout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[11]~en_regout\ : std_logic;
SIGNAL \pro0|e0|Mux3~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~64_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~48_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~32_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~210_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~211_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~144feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~144_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~96_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~208_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~209_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~212_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[12]~reg0_regout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[12]~en_regout\ : std_logic;
SIGNAL \pro0|e0|Mux2~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~65_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~49feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~49_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~33_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~215_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~216_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~145feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~145_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~113_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~97_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~213_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~214_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~217_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[13]~reg0_regout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[13]~en_regout\ : std_logic;
SIGNAL \pro0|c0|pc_s[10]~40\ : std_logic;
SIGNAL \pro0|c0|pc_s[11]~42\ : std_logic;
SIGNAL \pro0|c0|pc_s[12]~43_combout\ : std_logic;
SIGNAL \pro0|c0|pc_s[12]~44\ : std_logic;
SIGNAL \pro0|c0|pc_s[13]~46\ : std_logic;
SIGNAL \pro0|c0|pc_s[14]~47_combout\ : std_logic;
SIGNAL \pro0|e0|Mux1~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~82_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~66feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~66_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~50feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~50_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~34_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~220_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~221_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~146feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~146_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~114_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~98_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~218_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~219_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~222_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[14]~reg0_regout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[14]~enfeeder_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[14]~en_regout\ : std_logic;
SIGNAL \pro0|e0|Mux0~1_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~83feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~83_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~67_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~51_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~35_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~225_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~226_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~147_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~131feeder_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~131_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~99_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~223_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~224_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~227_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[15]~reg0_regout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_DQ[15]~en_regout\ : std_logic;
SIGNAL \pro0|e0|Mux14~0_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[1]~0_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[1]~1_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[2]~2_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[3]~3_combout\ : std_logic;
SIGNAL \pro0|c0|pc_s[4]~27_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[4]~4_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[5]~5_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[6]~6_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[7]~7_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[8]~8_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[9]~9_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[10]~10_combout\ : std_logic;
SIGNAL \pro0|c0|pc_s[11]~41_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[11]~11_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[12]~12_combout\ : std_logic;
SIGNAL \pro0|c0|pc_s[13]~45_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[13]~13_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[14]~14_combout\ : std_logic;
SIGNAL \pro0|c0|pc_s[14]~48\ : std_logic;
SIGNAL \pro0|c0|pc_s[15]~49_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[15]~15_combout\ : std_logic;
SIGNAL \pro0|c0|c_l|Mux19~0_combout\ : std_logic;
SIGNAL \pro0|c0|m|word_byte~0_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_OE_N~feeder_combout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_OE_N~regout\ : std_logic;
SIGNAL \mem0|sram_c|SRAM_WE_N~regout\ : std_logic;
SIGNAL counter : std_logic_vector(2 DOWNTO 0);
SIGNAL \pro0|c0|pc_s\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pro0|c0|ir\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 9);
SIGNAL \mem0|sram_c|SRAM_ADDR\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_counter[2]~clkctrl_outclk\ : std_logic;
SIGNAL \mem0|sram_c|ALT_INV_SRAM_WE_N~regout\ : std_logic;
SIGNAL \mem0|sram_c|ALT_INV_SRAM_OE_N~regout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
SRAM_ADDR <= ww_SRAM_ADDR;
SRAM_UB_N <= ww_SRAM_UB_N;
SRAM_LB_N <= ww_SRAM_LB_N;
SRAM_CE_N <= ww_SRAM_CE_N;
SRAM_OE_N <= ww_SRAM_OE_N;
SRAM_WE_N <= ww_SRAM_WE_N;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

\counter[2]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & counter(2));
\ALT_INV_counter[2]~clkctrl_outclk\ <= NOT \counter[2]~clkctrl_outclk\;
\mem0|sram_c|ALT_INV_SRAM_WE_N~regout\ <= NOT \mem0|sram_c|SRAM_WE_N~regout\;
\mem0|sram_c|ALT_INV_SRAM_OE_N~regout\ <= NOT \mem0|sram_c|SRAM_OE_N~regout\;

-- Location: LCFF_X33_Y18_N13
\pro0|c0|pc_s[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|pc_s[7]~33_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \pro0|c0|pc_s[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|pc_s\(7));

-- Location: LCFF_X33_Y18_N17
\pro0|c0|pc_s[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|pc_s[9]~37_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \pro0|c0|pc_s[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|pc_s\(9));

-- Location: LCCOMB_X33_Y18_N12
\pro0|c0|pc_s[7]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[7]~33_combout\ = (\pro0|c0|pc_s\(7) & (\pro0|c0|pc_s[6]~32\ $ (GND))) # (!\pro0|c0|pc_s\(7) & (!\pro0|c0|pc_s[6]~32\ & VCC))
-- \pro0|c0|pc_s[7]~34\ = CARRY((\pro0|c0|pc_s\(7) & !\pro0|c0|pc_s[6]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(7),
	datad => VCC,
	cin => \pro0|c0|pc_s[6]~32\,
	combout => \pro0|c0|pc_s[7]~33_combout\,
	cout => \pro0|c0|pc_s[7]~34\);

-- Location: LCCOMB_X33_Y18_N16
\pro0|c0|pc_s[9]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[9]~37_combout\ = (\pro0|c0|pc_s\(9) & (\pro0|c0|pc_s[8]~36\ $ (GND))) # (!\pro0|c0|pc_s\(9) & (!\pro0|c0|pc_s[8]~36\ & VCC))
-- \pro0|c0|pc_s[9]~38\ = CARRY((\pro0|c0|pc_s\(9) & !\pro0|c0|pc_s[8]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(9),
	datad => VCC,
	cin => \pro0|c0|pc_s[8]~36\,
	combout => \pro0|c0|pc_s[9]~37_combout\,
	cout => \pro0|c0|pc_s[9]~38\);

-- Location: LCFF_X27_Y1_N13
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCFF_X32_Y18_N21
\pro0|c0|ir[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|ir~13_combout\,
	ena => \pro0|c0|ir[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|ir\(6));

-- Location: LCFF_X32_Y18_N7
\pro0|c0|ir[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|c0|ir~14_combout\,
	sload => VCC,
	ena => \pro0|c0|ir[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|ir\(7));

-- Location: LCCOMB_X32_Y18_N6
\pro0|c0|pc_s[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[2]~19_combout\ = (\pro0|c0|ir\(6) & (\pro0|c0|ir\(5) & (\pro0|c0|ir\(7) & \pro0|c0|ir\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(6),
	datab => \pro0|c0|ir\(5),
	datac => \pro0|c0|ir\(7),
	datad => \pro0|c0|ir\(4),
	combout => \pro0|c0|pc_s[2]~19_combout\);

-- Location: LCFF_X27_Y1_N7
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCFF_X27_Y1_N1
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X27_Y1_N12
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(2) $ (((counter(0) & counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datac => counter(2),
	datad => counter(1),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X32_Y18_N20
\pro0|c0|ir~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|ir~13_combout\ = (!\SW~combout\(9) & \SRAM_DQ[6]~6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datad => \SRAM_DQ[6]~6\,
	combout => \pro0|c0|ir~13_combout\);

-- Location: LCCOMB_X30_Y19_N8
\pro0|c0|ir~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|ir~14_combout\ = (!\SW~combout\(9) & \SRAM_DQ[7]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SRAM_DQ[7]~7\,
	combout => \pro0|c0|ir~14_combout\);

-- Location: LCCOMB_X27_Y1_N6
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = counter(1) $ (counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(1),
	datad => counter(0),
	combout => \Add0~1_combout\);

-- Location: LCFF_X31_Y20_N25
\pro0|e0|reg0|regs~84\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~84feeder_combout\,
	ena => \pro0|e0|reg0|regs~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~84_regout\);

-- Location: LCFF_X29_Y18_N25
\pro0|e0|reg0|regs~36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux15~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~36_regout\);

-- Location: LCFF_X30_Y20_N13
\pro0|e0|reg0|regs~101\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux14~1_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~101_regout\);

-- Location: LCFF_X29_Y18_N9
\pro0|e0|reg0|regs~37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux14~1_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~37_regout\);

-- Location: LCFF_X31_Y20_N3
\pro0|e0|reg0|regs~86\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~86feeder_combout\,
	ena => \pro0|e0|reg0|regs~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~86_regout\);

-- Location: LCFF_X31_Y20_N17
\pro0|e0|reg0|regs~134\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~134feeder_combout\,
	ena => \pro0|e0|reg0|regs~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~134_regout\);

-- Location: LCFF_X31_Y20_N15
\pro0|e0|reg0|regs~87\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~87feeder_combout\,
	ena => \pro0|e0|reg0|regs~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~87_regout\);

-- Location: LCFF_X31_Y20_N5
\pro0|e0|reg0|regs~135\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~135feeder_combout\,
	ena => \pro0|e0|reg0|regs~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~135_regout\);

-- Location: LCFF_X29_Y18_N5
\pro0|e0|reg0|regs~39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux12~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~39_regout\);

-- Location: LCFF_X29_Y18_N21
\pro0|e0|reg0|regs~40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux11~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~40_regout\);

-- Location: LCFF_X29_Y19_N13
\pro0|e0|reg0|regs~57\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux10~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~57_regout\);

-- Location: LCFF_X29_Y18_N17
\pro0|e0|reg0|regs~41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~41feeder_combout\,
	ena => \pro0|e0|reg0|regs~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~41_regout\);

-- Location: LCFF_X30_Y19_N11
\pro0|e0|reg0|regs~74\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux9~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~74_regout\);

-- Location: LCFF_X30_Y19_N21
\pro0|e0|reg0|regs~107\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~107feeder_combout\,
	ena => \pro0|e0|reg0|regs~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~107_regout\);

-- Location: LCFF_X30_Y19_N23
\pro0|e0|reg0|regs~75\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|Mux8~0_combout\,
	ena => \pro0|e0|reg0|regs~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~75_regout\);

-- Location: LCFF_X30_Y17_N9
\pro0|e0|reg0|regs~44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~44feeder_combout\,
	ena => \pro0|e0|reg0|regs~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~44_regout\);

-- Location: LCFF_X30_Y19_N13
\pro0|e0|reg0|regs~76\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|Mux7~0_combout\,
	ena => \pro0|e0|reg0|regs~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~76_regout\);

-- Location: LCFF_X31_Y19_N23
\pro0|e0|reg0|regs~93\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~93feeder_combout\,
	ena => \pro0|e0|reg0|regs~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~93_regout\);

-- Location: LCFF_X30_Y18_N7
\pro0|e0|reg0|regs~61\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux6~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~61_regout\);

-- Location: LCFF_X29_Y18_N29
\pro0|e0|reg0|regs~45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~45feeder_combout\,
	ena => \pro0|e0|reg0|regs~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~45_regout\);

-- Location: LCFF_X29_Y18_N15
\pro0|e0|reg0|regs~29\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~29feeder_combout\,
	ena => \pro0|e0|reg0|regs~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~29_regout\);

-- Location: LCCOMB_X30_Y18_N0
\pro0|e0|reg0|regs~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~195_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & (((\pro0|c0|c_l|Mux6~0_combout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~45_regout\))) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- (\pro0|e0|reg0|regs~29_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~29_regout\,
	datab => \pro0|e0|reg0|regs~45_regout\,
	datac => \pro0|c0|c_l|Mux5~1_combout\,
	datad => \pro0|c0|c_l|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~195_combout\);

-- Location: LCFF_X30_Y19_N19
\pro0|e0|reg0|regs~77\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|Mux6~0_combout\,
	ena => \pro0|e0|reg0|regs~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~77_regout\);

-- Location: LCCOMB_X30_Y18_N6
\pro0|e0|reg0|regs~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~196_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~195_combout\ & (\pro0|e0|reg0|regs~77_regout\)) # (!\pro0|e0|reg0|regs~195_combout\ & ((\pro0|e0|reg0|regs~61_regout\))))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (((\pro0|e0|reg0|regs~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux5~1_combout\,
	datab => \pro0|e0|reg0|regs~77_regout\,
	datac => \pro0|e0|reg0|regs~61_regout\,
	datad => \pro0|e0|reg0|regs~195_combout\,
	combout => \pro0|e0|reg0|regs~196_combout\);

-- Location: LCFF_X30_Y20_N25
\pro0|e0|reg0|regs~126\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux5~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~126_regout\);

-- Location: LCFF_X31_Y20_N21
\pro0|e0|reg0|regs~142\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux5~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~142_regout\);

-- Location: LCFF_X29_Y18_N1
\pro0|e0|reg0|regs~46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~46feeder_combout\,
	ena => \pro0|e0|reg0|regs~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~46_regout\);

-- Location: LCFF_X31_Y19_N29
\pro0|e0|reg0|regs~127\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux4~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~127_regout\);

-- Location: LCFF_X31_Y20_N31
\pro0|e0|reg0|regs~143\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~143feeder_combout\,
	ena => \pro0|e0|reg0|regs~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~143_regout\);

-- Location: LCFF_X30_Y19_N31
\pro0|e0|reg0|regs~79\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|Mux4~0_combout\,
	ena => \pro0|e0|reg0|regs~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~79_regout\);

-- Location: LCFF_X32_Y19_N5
\pro0|e0|reg0|regs~112\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~112feeder_combout\,
	ena => \pro0|e0|reg0|regs~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~112_regout\);

-- Location: LCFF_X31_Y19_N17
\pro0|e0|reg0|regs~128\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux3~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~128_regout\);

-- Location: LCFF_X30_Y19_N5
\pro0|e0|reg0|regs~80\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~80feeder_combout\,
	ena => \pro0|e0|reg0|regs~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~80_regout\);

-- Location: LCFF_X31_Y19_N5
\pro0|e0|reg0|regs~129\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux2~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~129_regout\);

-- Location: LCFF_X32_Y17_N11
\pro0|e0|reg0|regs~81\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|Mux2~0_combout\,
	ena => \pro0|e0|reg0|regs~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~81_regout\);

-- Location: LCFF_X31_Y19_N9
\pro0|e0|reg0|regs~130\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux1~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~130_regout\);

-- Location: LCFF_X32_Y17_N29
\pro0|e0|reg0|regs~115\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~115feeder_combout\,
	ena => \pro0|e0|reg0|regs~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~115_regout\);

-- Location: LCCOMB_X27_Y1_N0
\counter[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~0_combout\ = !counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	combout => \counter[0]~0_combout\);

-- Location: CLKCTRL_G13
\counter[2]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \counter[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \counter[2]~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y20_N24
\pro0|e0|reg0|regs~84feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~84feeder_combout\ = \pro0|e0|Mux15~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux15~0_combout\,
	combout => \pro0|e0|reg0|regs~84feeder_combout\);

-- Location: LCCOMB_X31_Y20_N16
\pro0|e0|reg0|regs~134feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~134feeder_combout\ = \pro0|e0|Mux13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux13~0_combout\,
	combout => \pro0|e0|reg0|regs~134feeder_combout\);

-- Location: LCCOMB_X31_Y20_N2
\pro0|e0|reg0|regs~86feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~86feeder_combout\ = \pro0|e0|Mux13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux13~0_combout\,
	combout => \pro0|e0|reg0|regs~86feeder_combout\);

-- Location: LCCOMB_X31_Y20_N14
\pro0|e0|reg0|regs~87feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~87feeder_combout\ = \pro0|e0|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux12~0_combout\,
	combout => \pro0|e0|reg0|regs~87feeder_combout\);

-- Location: LCCOMB_X31_Y20_N4
\pro0|e0|reg0|regs~135feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~135feeder_combout\ = \pro0|e0|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux12~0_combout\,
	combout => \pro0|e0|reg0|regs~135feeder_combout\);

-- Location: LCCOMB_X29_Y18_N16
\pro0|e0|reg0|regs~41feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~41feeder_combout\ = \pro0|e0|Mux10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux10~0_combout\,
	combout => \pro0|e0|reg0|regs~41feeder_combout\);

-- Location: LCCOMB_X30_Y19_N20
\pro0|e0|reg0|regs~107feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~107feeder_combout\ = \pro0|e0|Mux8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux8~0_combout\,
	combout => \pro0|e0|reg0|regs~107feeder_combout\);

-- Location: LCCOMB_X30_Y17_N8
\pro0|e0|reg0|regs~44feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~44feeder_combout\ = \pro0|e0|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux7~0_combout\,
	combout => \pro0|e0|reg0|regs~44feeder_combout\);

-- Location: LCCOMB_X29_Y18_N14
\pro0|e0|reg0|regs~29feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~29feeder_combout\ = \pro0|e0|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~29feeder_combout\);

-- Location: LCCOMB_X29_Y18_N28
\pro0|e0|reg0|regs~45feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~45feeder_combout\ = \pro0|e0|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~45feeder_combout\);

-- Location: LCCOMB_X31_Y19_N22
\pro0|e0|reg0|regs~93feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~93feeder_combout\ = \pro0|e0|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~93feeder_combout\);

-- Location: LCCOMB_X29_Y18_N0
\pro0|e0|reg0|regs~46feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~46feeder_combout\ = \pro0|e0|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux5~0_combout\,
	combout => \pro0|e0|reg0|regs~46feeder_combout\);

-- Location: LCCOMB_X31_Y20_N30
\pro0|e0|reg0|regs~143feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~143feeder_combout\ = \pro0|e0|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux4~0_combout\,
	combout => \pro0|e0|reg0|regs~143feeder_combout\);

-- Location: LCCOMB_X32_Y19_N4
\pro0|e0|reg0|regs~112feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~112feeder_combout\ = \pro0|e0|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux3~0_combout\,
	combout => \pro0|e0|reg0|regs~112feeder_combout\);

-- Location: LCCOMB_X30_Y19_N4
\pro0|e0|reg0|regs~80feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~80feeder_combout\ = \pro0|e0|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux3~0_combout\,
	combout => \pro0|e0|reg0|regs~80feeder_combout\);

-- Location: LCCOMB_X32_Y17_N28
\pro0|e0|reg0|regs~115feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~115feeder_combout\ = \pro0|e0|Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux0~1_combout\,
	combout => \pro0|e0|reg0|regs~115feeder_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[0]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sram_c|SRAM_DQ[0]~reg0_regout\,
	oe => \mem0|sram_c|SRAM_DQ[0]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(0),
	combout => \SRAM_DQ[0]~0\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[1]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sram_c|SRAM_DQ[1]~reg0_regout\,
	oe => \mem0|sram_c|SRAM_DQ[1]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(1),
	combout => \SRAM_DQ[1]~1\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[2]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sram_c|SRAM_DQ[2]~reg0_regout\,
	oe => \mem0|sram_c|SRAM_DQ[2]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(2),
	combout => \SRAM_DQ[2]~2\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[3]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sram_c|SRAM_DQ[3]~reg0_regout\,
	oe => \mem0|sram_c|SRAM_DQ[3]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(3),
	combout => \SRAM_DQ[3]~3\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[4]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sram_c|SRAM_DQ[4]~reg0_regout\,
	oe => \mem0|sram_c|SRAM_DQ[4]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(4),
	combout => \SRAM_DQ[4]~4\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[5]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sram_c|SRAM_DQ[5]~reg0_regout\,
	oe => \mem0|sram_c|SRAM_DQ[5]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(5),
	combout => \SRAM_DQ[5]~5\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[6]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sram_c|SRAM_DQ[6]~reg0_regout\,
	oe => \mem0|sram_c|SRAM_DQ[6]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(6),
	combout => \SRAM_DQ[6]~6\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[7]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sram_c|SRAM_DQ[7]~reg0_regout\,
	oe => \mem0|sram_c|SRAM_DQ[7]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(7),
	combout => \SRAM_DQ[7]~7\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[8]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sram_c|SRAM_DQ[8]~reg0_regout\,
	oe => \mem0|sram_c|SRAM_DQ[8]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(8),
	combout => \SRAM_DQ[8]~8\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[9]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sram_c|SRAM_DQ[9]~reg0_regout\,
	oe => \mem0|sram_c|SRAM_DQ[9]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(9),
	combout => \SRAM_DQ[9]~9\);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[10]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sram_c|SRAM_DQ[10]~reg0_regout\,
	oe => \mem0|sram_c|SRAM_DQ[10]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(10),
	combout => \SRAM_DQ[10]~10\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[11]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sram_c|SRAM_DQ[11]~reg0_regout\,
	oe => \mem0|sram_c|SRAM_DQ[11]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(11),
	combout => \SRAM_DQ[11]~11\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[12]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sram_c|SRAM_DQ[12]~reg0_regout\,
	oe => \mem0|sram_c|SRAM_DQ[12]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(12),
	combout => \SRAM_DQ[12]~12\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[13]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sram_c|SRAM_DQ[13]~reg0_regout\,
	oe => \mem0|sram_c|SRAM_DQ[13]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(13),
	combout => \SRAM_DQ[13]~13\);

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[14]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sram_c|SRAM_DQ[14]~reg0_regout\,
	oe => \mem0|sram_c|SRAM_DQ[14]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(14),
	combout => \SRAM_DQ[14]~14\);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[15]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sram_c|SRAM_DQ[15]~reg0_regout\,
	oe => \mem0|sram_c|SRAM_DQ[15]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(15),
	combout => \SRAM_DQ[15]~15\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
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
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: LCCOMB_X30_Y20_N30
\pro0|c0|ir~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|ir~6_combout\ = (\SRAM_DQ[2]~2\ & !\SW~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[2]~2\,
	datad => \SW~combout\(9),
	combout => \pro0|c0|ir~6_combout\);

-- Location: LCCOMB_X32_Y18_N24
\pro0|c0|m|state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|m|state~0_combout\ = (!\pro0|c0|m|state~regout\ & !\SW~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|c0|m|state~regout\,
	datad => \SW~combout\(9),
	combout => \pro0|c0|m|state~0_combout\);

-- Location: LCFF_X32_Y18_N25
\pro0|c0|m|state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|m|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|m|state~regout\);

-- Location: LCCOMB_X32_Y18_N22
\pro0|c0|ir[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|ir[10]~1_combout\ = (\SW~combout\(9)) # (!\pro0|c0|m|state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|c0|m|state~regout\,
	datad => \SW~combout\(9),
	combout => \pro0|c0|ir[10]~1_combout\);

-- Location: LCFF_X31_Y18_N5
\pro0|c0|ir[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|c0|ir~6_combout\,
	sload => VCC,
	ena => \pro0|c0|ir[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|ir\(2));

-- Location: LCCOMB_X30_Y18_N26
\pro0|c0|ir~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|ir~2_combout\ = (!\SW~combout\(9) & \SRAM_DQ[13]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datad => \SRAM_DQ[13]~13\,
	combout => \pro0|c0|ir~2_combout\);

-- Location: LCFF_X31_Y18_N3
\pro0|c0|ir[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|c0|ir~2_combout\,
	sload => VCC,
	ena => \pro0|c0|ir[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|ir\(13));

-- Location: LCCOMB_X31_Y19_N16
\pro0|c0|ir~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|ir~0_combout\ = (!\SW~combout\(9) & \SRAM_DQ[12]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SRAM_DQ[12]~12\,
	combout => \pro0|c0|ir~0_combout\);

-- Location: LCFF_X31_Y18_N13
\pro0|c0|ir[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|c0|ir~0_combout\,
	sload => VCC,
	ena => \pro0|c0|ir[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|ir\(12));

-- Location: LCCOMB_X32_Y18_N14
\pro0|c0|ir~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|ir~4_combout\ = (!\SW~combout\(9) & \SRAM_DQ[15]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datac => \SRAM_DQ[15]~15\,
	combout => \pro0|c0|ir~4_combout\);

-- Location: LCFF_X31_Y18_N11
\pro0|c0|ir[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|c0|ir~4_combout\,
	sload => VCC,
	ena => \pro0|c0|ir[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|ir\(15));

-- Location: LCCOMB_X31_Y18_N12
\pro0|c0|c_l|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|c_l|Mux5~0_combout\ = ((\pro0|c0|ir\(12)) # (\pro0|c0|ir\(13) $ (\pro0|c0|ir\(15)))) # (!\pro0|c0|ir\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(14),
	datab => \pro0|c0|ir\(13),
	datac => \pro0|c0|ir\(12),
	datad => \pro0|c0|ir\(15),
	combout => \pro0|c0|c_l|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y19_N10
\pro0|c0|ir~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|ir~12_combout\ = (!\SW~combout\(9) & \SRAM_DQ[11]~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SRAM_DQ[11]~11\,
	combout => \pro0|c0|ir~12_combout\);

-- Location: LCFF_X31_Y18_N17
\pro0|c0|ir[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|c0|ir~12_combout\,
	sload => VCC,
	ena => \pro0|c0|ir[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|ir\(11));

-- Location: LCCOMB_X30_Y18_N20
\pro0|c0|c_l|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|c_l|Mux4~0_combout\ = (\pro0|c0|c_l|Mux5~0_combout\ & (\pro0|c0|ir\(2))) # (!\pro0|c0|c_l|Mux5~0_combout\ & ((\pro0|c0|ir\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|ir\(2),
	datac => \pro0|c0|c_l|Mux5~0_combout\,
	datad => \pro0|c0|ir\(11),
	combout => \pro0|c0|c_l|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y18_N12
\pro0|c0|ir~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|ir~3_combout\ = (!\SW~combout\(9) & \SRAM_DQ[14]~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datad => \SRAM_DQ[14]~14\,
	combout => \pro0|c0|ir~3_combout\);

-- Location: LCFF_X31_Y18_N29
\pro0|c0|ir[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|c0|ir~3_combout\,
	sload => VCC,
	ena => \pro0|c0|ir[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|ir\(14));

-- Location: LCCOMB_X31_Y18_N14
\pro0|c0|c_l|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|c_l|Mux22~0_combout\ = (\pro0|c0|ir\(12) & ((\pro0|c0|ir\(15) & (\pro0|c0|ir\(14) & !\pro0|c0|ir\(13))) # (!\pro0|c0|ir\(15) & (!\pro0|c0|ir\(14) & \pro0|c0|ir\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(15),
	datab => \pro0|c0|ir\(14),
	datac => \pro0|c0|ir\(12),
	datad => \pro0|c0|ir\(13),
	combout => \pro0|c0|c_l|Mux22~0_combout\);

-- Location: LCCOMB_X30_Y18_N14
\pro0|e0|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux15~0_combout\ = (\SRAM_DQ[0]~0\ & \pro0|c0|c_l|Mux22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_DQ[0]~0\,
	datad => \pro0|c0|c_l|Mux22~0_combout\,
	combout => \pro0|e0|Mux15~0_combout\);

-- Location: LCCOMB_X31_Y20_N10
\pro0|e0|reg0|regs~132feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~132feeder_combout\ = \pro0|e0|Mux15~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux15~0_combout\,
	combout => \pro0|e0|reg0|regs~132feeder_combout\);

-- Location: LCCOMB_X30_Y19_N0
\pro0|c0|ir~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|ir~16_combout\ = (!\SW~combout\(9) & \SRAM_DQ[9]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datad => \SRAM_DQ[9]~9\,
	combout => \pro0|c0|ir~16_combout\);

-- Location: LCFF_X31_Y18_N25
\pro0|c0|ir[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|c0|ir~16_combout\,
	sload => VCC,
	ena => \pro0|c0|ir[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|ir\(9));

-- Location: LCCOMB_X31_Y18_N10
\pro0|c0|c_l|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|c_l|Mux17~0_combout\ = (\pro0|c0|ir\(14) & (((\pro0|c0|ir\(13))) # (!\pro0|c0|ir\(12)))) # (!\pro0|c0|ir\(14) & (((\pro0|c0|ir\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(14),
	datab => \pro0|c0|ir\(12),
	datac => \pro0|c0|ir\(15),
	datad => \pro0|c0|ir\(13),
	combout => \pro0|c0|c_l|Mux17~0_combout\);

-- Location: LCCOMB_X30_Y18_N12
\pro0|e0|reg0|regs~230\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~230_combout\ = (\pro0|c0|ir\(10) & \pro0|c0|ir\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(10),
	datad => \pro0|c0|ir\(11),
	combout => \pro0|e0|reg0|regs~230_combout\);

-- Location: LCCOMB_X30_Y18_N28
\pro0|e0|reg0|regs~233\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~233_combout\ = (\pro0|c0|m|state~regout\ & (\pro0|c0|ir\(9) & (!\pro0|c0|c_l|Mux17~0_combout\ & \pro0|e0|reg0|regs~230_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|m|state~regout\,
	datab => \pro0|c0|ir\(9),
	datac => \pro0|c0|c_l|Mux17~0_combout\,
	datad => \pro0|e0|reg0|regs~230_combout\,
	combout => \pro0|e0|reg0|regs~233_combout\);

-- Location: LCFF_X31_Y20_N11
\pro0|e0|reg0|regs~132\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~132feeder_combout\,
	ena => \pro0|e0|reg0|regs~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~132_regout\);

-- Location: LCCOMB_X30_Y20_N14
\pro0|c0|ir~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|ir~11_combout\ = (\SRAM_DQ[10]~10\ & !\SW~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[10]~10\,
	datad => \SW~combout\(9),
	combout => \pro0|c0|ir~11_combout\);

-- Location: LCFF_X31_Y18_N27
\pro0|c0|ir[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|c0|ir~11_combout\,
	sload => VCC,
	ena => \pro0|c0|ir[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|ir\(10));

-- Location: LCCOMB_X31_Y18_N2
\pro0|e0|reg0|regs~228\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~228_combout\ = (\pro0|c0|ir\(11) & !\pro0|c0|ir\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(11),
	datad => \pro0|c0|ir\(10),
	combout => \pro0|e0|reg0|regs~228_combout\);

-- Location: LCCOMB_X31_Y18_N8
\pro0|e0|reg0|regs~229\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~229_combout\ = (\pro0|c0|ir\(9) & (\pro0|c0|m|state~regout\ & (!\pro0|c0|c_l|Mux17~0_combout\ & \pro0|e0|reg0|regs~228_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(9),
	datab => \pro0|c0|m|state~regout\,
	datac => \pro0|c0|c_l|Mux17~0_combout\,
	datad => \pro0|e0|reg0|regs~228_combout\,
	combout => \pro0|e0|reg0|regs~229_combout\);

-- Location: LCFF_X30_Y20_N9
\pro0|e0|reg0|regs~100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux15~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~100_regout\);

-- Location: LCCOMB_X30_Y18_N4
\pro0|c0|ir~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|ir~8_combout\ = (!\SW~combout\(9) & \SRAM_DQ[0]~0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datad => \SRAM_DQ[0]~0\,
	combout => \pro0|c0|ir~8_combout\);

-- Location: LCFF_X31_Y18_N1
\pro0|c0|ir[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|c0|ir~8_combout\,
	sload => VCC,
	ena => \pro0|c0|ir[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|ir\(0));

-- Location: LCCOMB_X31_Y18_N0
\pro0|c0|c_l|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|c_l|Mux6~0_combout\ = (\pro0|c0|c_l|Mux5~0_combout\ & ((\pro0|c0|ir\(0)))) # (!\pro0|c0|c_l|Mux5~0_combout\ & (\pro0|c0|ir\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(9),
	datac => \pro0|c0|ir\(0),
	datad => \pro0|c0|c_l|Mux5~0_combout\,
	combout => \pro0|c0|c_l|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y18_N30
\pro0|e0|reg0|regs~231\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~231_combout\ = (\pro0|c0|m|state~regout\ & (!\pro0|c0|ir\(9) & (!\pro0|c0|c_l|Mux17~0_combout\ & \pro0|e0|reg0|regs~230_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|m|state~regout\,
	datab => \pro0|c0|ir\(9),
	datac => \pro0|c0|c_l|Mux17~0_combout\,
	datad => \pro0|e0|reg0|regs~230_combout\,
	combout => \pro0|e0|reg0|regs~231_combout\);

-- Location: LCFF_X30_Y20_N27
\pro0|e0|reg0|regs~116\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux15~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~116_regout\);

-- Location: LCCOMB_X31_Y18_N16
\pro0|c0|c_l|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|c_l|Mux5~1_combout\ = (\pro0|c0|c_l|Mux5~0_combout\ & (\pro0|c0|ir\(1))) # (!\pro0|c0|c_l|Mux5~0_combout\ & ((\pro0|c0|ir\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(1),
	datab => \pro0|c0|ir\(10),
	datad => \pro0|c0|c_l|Mux5~0_combout\,
	combout => \pro0|c0|c_l|Mux5~1_combout\);

-- Location: LCCOMB_X30_Y20_N26
\pro0|e0|reg0|regs~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~148_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~116_regout\))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (\pro0|e0|reg0|regs~84_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~84_regout\,
	datab => \pro0|c0|c_l|Mux6~0_combout\,
	datac => \pro0|e0|reg0|regs~116_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~148_combout\);

-- Location: LCCOMB_X30_Y20_N8
\pro0|e0|reg0|regs~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~149_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~148_combout\ & (\pro0|e0|reg0|regs~132_regout\)) # (!\pro0|e0|reg0|regs~148_combout\ & ((\pro0|e0|reg0|regs~100_regout\))))) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- (((\pro0|e0|reg0|regs~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~132_regout\,
	datac => \pro0|e0|reg0|regs~100_regout\,
	datad => \pro0|e0|reg0|regs~148_combout\,
	combout => \pro0|e0|reg0|regs~149_combout\);

-- Location: LCCOMB_X30_Y18_N22
\pro0|e0|reg0|regs~234\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~234_combout\ = (\pro0|c0|ir\(10) & !\pro0|c0|ir\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(10),
	datad => \pro0|c0|ir\(11),
	combout => \pro0|e0|reg0|regs~234_combout\);

-- Location: LCCOMB_X30_Y18_N16
\pro0|e0|reg0|regs~235\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~235_combout\ = (\pro0|c0|m|state~regout\ & (!\pro0|c0|ir\(9) & (!\pro0|c0|c_l|Mux17~0_combout\ & \pro0|e0|reg0|regs~234_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|m|state~regout\,
	datab => \pro0|c0|ir\(9),
	datac => \pro0|c0|c_l|Mux17~0_combout\,
	datad => \pro0|e0|reg0|regs~234_combout\,
	combout => \pro0|e0|reg0|regs~235_combout\);

-- Location: LCFF_X30_Y18_N5
\pro0|e0|reg0|regs~52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux15~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~52_regout\);

-- Location: LCCOMB_X30_Y18_N2
\pro0|e0|reg0|regs~239\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~239_combout\ = (\pro0|c0|m|state~regout\ & (\pro0|c0|ir\(9) & (!\pro0|c0|c_l|Mux17~0_combout\ & \pro0|e0|reg0|regs~234_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|m|state~regout\,
	datab => \pro0|c0|ir\(9),
	datac => \pro0|c0|c_l|Mux17~0_combout\,
	datad => \pro0|e0|reg0|regs~234_combout\,
	combout => \pro0|e0|reg0|regs~239_combout\);

-- Location: LCFF_X29_Y20_N3
\pro0|e0|reg0|regs~68\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux15~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~68_regout\);

-- Location: LCCOMB_X31_Y18_N4
\pro0|e0|reg0|regs~236\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~236_combout\ = (!\pro0|c0|ir\(11) & !\pro0|c0|ir\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(11),
	datad => \pro0|c0|ir\(10),
	combout => \pro0|e0|reg0|regs~236_combout\);

-- Location: LCCOMB_X30_Y18_N24
\pro0|e0|reg0|regs~238\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~238_combout\ = (\pro0|c0|m|state~regout\ & (!\pro0|c0|ir\(9) & (!\pro0|c0|c_l|Mux17~0_combout\ & \pro0|e0|reg0|regs~236_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|m|state~regout\,
	datab => \pro0|c0|ir\(9),
	datac => \pro0|c0|c_l|Mux17~0_combout\,
	datad => \pro0|e0|reg0|regs~236_combout\,
	combout => \pro0|e0|reg0|regs~238_combout\);

-- Location: LCFF_X29_Y18_N23
\pro0|e0|reg0|regs~20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux15~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~20_regout\);

-- Location: LCCOMB_X29_Y18_N22
\pro0|e0|reg0|regs~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~150_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & (((\pro0|c0|c_l|Mux6~0_combout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|c0|c_l|Mux6~0_combout\ & (\pro0|e0|reg0|regs~36_regout\)) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- ((\pro0|e0|reg0|regs~20_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~36_regout\,
	datab => \pro0|c0|c_l|Mux5~1_combout\,
	datac => \pro0|e0|reg0|regs~20_regout\,
	datad => \pro0|c0|c_l|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~150_combout\);

-- Location: LCCOMB_X29_Y20_N2
\pro0|e0|reg0|regs~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~151_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~150_combout\ & ((\pro0|e0|reg0|regs~68_regout\))) # (!\pro0|e0|reg0|regs~150_combout\ & (\pro0|e0|reg0|regs~52_regout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (((\pro0|e0|reg0|regs~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux5~1_combout\,
	datab => \pro0|e0|reg0|regs~52_regout\,
	datac => \pro0|e0|reg0|regs~68_regout\,
	datad => \pro0|e0|reg0|regs~150_combout\,
	combout => \pro0|e0|reg0|regs~151_combout\);

-- Location: LCCOMB_X29_Y20_N8
\pro0|e0|reg0|regs~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~152_combout\ = (\pro0|c0|c_l|Mux4~0_combout\ & (\pro0|e0|reg0|regs~149_combout\)) # (!\pro0|c0|c_l|Mux4~0_combout\ & ((\pro0|e0|reg0|regs~151_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|c_l|Mux4~0_combout\,
	datac => \pro0|e0|reg0|regs~149_combout\,
	datad => \pro0|e0|reg0|regs~151_combout\,
	combout => \pro0|e0|reg0|regs~152_combout\);

-- Location: LCFF_X29_Y20_N9
\mem0|sram_c|SRAM_DQ[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[0]~reg0_regout\);

-- Location: LCCOMB_X31_Y18_N28
\pro0|c0|c_l|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|c_l|Mux18~0_combout\ = (!\pro0|c0|ir\(12) & (\pro0|c0|ir\(14) & (\pro0|c0|ir\(15) $ (!\pro0|c0|ir\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(15),
	datab => \pro0|c0|ir\(12),
	datac => \pro0|c0|ir\(14),
	datad => \pro0|c0|ir\(13),
	combout => \pro0|c0|c_l|Mux18~0_combout\);

-- Location: LCCOMB_X31_Y26_N14
\mem0|write_s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|write_s~0_combout\ = (\pro0|c0|m|state~regout\ & \pro0|c0|c_l|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|m|state~regout\,
	datad => \pro0|c0|c_l|Mux18~0_combout\,
	combout => \mem0|write_s~0_combout\);

-- Location: LCFF_X31_Y26_N25
\mem0|sram_c|SRAM_DQ[0]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \mem0|write_s~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[0]~en_regout\);

-- Location: LCCOMB_X33_Y18_N0
\pro0|c0|pc_s[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[1]~15_combout\ = \pro0|c0|pc_s\(1) $ (VCC)
-- \pro0|c0|pc_s[1]~16\ = CARRY(\pro0|c0|pc_s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|pc_s\(1),
	datad => VCC,
	combout => \pro0|c0|pc_s[1]~15_combout\,
	cout => \pro0|c0|pc_s[1]~16\);

-- Location: LCCOMB_X33_Y18_N30
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X30_Y19_N6
\pro0|c0|ir~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|ir~15_combout\ = (!\SW~combout\(9) & \SRAM_DQ[8]~8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SRAM_DQ[8]~8\,
	combout => \pro0|c0|ir~15_combout\);

-- Location: LCFF_X31_Y18_N23
\pro0|c0|ir[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|c0|ir~15_combout\,
	sload => VCC,
	ena => \pro0|c0|ir[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|ir\(8));

-- Location: LCCOMB_X31_Y18_N22
\pro0|c0|pc_s[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[2]~20_combout\ = (\pro0|c0|ir\(9) & (\pro0|c0|ir\(12) & (\pro0|c0|ir\(8) & \pro0|c0|ir\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(9),
	datab => \pro0|c0|ir\(12),
	datac => \pro0|c0|ir\(8),
	datad => \pro0|c0|ir\(14),
	combout => \pro0|c0|pc_s[2]~20_combout\);

-- Location: LCCOMB_X30_Y20_N12
\pro0|c0|ir~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|ir~7_combout\ = (\SRAM_DQ[3]~3\ & !\SW~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[3]~3\,
	datad => \SW~combout\(9),
	combout => \pro0|c0|ir~7_combout\);

-- Location: LCFF_X31_Y18_N31
\pro0|c0|ir[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|c0|ir~7_combout\,
	sload => VCC,
	ena => \pro0|c0|ir[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|ir\(3));

-- Location: LCCOMB_X31_Y18_N30
\pro0|c0|pc_s[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[2]~18_combout\ = (\pro0|c0|ir\(1) & (\pro0|c0|ir\(0) & (\pro0|c0|ir\(3) & \pro0|c0|ir\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(1),
	datab => \pro0|c0|ir\(0),
	datac => \pro0|c0|ir\(3),
	datad => \pro0|c0|ir\(2),
	combout => \pro0|c0|pc_s[2]~18_combout\);

-- Location: LCCOMB_X31_Y18_N26
\pro0|c0|pc_s[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[2]~17_combout\ = (\pro0|c0|ir\(11) & (\pro0|c0|ir\(13) & (\pro0|c0|ir\(10) & \pro0|c0|ir\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(11),
	datab => \pro0|c0|ir\(13),
	datac => \pro0|c0|ir\(10),
	datad => \pro0|c0|ir\(15),
	combout => \pro0|c0|pc_s[2]~17_combout\);

-- Location: LCCOMB_X32_Y18_N28
\pro0|c0|pc_s[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[2]~21_combout\ = (\pro0|c0|pc_s[2]~19_combout\ & (\pro0|c0|pc_s[2]~20_combout\ & (\pro0|c0|pc_s[2]~18_combout\ & \pro0|c0|pc_s[2]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s[2]~19_combout\,
	datab => \pro0|c0|pc_s[2]~20_combout\,
	datac => \pro0|c0|pc_s[2]~18_combout\,
	datad => \pro0|c0|pc_s[2]~17_combout\,
	combout => \pro0|c0|pc_s[2]~21_combout\);

-- Location: LCCOMB_X32_Y18_N18
\pro0|c0|pc_s[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[2]~22_combout\ = (\SW~combout\(9)) # ((\pro0|c0|m|state~regout\ & !\pro0|c0|pc_s[2]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datac => \pro0|c0|m|state~regout\,
	datad => \pro0|c0|pc_s[2]~21_combout\,
	combout => \pro0|c0|pc_s[2]~22_combout\);

-- Location: LCFF_X33_Y18_N1
\pro0|c0|pc_s[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|pc_s[1]~15_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \pro0|c0|pc_s[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|pc_s\(1));

-- Location: LCCOMB_X30_Y20_N24
\pro0|c0|ir~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|ir~5_combout\ = (\SRAM_DQ[1]~1\ & !\SW~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[1]~1\,
	datad => \SW~combout\(9),
	combout => \pro0|c0|ir~5_combout\);

-- Location: LCFF_X31_Y18_N19
\pro0|c0|ir[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|c0|ir~5_combout\,
	sload => VCC,
	ena => \pro0|c0|ir[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|ir\(1));

-- Location: LCCOMB_X31_Y18_N18
\pro0|e0|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux16~0_combout\ = (\pro0|c0|ir\(3)) # (((\pro0|c0|ir\(1)) # (\pro0|c0|ir\(2))) # (!\pro0|c0|ir\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(3),
	datab => \pro0|c0|ir\(0),
	datac => \pro0|c0|ir\(1),
	datad => \pro0|c0|ir\(2),
	combout => \pro0|e0|Mux16~0_combout\);

-- Location: LCCOMB_X32_Y18_N16
\pro0|c0|ir~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|ir~10_combout\ = (!\SW~combout\(9) & \SRAM_DQ[5]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datad => \SRAM_DQ[5]~5\,
	combout => \pro0|c0|ir~10_combout\);

-- Location: LCFF_X32_Y18_N17
\pro0|c0|ir[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|ir~10_combout\,
	ena => \pro0|c0|ir[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|ir\(5));

-- Location: LCCOMB_X30_Y19_N24
\pro0|c0|ir~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|ir~9_combout\ = (!\SW~combout\(9) & \SRAM_DQ[4]~4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SRAM_DQ[4]~4\,
	combout => \pro0|c0|ir~9_combout\);

-- Location: LCFF_X32_Y18_N27
\pro0|c0|ir[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|c0|ir~9_combout\,
	sload => VCC,
	ena => \pro0|c0|ir[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|ir\(4));

-- Location: LCCOMB_X32_Y18_N30
\pro0|e0|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux16~1_combout\ = (\pro0|c0|ir\(5)) # (\pro0|c0|ir\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|c0|ir\(5),
	datad => \pro0|c0|ir\(4),
	combout => \pro0|e0|Mux16~1_combout\);

-- Location: LCCOMB_X31_Y18_N6
\pro0|e0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux0~0_combout\ = (\pro0|e0|Mux14~0_combout\ & (!\pro0|c0|c_l|Mux22~0_combout\ & ((\pro0|e0|Mux16~0_combout\) # (\pro0|e0|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|Mux14~0_combout\,
	datab => \pro0|e0|Mux16~0_combout\,
	datac => \pro0|c0|c_l|Mux22~0_combout\,
	datad => \pro0|e0|Mux16~1_combout\,
	combout => \pro0|e0|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y20_N2
\pro0|e0|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux14~1_combout\ = (\SRAM_DQ[1]~1\ & ((\pro0|c0|c_l|Mux22~0_combout\) # ((\pro0|c0|pc_s\(1) & \pro0|e0|Mux0~0_combout\)))) # (!\SRAM_DQ[1]~1\ & (((\pro0|c0|pc_s\(1) & \pro0|e0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[1]~1\,
	datab => \pro0|c0|c_l|Mux22~0_combout\,
	datac => \pro0|c0|pc_s\(1),
	datad => \pro0|e0|Mux0~0_combout\,
	combout => \pro0|e0|Mux14~1_combout\);

-- Location: LCCOMB_X29_Y19_N0
\pro0|e0|reg0|regs~53feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~53feeder_combout\ = \pro0|e0|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux14~1_combout\,
	combout => \pro0|e0|reg0|regs~53feeder_combout\);

-- Location: LCFF_X29_Y19_N1
\pro0|e0|reg0|regs~53\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~53feeder_combout\,
	ena => \pro0|e0|reg0|regs~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~53_regout\);

-- Location: LCFF_X29_Y20_N25
\pro0|e0|reg0|regs~69\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux14~1_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~69_regout\);

-- Location: LCFF_X29_Y18_N3
\pro0|e0|reg0|regs~21\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux14~1_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~21_regout\);

-- Location: LCCOMB_X29_Y18_N2
\pro0|e0|reg0|regs~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~155_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & (((\pro0|c0|c_l|Mux6~0_combout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|c0|c_l|Mux6~0_combout\ & (\pro0|e0|reg0|regs~37_regout\)) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- ((\pro0|e0|reg0|regs~21_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~37_regout\,
	datab => \pro0|c0|c_l|Mux5~1_combout\,
	datac => \pro0|e0|reg0|regs~21_regout\,
	datad => \pro0|c0|c_l|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~155_combout\);

-- Location: LCCOMB_X29_Y20_N24
\pro0|e0|reg0|regs~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~156_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~155_combout\ & ((\pro0|e0|reg0|regs~69_regout\))) # (!\pro0|e0|reg0|regs~155_combout\ & (\pro0|e0|reg0|regs~53_regout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (((\pro0|e0|reg0|regs~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux5~1_combout\,
	datab => \pro0|e0|reg0|regs~53_regout\,
	datac => \pro0|e0|reg0|regs~69_regout\,
	datad => \pro0|e0|reg0|regs~155_combout\,
	combout => \pro0|e0|reg0|regs~156_combout\);

-- Location: LCCOMB_X31_Y20_N0
\pro0|e0|reg0|regs~133feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~133feeder_combout\ = \pro0|e0|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux14~1_combout\,
	combout => \pro0|e0|reg0|regs~133feeder_combout\);

-- Location: LCFF_X31_Y20_N1
\pro0|e0|reg0|regs~133\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~133feeder_combout\,
	ena => \pro0|e0|reg0|regs~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~133_regout\);

-- Location: LCCOMB_X30_Y20_N20
\pro0|e0|reg0|regs~117feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~117feeder_combout\ = \pro0|e0|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux14~1_combout\,
	combout => \pro0|e0|reg0|regs~117feeder_combout\);

-- Location: LCFF_X30_Y20_N21
\pro0|e0|reg0|regs~117\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~117feeder_combout\,
	ena => \pro0|e0|reg0|regs~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~117_regout\);

-- Location: LCCOMB_X31_Y18_N24
\pro0|e0|reg0|regs~232\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~232_combout\ = (\pro0|c0|m|state~regout\ & (!\pro0|c0|c_l|Mux17~0_combout\ & (!\pro0|c0|ir\(9) & \pro0|e0|reg0|regs~228_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|m|state~regout\,
	datab => \pro0|c0|c_l|Mux17~0_combout\,
	datac => \pro0|c0|ir\(9),
	datad => \pro0|e0|reg0|regs~228_combout\,
	combout => \pro0|e0|reg0|regs~232_combout\);

-- Location: LCFF_X30_Y21_N21
\pro0|e0|reg0|regs~85\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux14~1_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~85_regout\);

-- Location: LCCOMB_X30_Y21_N20
\pro0|e0|reg0|regs~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~153_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|c0|c_l|Mux5~1_combout\ & (\pro0|e0|reg0|regs~117_regout\)) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- ((\pro0|e0|reg0|regs~85_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~117_regout\,
	datac => \pro0|e0|reg0|regs~85_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~153_combout\);

-- Location: LCCOMB_X30_Y21_N18
\pro0|e0|reg0|regs~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~154_combout\ = (\pro0|e0|reg0|regs~153_combout\ & (((\pro0|e0|reg0|regs~133_regout\) # (!\pro0|c0|c_l|Mux6~0_combout\)))) # (!\pro0|e0|reg0|regs~153_combout\ & (\pro0|e0|reg0|regs~101_regout\ & ((\pro0|c0|c_l|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~101_regout\,
	datab => \pro0|e0|reg0|regs~133_regout\,
	datac => \pro0|e0|reg0|regs~153_combout\,
	datad => \pro0|c0|c_l|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~154_combout\);

-- Location: LCCOMB_X29_Y20_N10
\pro0|e0|reg0|regs~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~157_combout\ = (\pro0|c0|c_l|Mux4~0_combout\ & ((\pro0|e0|reg0|regs~154_combout\))) # (!\pro0|c0|c_l|Mux4~0_combout\ & (\pro0|e0|reg0|regs~156_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|c_l|Mux4~0_combout\,
	datac => \pro0|e0|reg0|regs~156_combout\,
	datad => \pro0|e0|reg0|regs~154_combout\,
	combout => \pro0|e0|reg0|regs~157_combout\);

-- Location: LCFF_X29_Y20_N11
\mem0|sram_c|SRAM_DQ[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[1]~reg0_regout\);

-- Location: LCFF_X31_Y26_N11
\mem0|sram_c|SRAM_DQ[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \mem0|write_s~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[1]~en_regout\);

-- Location: LCCOMB_X33_Y18_N2
\pro0|c0|pc_s[2]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[2]~23_combout\ = (\pro0|c0|pc_s\(2) & (!\pro0|c0|pc_s[1]~16\)) # (!\pro0|c0|pc_s\(2) & ((\pro0|c0|pc_s[1]~16\) # (GND)))
-- \pro0|c0|pc_s[2]~24\ = CARRY((!\pro0|c0|pc_s[1]~16\) # (!\pro0|c0|pc_s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|pc_s\(2),
	datad => VCC,
	cin => \pro0|c0|pc_s[1]~16\,
	combout => \pro0|c0|pc_s[2]~23_combout\,
	cout => \pro0|c0|pc_s[2]~24\);

-- Location: LCFF_X33_Y18_N3
\pro0|c0|pc_s[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|pc_s[2]~23_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \pro0|c0|pc_s[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|pc_s\(2));

-- Location: LCCOMB_X30_Y20_N22
\pro0|e0|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux13~0_combout\ = (\SRAM_DQ[2]~2\ & ((\pro0|c0|c_l|Mux22~0_combout\) # ((\pro0|c0|pc_s\(2) & \pro0|e0|Mux0~0_combout\)))) # (!\SRAM_DQ[2]~2\ & (\pro0|c0|pc_s\(2) & ((\pro0|e0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[2]~2\,
	datab => \pro0|c0|pc_s\(2),
	datac => \pro0|c0|c_l|Mux22~0_combout\,
	datad => \pro0|e0|Mux0~0_combout\,
	combout => \pro0|e0|Mux13~0_combout\);

-- Location: LCCOMB_X29_Y19_N18
\pro0|e0|reg0|regs~54feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~54feeder_combout\ = \pro0|e0|Mux13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux13~0_combout\,
	combout => \pro0|e0|reg0|regs~54feeder_combout\);

-- Location: LCFF_X29_Y19_N19
\pro0|e0|reg0|regs~54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~54feeder_combout\,
	ena => \pro0|e0|reg0|regs~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~54_regout\);

-- Location: LCFF_X29_Y20_N15
\pro0|e0|reg0|regs~70\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux13~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~70_regout\);

-- Location: LCFF_X29_Y18_N7
\pro0|e0|reg0|regs~22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux13~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~22_regout\);

-- Location: LCCOMB_X30_Y18_N18
\pro0|e0|reg0|regs~237\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~237_combout\ = (\pro0|c0|m|state~regout\ & (\pro0|c0|ir\(9) & (!\pro0|c0|c_l|Mux17~0_combout\ & \pro0|e0|reg0|regs~236_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|m|state~regout\,
	datab => \pro0|c0|ir\(9),
	datac => \pro0|c0|c_l|Mux17~0_combout\,
	datad => \pro0|e0|reg0|regs~236_combout\,
	combout => \pro0|e0|reg0|regs~237_combout\);

-- Location: LCFF_X29_Y18_N13
\pro0|e0|reg0|regs~38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux13~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~38_regout\);

-- Location: LCCOMB_X29_Y18_N6
\pro0|e0|reg0|regs~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~160_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|c0|c_l|Mux5~1_combout\) # ((\pro0|e0|reg0|regs~38_regout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & (!\pro0|c0|c_l|Mux5~1_combout\ & (\pro0|e0|reg0|regs~22_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|c0|c_l|Mux5~1_combout\,
	datac => \pro0|e0|reg0|regs~22_regout\,
	datad => \pro0|e0|reg0|regs~38_regout\,
	combout => \pro0|e0|reg0|regs~160_combout\);

-- Location: LCCOMB_X29_Y20_N14
\pro0|e0|reg0|regs~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~161_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~160_combout\ & ((\pro0|e0|reg0|regs~70_regout\))) # (!\pro0|e0|reg0|regs~160_combout\ & (\pro0|e0|reg0|regs~54_regout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (((\pro0|e0|reg0|regs~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux5~1_combout\,
	datab => \pro0|e0|reg0|regs~54_regout\,
	datac => \pro0|e0|reg0|regs~70_regout\,
	datad => \pro0|e0|reg0|regs~160_combout\,
	combout => \pro0|e0|reg0|regs~161_combout\);

-- Location: LCFF_X30_Y20_N23
\pro0|e0|reg0|regs~102\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|Mux13~0_combout\,
	ena => \pro0|e0|reg0|regs~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~102_regout\);

-- Location: LCFF_X30_Y20_N29
\pro0|e0|reg0|regs~118\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux13~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~118_regout\);

-- Location: LCCOMB_X30_Y20_N28
\pro0|e0|reg0|regs~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~158_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~118_regout\))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (\pro0|e0|reg0|regs~86_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~86_regout\,
	datab => \pro0|c0|c_l|Mux6~0_combout\,
	datac => \pro0|e0|reg0|regs~118_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~158_combout\);

-- Location: LCCOMB_X30_Y20_N18
\pro0|e0|reg0|regs~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~159_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~158_combout\ & (\pro0|e0|reg0|regs~134_regout\)) # (!\pro0|e0|reg0|regs~158_combout\ & ((\pro0|e0|reg0|regs~102_regout\))))) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- (((\pro0|e0|reg0|regs~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~134_regout\,
	datab => \pro0|e0|reg0|regs~102_regout\,
	datac => \pro0|c0|c_l|Mux6~0_combout\,
	datad => \pro0|e0|reg0|regs~158_combout\,
	combout => \pro0|e0|reg0|regs~159_combout\);

-- Location: LCCOMB_X29_Y20_N12
\pro0|e0|reg0|regs~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~162_combout\ = (\pro0|c0|c_l|Mux4~0_combout\ & ((\pro0|e0|reg0|regs~159_combout\))) # (!\pro0|c0|c_l|Mux4~0_combout\ & (\pro0|e0|reg0|regs~161_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|c_l|Mux4~0_combout\,
	datac => \pro0|e0|reg0|regs~161_combout\,
	datad => \pro0|e0|reg0|regs~159_combout\,
	combout => \pro0|e0|reg0|regs~162_combout\);

-- Location: LCFF_X29_Y20_N13
\mem0|sram_c|SRAM_DQ[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[2]~reg0_regout\);

-- Location: LCFF_X31_Y26_N21
\mem0|sram_c|SRAM_DQ[2]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \mem0|write_s~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[2]~en_regout\);

-- Location: LCCOMB_X33_Y18_N4
\pro0|c0|pc_s[3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[3]~25_combout\ = (\pro0|c0|pc_s\(3) & (\pro0|c0|pc_s[2]~24\ $ (GND))) # (!\pro0|c0|pc_s\(3) & (!\pro0|c0|pc_s[2]~24\ & VCC))
-- \pro0|c0|pc_s[3]~26\ = CARRY((\pro0|c0|pc_s\(3) & !\pro0|c0|pc_s[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|pc_s\(3),
	datad => VCC,
	cin => \pro0|c0|pc_s[2]~24\,
	combout => \pro0|c0|pc_s[3]~25_combout\,
	cout => \pro0|c0|pc_s[3]~26\);

-- Location: LCFF_X33_Y18_N5
\pro0|c0|pc_s[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|pc_s[3]~25_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \pro0|c0|pc_s[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|pc_s\(3));

-- Location: LCCOMB_X30_Y20_N16
\pro0|e0|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux12~0_combout\ = (\SRAM_DQ[3]~3\ & ((\pro0|c0|c_l|Mux22~0_combout\) # ((\pro0|c0|pc_s\(3) & \pro0|e0|Mux0~0_combout\)))) # (!\SRAM_DQ[3]~3\ & (\pro0|c0|pc_s\(3) & ((\pro0|e0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[3]~3\,
	datab => \pro0|c0|pc_s\(3),
	datac => \pro0|c0|c_l|Mux22~0_combout\,
	datad => \pro0|e0|Mux0~0_combout\,
	combout => \pro0|e0|Mux12~0_combout\);

-- Location: LCFF_X30_Y20_N1
\pro0|e0|reg0|regs~103\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux12~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~103_regout\);

-- Location: LCFF_X30_Y20_N31
\pro0|e0|reg0|regs~119\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux12~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~119_regout\);

-- Location: LCCOMB_X30_Y20_N10
\pro0|e0|reg0|regs~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~163_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & (((\pro0|e0|reg0|regs~119_regout\) # (\pro0|c0|c_l|Mux6~0_combout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & (\pro0|e0|reg0|regs~87_regout\ & ((!\pro0|c0|c_l|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~87_regout\,
	datab => \pro0|e0|reg0|regs~119_regout\,
	datac => \pro0|c0|c_l|Mux5~1_combout\,
	datad => \pro0|c0|c_l|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~163_combout\);

-- Location: LCCOMB_X30_Y20_N0
\pro0|e0|reg0|regs~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~164_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~163_combout\ & (\pro0|e0|reg0|regs~135_regout\)) # (!\pro0|e0|reg0|regs~163_combout\ & ((\pro0|e0|reg0|regs~103_regout\))))) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- (((\pro0|e0|reg0|regs~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~135_regout\,
	datab => \pro0|c0|c_l|Mux6~0_combout\,
	datac => \pro0|e0|reg0|regs~103_regout\,
	datad => \pro0|e0|reg0|regs~163_combout\,
	combout => \pro0|e0|reg0|regs~164_combout\);

-- Location: LCFF_X30_Y18_N27
\pro0|e0|reg0|regs~55\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux12~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~55_regout\);

-- Location: LCFF_X29_Y20_N1
\pro0|e0|reg0|regs~71\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux12~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~71_regout\);

-- Location: LCFF_X29_Y18_N11
\pro0|e0|reg0|regs~23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux12~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~23_regout\);

-- Location: LCCOMB_X29_Y18_N10
\pro0|e0|reg0|regs~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~165_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & (((\pro0|c0|c_l|Mux6~0_combout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|c0|c_l|Mux6~0_combout\ & (\pro0|e0|reg0|regs~39_regout\)) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- ((\pro0|e0|reg0|regs~23_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~39_regout\,
	datab => \pro0|c0|c_l|Mux5~1_combout\,
	datac => \pro0|e0|reg0|regs~23_regout\,
	datad => \pro0|c0|c_l|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~165_combout\);

-- Location: LCCOMB_X29_Y20_N0
\pro0|e0|reg0|regs~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~166_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~165_combout\ & ((\pro0|e0|reg0|regs~71_regout\))) # (!\pro0|e0|reg0|regs~165_combout\ & (\pro0|e0|reg0|regs~55_regout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (((\pro0|e0|reg0|regs~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux5~1_combout\,
	datab => \pro0|e0|reg0|regs~55_regout\,
	datac => \pro0|e0|reg0|regs~71_regout\,
	datad => \pro0|e0|reg0|regs~165_combout\,
	combout => \pro0|e0|reg0|regs~166_combout\);

-- Location: LCCOMB_X29_Y20_N26
\pro0|e0|reg0|regs~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~167_combout\ = (\pro0|c0|c_l|Mux4~0_combout\ & (\pro0|e0|reg0|regs~164_combout\)) # (!\pro0|c0|c_l|Mux4~0_combout\ & ((\pro0|e0|reg0|regs~166_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|c_l|Mux4~0_combout\,
	datac => \pro0|e0|reg0|regs~164_combout\,
	datad => \pro0|e0|reg0|regs~166_combout\,
	combout => \pro0|e0|reg0|regs~167_combout\);

-- Location: LCFF_X29_Y20_N27
\mem0|sram_c|SRAM_DQ[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[3]~reg0_regout\);

-- Location: LCFF_X31_Y26_N31
\mem0|sram_c|SRAM_DQ[3]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \mem0|write_s~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[3]~en_regout\);

-- Location: LCCOMB_X30_Y19_N2
\pro0|e0|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux11~0_combout\ = (\pro0|c0|pc_s\(4) & ((\pro0|e0|Mux0~0_combout\) # ((\SRAM_DQ[4]~4\ & \pro0|c0|c_l|Mux22~0_combout\)))) # (!\pro0|c0|pc_s\(4) & (\SRAM_DQ[4]~4\ & (\pro0|c0|c_l|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(4),
	datab => \SRAM_DQ[4]~4\,
	datac => \pro0|c0|c_l|Mux22~0_combout\,
	datad => \pro0|e0|Mux0~0_combout\,
	combout => \pro0|e0|Mux11~0_combout\);

-- Location: LCFF_X30_Y19_N25
\pro0|e0|reg0|regs~104\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux11~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~104_regout\);

-- Location: LCFF_X30_Y21_N27
\pro0|e0|reg0|regs~136\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux11~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~136_regout\);

-- Location: LCCOMB_X29_Y19_N24
\pro0|e0|reg0|regs~120feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~120feeder_combout\ = \pro0|e0|Mux11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux11~0_combout\,
	combout => \pro0|e0|reg0|regs~120feeder_combout\);

-- Location: LCFF_X29_Y19_N25
\pro0|e0|reg0|regs~120\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~120feeder_combout\,
	ena => \pro0|e0|reg0|regs~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~120_regout\);

-- Location: LCFF_X30_Y21_N29
\pro0|e0|reg0|regs~88\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux11~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~88_regout\);

-- Location: LCCOMB_X30_Y21_N28
\pro0|e0|reg0|regs~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~168_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~120_regout\) # ((\pro0|c0|c_l|Mux6~0_combout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & (((\pro0|e0|reg0|regs~88_regout\ & !\pro0|c0|c_l|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux5~1_combout\,
	datab => \pro0|e0|reg0|regs~120_regout\,
	datac => \pro0|e0|reg0|regs~88_regout\,
	datad => \pro0|c0|c_l|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~168_combout\);

-- Location: LCCOMB_X30_Y21_N26
\pro0|e0|reg0|regs~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~169_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~168_combout\ & ((\pro0|e0|reg0|regs~136_regout\))) # (!\pro0|e0|reg0|regs~168_combout\ & (\pro0|e0|reg0|regs~104_regout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- (((\pro0|e0|reg0|regs~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~104_regout\,
	datac => \pro0|e0|reg0|regs~136_regout\,
	datad => \pro0|e0|reg0|regs~168_combout\,
	combout => \pro0|e0|reg0|regs~169_combout\);

-- Location: LCFF_X30_Y19_N3
\pro0|e0|reg0|regs~72\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|Mux11~0_combout\,
	ena => \pro0|e0|reg0|regs~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~72_regout\);

-- Location: LCFF_X29_Y17_N3
\pro0|e0|reg0|regs~56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux11~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~56_regout\);

-- Location: LCFF_X29_Y18_N27
\pro0|e0|reg0|regs~24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux11~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~24_regout\);

-- Location: LCCOMB_X29_Y18_N26
\pro0|e0|reg0|regs~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~170_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & (((\pro0|c0|c_l|Mux6~0_combout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|c0|c_l|Mux6~0_combout\ & (\pro0|e0|reg0|regs~40_regout\)) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- ((\pro0|e0|reg0|regs~24_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~40_regout\,
	datab => \pro0|c0|c_l|Mux5~1_combout\,
	datac => \pro0|e0|reg0|regs~24_regout\,
	datad => \pro0|c0|c_l|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~170_combout\);

-- Location: LCCOMB_X29_Y17_N2
\pro0|e0|reg0|regs~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~171_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~170_combout\ & (\pro0|e0|reg0|regs~72_regout\)) # (!\pro0|e0|reg0|regs~170_combout\ & ((\pro0|e0|reg0|regs~56_regout\))))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (((\pro0|e0|reg0|regs~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux5~1_combout\,
	datab => \pro0|e0|reg0|regs~72_regout\,
	datac => \pro0|e0|reg0|regs~56_regout\,
	datad => \pro0|e0|reg0|regs~170_combout\,
	combout => \pro0|e0|reg0|regs~171_combout\);

-- Location: LCCOMB_X29_Y17_N0
\pro0|e0|reg0|regs~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~172_combout\ = (\pro0|c0|c_l|Mux4~0_combout\ & (\pro0|e0|reg0|regs~169_combout\)) # (!\pro0|c0|c_l|Mux4~0_combout\ & ((\pro0|e0|reg0|regs~171_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|c_l|Mux4~0_combout\,
	datac => \pro0|e0|reg0|regs~169_combout\,
	datad => \pro0|e0|reg0|regs~171_combout\,
	combout => \pro0|e0|reg0|regs~172_combout\);

-- Location: LCFF_X29_Y17_N1
\mem0|sram_c|SRAM_DQ[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[4]~reg0_regout\);

-- Location: LCFF_X31_Y26_N29
\mem0|sram_c|SRAM_DQ[4]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \mem0|write_s~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[4]~en_regout\);

-- Location: LCCOMB_X30_Y19_N16
\pro0|e0|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux10~0_combout\ = (\pro0|c0|pc_s\(5) & ((\pro0|e0|Mux0~0_combout\) # ((\SRAM_DQ[5]~5\ & \pro0|c0|c_l|Mux22~0_combout\)))) # (!\pro0|c0|pc_s\(5) & (\SRAM_DQ[5]~5\ & (\pro0|c0|c_l|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(5),
	datab => \SRAM_DQ[5]~5\,
	datac => \pro0|c0|c_l|Mux22~0_combout\,
	datad => \pro0|e0|Mux0~0_combout\,
	combout => \pro0|e0|Mux10~0_combout\);

-- Location: LCFF_X30_Y19_N7
\pro0|e0|reg0|regs~105\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux10~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~105_regout\);

-- Location: LCFF_X30_Y21_N11
\pro0|e0|reg0|regs~137\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux10~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~137_regout\);

-- Location: LCFF_X29_Y19_N3
\pro0|e0|reg0|regs~121\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux10~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~121_regout\);

-- Location: LCFF_X30_Y21_N25
\pro0|e0|reg0|regs~89\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux10~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~89_regout\);

-- Location: LCCOMB_X30_Y21_N24
\pro0|e0|reg0|regs~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~173_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|c0|c_l|Mux5~1_combout\ & (\pro0|e0|reg0|regs~121_regout\)) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- ((\pro0|e0|reg0|regs~89_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~121_regout\,
	datac => \pro0|e0|reg0|regs~89_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~173_combout\);

-- Location: LCCOMB_X30_Y21_N10
\pro0|e0|reg0|regs~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~174_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~173_combout\ & ((\pro0|e0|reg0|regs~137_regout\))) # (!\pro0|e0|reg0|regs~173_combout\ & (\pro0|e0|reg0|regs~105_regout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- (((\pro0|e0|reg0|regs~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~105_regout\,
	datac => \pro0|e0|reg0|regs~137_regout\,
	datad => \pro0|e0|reg0|regs~173_combout\,
	combout => \pro0|e0|reg0|regs~174_combout\);

-- Location: LCFF_X30_Y19_N17
\pro0|e0|reg0|regs~73\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|Mux10~0_combout\,
	ena => \pro0|e0|reg0|regs~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~73_regout\);

-- Location: LCFF_X29_Y18_N31
\pro0|e0|reg0|regs~25\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux10~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~25_regout\);

-- Location: LCCOMB_X29_Y18_N30
\pro0|e0|reg0|regs~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~175_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & (((\pro0|c0|c_l|Mux6~0_combout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|c0|c_l|Mux6~0_combout\ & (\pro0|e0|reg0|regs~41_regout\)) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- ((\pro0|e0|reg0|regs~25_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~41_regout\,
	datab => \pro0|c0|c_l|Mux5~1_combout\,
	datac => \pro0|e0|reg0|regs~25_regout\,
	datad => \pro0|c0|c_l|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~175_combout\);

-- Location: LCCOMB_X29_Y21_N2
\pro0|e0|reg0|regs~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~176_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~175_combout\ & ((\pro0|e0|reg0|regs~73_regout\))) # (!\pro0|e0|reg0|regs~175_combout\ & (\pro0|e0|reg0|regs~57_regout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (((\pro0|e0|reg0|regs~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~57_regout\,
	datab => \pro0|e0|reg0|regs~73_regout\,
	datac => \pro0|c0|c_l|Mux5~1_combout\,
	datad => \pro0|e0|reg0|regs~175_combout\,
	combout => \pro0|e0|reg0|regs~176_combout\);

-- Location: LCCOMB_X29_Y21_N16
\pro0|e0|reg0|regs~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~177_combout\ = (\pro0|c0|c_l|Mux4~0_combout\ & (\pro0|e0|reg0|regs~174_combout\)) # (!\pro0|c0|c_l|Mux4~0_combout\ & ((\pro0|e0|reg0|regs~176_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|c_l|Mux4~0_combout\,
	datac => \pro0|e0|reg0|regs~174_combout\,
	datad => \pro0|e0|reg0|regs~176_combout\,
	combout => \pro0|e0|reg0|regs~177_combout\);

-- Location: LCFF_X29_Y21_N17
\mem0|sram_c|SRAM_DQ[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[5]~reg0_regout\);

-- Location: LCCOMB_X32_Y26_N0
\mem0|sram_c|SRAM_DQ[5]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sram_c|SRAM_DQ[5]~enfeeder_combout\ = \mem0|write_s~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem0|write_s~0_combout\,
	combout => \mem0|sram_c|SRAM_DQ[5]~enfeeder_combout\);

-- Location: LCFF_X32_Y26_N1
\mem0|sram_c|SRAM_DQ[5]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \mem0|sram_c|SRAM_DQ[5]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[5]~en_regout\);

-- Location: LCCOMB_X33_Y18_N6
\pro0|c0|pc_s[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[4]~27_combout\ = (\pro0|c0|pc_s\(4) & (!\pro0|c0|pc_s[3]~26\)) # (!\pro0|c0|pc_s\(4) & ((\pro0|c0|pc_s[3]~26\) # (GND)))
-- \pro0|c0|pc_s[4]~28\ = CARRY((!\pro0|c0|pc_s[3]~26\) # (!\pro0|c0|pc_s\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(4),
	datad => VCC,
	cin => \pro0|c0|pc_s[3]~26\,
	combout => \pro0|c0|pc_s[4]~27_combout\,
	cout => \pro0|c0|pc_s[4]~28\);

-- Location: LCCOMB_X33_Y18_N8
\pro0|c0|pc_s[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[5]~29_combout\ = (\pro0|c0|pc_s\(5) & (\pro0|c0|pc_s[4]~28\ $ (GND))) # (!\pro0|c0|pc_s\(5) & (!\pro0|c0|pc_s[4]~28\ & VCC))
-- \pro0|c0|pc_s[5]~30\ = CARRY((\pro0|c0|pc_s\(5) & !\pro0|c0|pc_s[4]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|pc_s\(5),
	datad => VCC,
	cin => \pro0|c0|pc_s[4]~28\,
	combout => \pro0|c0|pc_s[5]~29_combout\,
	cout => \pro0|c0|pc_s[5]~30\);

-- Location: LCFF_X33_Y18_N9
\pro0|c0|pc_s[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|pc_s[5]~29_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \pro0|c0|pc_s[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|pc_s\(5));

-- Location: LCCOMB_X33_Y18_N10
\pro0|c0|pc_s[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[6]~31_combout\ = (\pro0|c0|pc_s\(6) & (!\pro0|c0|pc_s[5]~30\)) # (!\pro0|c0|pc_s\(6) & ((\pro0|c0|pc_s[5]~30\) # (GND)))
-- \pro0|c0|pc_s[6]~32\ = CARRY((!\pro0|c0|pc_s[5]~30\) # (!\pro0|c0|pc_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(6),
	datad => VCC,
	cin => \pro0|c0|pc_s[5]~30\,
	combout => \pro0|c0|pc_s[6]~31_combout\,
	cout => \pro0|c0|pc_s[6]~32\);

-- Location: LCFF_X33_Y18_N11
\pro0|c0|pc_s[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|pc_s[6]~31_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \pro0|c0|pc_s[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|pc_s\(6));

-- Location: LCCOMB_X30_Y19_N26
\pro0|e0|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux9~0_combout\ = (\SRAM_DQ[6]~6\ & ((\pro0|c0|c_l|Mux22~0_combout\) # ((\pro0|c0|pc_s\(6) & \pro0|e0|Mux0~0_combout\)))) # (!\SRAM_DQ[6]~6\ & (((\pro0|c0|pc_s\(6) & \pro0|e0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[6]~6\,
	datab => \pro0|c0|c_l|Mux22~0_combout\,
	datac => \pro0|c0|pc_s\(6),
	datad => \pro0|e0|Mux0~0_combout\,
	combout => \pro0|e0|Mux9~0_combout\);

-- Location: LCFF_X31_Y17_N17
\pro0|e0|reg0|regs~58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux9~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~58_regout\);

-- Location: LCFF_X30_Y17_N21
\pro0|e0|reg0|regs~42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux9~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~42_regout\);

-- Location: LCFF_X30_Y17_N15
\pro0|e0|reg0|regs~26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux9~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~26_regout\);

-- Location: LCCOMB_X30_Y17_N14
\pro0|e0|reg0|regs~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~180_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~42_regout\) # ((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|e0|reg0|regs~26_regout\ & !\pro0|c0|c_l|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~42_regout\,
	datac => \pro0|e0|reg0|regs~26_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~180_combout\);

-- Location: LCCOMB_X31_Y17_N16
\pro0|e0|reg0|regs~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~181_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~180_combout\ & (\pro0|e0|reg0|regs~74_regout\)) # (!\pro0|e0|reg0|regs~180_combout\ & ((\pro0|e0|reg0|regs~58_regout\))))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (((\pro0|e0|reg0|regs~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~74_regout\,
	datab => \pro0|c0|c_l|Mux5~1_combout\,
	datac => \pro0|e0|reg0|regs~58_regout\,
	datad => \pro0|e0|reg0|regs~180_combout\,
	combout => \pro0|e0|reg0|regs~181_combout\);

-- Location: LCCOMB_X30_Y19_N14
\pro0|e0|reg0|regs~106feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~106feeder_combout\ = \pro0|e0|Mux9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux9~0_combout\,
	combout => \pro0|e0|reg0|regs~106feeder_combout\);

-- Location: LCFF_X30_Y19_N15
\pro0|e0|reg0|regs~106\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~106feeder_combout\,
	ena => \pro0|e0|reg0|regs~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~106_regout\);

-- Location: LCFF_X30_Y21_N23
\pro0|e0|reg0|regs~138\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux9~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~138_regout\);

-- Location: LCCOMB_X31_Y19_N6
\pro0|e0|reg0|regs~122feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~122feeder_combout\ = \pro0|e0|Mux9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux9~0_combout\,
	combout => \pro0|e0|reg0|regs~122feeder_combout\);

-- Location: LCFF_X31_Y19_N7
\pro0|e0|reg0|regs~122\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~122feeder_combout\,
	ena => \pro0|e0|reg0|regs~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~122_regout\);

-- Location: LCFF_X30_Y21_N1
\pro0|e0|reg0|regs~90\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux9~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~90_regout\);

-- Location: LCCOMB_X30_Y21_N0
\pro0|e0|reg0|regs~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~178_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|c0|c_l|Mux5~1_combout\ & (\pro0|e0|reg0|regs~122_regout\)) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- ((\pro0|e0|reg0|regs~90_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~122_regout\,
	datac => \pro0|e0|reg0|regs~90_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~178_combout\);

-- Location: LCCOMB_X30_Y21_N22
\pro0|e0|reg0|regs~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~179_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~178_combout\ & ((\pro0|e0|reg0|regs~138_regout\))) # (!\pro0|e0|reg0|regs~178_combout\ & (\pro0|e0|reg0|regs~106_regout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- (((\pro0|e0|reg0|regs~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~106_regout\,
	datac => \pro0|e0|reg0|regs~138_regout\,
	datad => \pro0|e0|reg0|regs~178_combout\,
	combout => \pro0|e0|reg0|regs~179_combout\);

-- Location: LCCOMB_X31_Y17_N0
\pro0|e0|reg0|regs~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~182_combout\ = (\pro0|c0|c_l|Mux4~0_combout\ & ((\pro0|e0|reg0|regs~179_combout\))) # (!\pro0|c0|c_l|Mux4~0_combout\ & (\pro0|e0|reg0|regs~181_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|c_l|Mux4~0_combout\,
	datac => \pro0|e0|reg0|regs~181_combout\,
	datad => \pro0|e0|reg0|regs~179_combout\,
	combout => \pro0|e0|reg0|regs~182_combout\);

-- Location: LCFF_X31_Y17_N1
\mem0|sram_c|SRAM_DQ[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[6]~reg0_regout\);

-- Location: LCFF_X31_Y26_N7
\mem0|sram_c|SRAM_DQ[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \mem0|write_s~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[6]~en_regout\);

-- Location: LCCOMB_X30_Y19_N22
\pro0|e0|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux8~0_combout\ = (\pro0|c0|pc_s\(7) & ((\pro0|e0|Mux0~0_combout\) # ((\SRAM_DQ[7]~7\ & \pro0|c0|c_l|Mux22~0_combout\)))) # (!\pro0|c0|pc_s\(7) & (\SRAM_DQ[7]~7\ & (\pro0|c0|c_l|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(7),
	datab => \SRAM_DQ[7]~7\,
	datac => \pro0|c0|c_l|Mux22~0_combout\,
	datad => \pro0|e0|Mux0~0_combout\,
	combout => \pro0|e0|Mux8~0_combout\);

-- Location: LCFF_X31_Y20_N9
\pro0|e0|reg0|regs~139\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux8~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~139_regout\);

-- Location: LCCOMB_X31_Y19_N0
\pro0|e0|reg0|regs~123feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~123feeder_combout\ = \pro0|e0|Mux8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux8~0_combout\,
	combout => \pro0|e0|reg0|regs~123feeder_combout\);

-- Location: LCFF_X31_Y19_N1
\pro0|e0|reg0|regs~123\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~123feeder_combout\,
	ena => \pro0|e0|reg0|regs~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~123_regout\);

-- Location: LCFF_X31_Y20_N27
\pro0|e0|reg0|regs~91\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux8~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~91_regout\);

-- Location: LCCOMB_X31_Y20_N26
\pro0|e0|reg0|regs~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~183_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~123_regout\) # ((\pro0|c0|c_l|Mux6~0_combout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & (((\pro0|e0|reg0|regs~91_regout\ & !\pro0|c0|c_l|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux5~1_combout\,
	datab => \pro0|e0|reg0|regs~123_regout\,
	datac => \pro0|e0|reg0|regs~91_regout\,
	datad => \pro0|c0|c_l|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~183_combout\);

-- Location: LCCOMB_X31_Y20_N8
\pro0|e0|reg0|regs~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~184_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~183_combout\ & ((\pro0|e0|reg0|regs~139_regout\))) # (!\pro0|e0|reg0|regs~183_combout\ & (\pro0|e0|reg0|regs~107_regout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- (((\pro0|e0|reg0|regs~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~107_regout\,
	datab => \pro0|c0|c_l|Mux6~0_combout\,
	datac => \pro0|e0|reg0|regs~139_regout\,
	datad => \pro0|e0|reg0|regs~183_combout\,
	combout => \pro0|e0|reg0|regs~184_combout\);

-- Location: LCFF_X31_Y17_N7
\pro0|e0|reg0|regs~59\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux8~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~59_regout\);

-- Location: LCFF_X30_Y17_N5
\pro0|e0|reg0|regs~43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux8~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~43_regout\);

-- Location: LCFF_X30_Y17_N3
\pro0|e0|reg0|regs~27\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux8~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~27_regout\);

-- Location: LCCOMB_X30_Y17_N2
\pro0|e0|reg0|regs~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~185_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~43_regout\) # ((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|e0|reg0|regs~27_regout\ & !\pro0|c0|c_l|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~43_regout\,
	datac => \pro0|e0|reg0|regs~27_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~185_combout\);

-- Location: LCCOMB_X31_Y17_N6
\pro0|e0|reg0|regs~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~186_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~185_combout\ & (\pro0|e0|reg0|regs~75_regout\)) # (!\pro0|e0|reg0|regs~185_combout\ & ((\pro0|e0|reg0|regs~59_regout\))))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (((\pro0|e0|reg0|regs~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~75_regout\,
	datab => \pro0|c0|c_l|Mux5~1_combout\,
	datac => \pro0|e0|reg0|regs~59_regout\,
	datad => \pro0|e0|reg0|regs~185_combout\,
	combout => \pro0|e0|reg0|regs~186_combout\);

-- Location: LCCOMB_X31_Y17_N30
\pro0|e0|reg0|regs~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~187_combout\ = (\pro0|c0|c_l|Mux4~0_combout\ & (\pro0|e0|reg0|regs~184_combout\)) # (!\pro0|c0|c_l|Mux4~0_combout\ & ((\pro0|e0|reg0|regs~186_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|c_l|Mux4~0_combout\,
	datac => \pro0|e0|reg0|regs~184_combout\,
	datad => \pro0|e0|reg0|regs~186_combout\,
	combout => \pro0|e0|reg0|regs~187_combout\);

-- Location: LCFF_X31_Y17_N31
\mem0|sram_c|SRAM_DQ[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[7]~reg0_regout\);

-- Location: LCCOMB_X32_Y26_N2
\mem0|sram_c|SRAM_DQ[7]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sram_c|SRAM_DQ[7]~enfeeder_combout\ = \mem0|write_s~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem0|write_s~0_combout\,
	combout => \mem0|sram_c|SRAM_DQ[7]~enfeeder_combout\);

-- Location: LCFF_X32_Y26_N3
\mem0|sram_c|SRAM_DQ[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \mem0|sram_c|SRAM_DQ[7]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[7]~en_regout\);

-- Location: LCCOMB_X30_Y19_N12
\pro0|e0|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux7~0_combout\ = (\pro0|c0|pc_s\(8) & ((\pro0|e0|Mux0~0_combout\) # ((\SRAM_DQ[8]~8\ & \pro0|c0|c_l|Mux22~0_combout\)))) # (!\pro0|c0|pc_s\(8) & (\SRAM_DQ[8]~8\ & (\pro0|c0|c_l|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(8),
	datab => \SRAM_DQ[8]~8\,
	datac => \pro0|c0|c_l|Mux22~0_combout\,
	datad => \pro0|e0|Mux0~0_combout\,
	combout => \pro0|e0|Mux7~0_combout\);

-- Location: LCFF_X31_Y17_N9
\pro0|e0|reg0|regs~60\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux7~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~60_regout\);

-- Location: LCCOMB_X30_Y17_N6
\pro0|e0|reg0|regs~28feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~28feeder_combout\ = \pro0|e0|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux7~0_combout\,
	combout => \pro0|e0|reg0|regs~28feeder_combout\);

-- Location: LCFF_X30_Y17_N7
\pro0|e0|reg0|regs~28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~28feeder_combout\,
	ena => \pro0|e0|reg0|regs~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~28_regout\);

-- Location: LCCOMB_X31_Y17_N26
\pro0|e0|reg0|regs~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~190_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & (((\pro0|c0|c_l|Mux6~0_combout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|c0|c_l|Mux6~0_combout\ & (\pro0|e0|reg0|regs~44_regout\)) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- ((\pro0|e0|reg0|regs~28_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~44_regout\,
	datab => \pro0|e0|reg0|regs~28_regout\,
	datac => \pro0|c0|c_l|Mux5~1_combout\,
	datad => \pro0|c0|c_l|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~190_combout\);

-- Location: LCCOMB_X31_Y17_N8
\pro0|e0|reg0|regs~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~191_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~190_combout\ & (\pro0|e0|reg0|regs~76_regout\)) # (!\pro0|e0|reg0|regs~190_combout\ & ((\pro0|e0|reg0|regs~60_regout\))))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (((\pro0|e0|reg0|regs~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~76_regout\,
	datab => \pro0|c0|c_l|Mux5~1_combout\,
	datac => \pro0|e0|reg0|regs~60_regout\,
	datad => \pro0|e0|reg0|regs~190_combout\,
	combout => \pro0|e0|reg0|regs~191_combout\);

-- Location: LCFF_X30_Y19_N9
\pro0|e0|reg0|regs~108\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux7~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~108_regout\);

-- Location: LCFF_X30_Y21_N15
\pro0|e0|reg0|regs~140\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux7~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~140_regout\);

-- Location: LCCOMB_X31_Y19_N10
\pro0|e0|reg0|regs~124feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~124feeder_combout\ = \pro0|e0|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux7~0_combout\,
	combout => \pro0|e0|reg0|regs~124feeder_combout\);

-- Location: LCFF_X31_Y19_N11
\pro0|e0|reg0|regs~124\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~124feeder_combout\,
	ena => \pro0|e0|reg0|regs~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~124_regout\);

-- Location: LCFF_X30_Y21_N13
\pro0|e0|reg0|regs~92\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux7~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~92_regout\);

-- Location: LCCOMB_X30_Y21_N12
\pro0|e0|reg0|regs~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~188_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|c0|c_l|Mux5~1_combout\ & (\pro0|e0|reg0|regs~124_regout\)) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- ((\pro0|e0|reg0|regs~92_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~124_regout\,
	datac => \pro0|e0|reg0|regs~92_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~188_combout\);

-- Location: LCCOMB_X30_Y21_N14
\pro0|e0|reg0|regs~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~189_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~188_combout\ & ((\pro0|e0|reg0|regs~140_regout\))) # (!\pro0|e0|reg0|regs~188_combout\ & (\pro0|e0|reg0|regs~108_regout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- (((\pro0|e0|reg0|regs~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~108_regout\,
	datac => \pro0|e0|reg0|regs~140_regout\,
	datad => \pro0|e0|reg0|regs~188_combout\,
	combout => \pro0|e0|reg0|regs~189_combout\);

-- Location: LCCOMB_X31_Y17_N24
\pro0|e0|reg0|regs~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~192_combout\ = (\pro0|c0|c_l|Mux4~0_combout\ & ((\pro0|e0|reg0|regs~189_combout\))) # (!\pro0|c0|c_l|Mux4~0_combout\ & (\pro0|e0|reg0|regs~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|c_l|Mux4~0_combout\,
	datac => \pro0|e0|reg0|regs~191_combout\,
	datad => \pro0|e0|reg0|regs~189_combout\,
	combout => \pro0|e0|reg0|regs~192_combout\);

-- Location: LCFF_X31_Y17_N25
\mem0|sram_c|SRAM_DQ[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[8]~reg0_regout\);

-- Location: LCFF_X31_Y26_N5
\mem0|sram_c|SRAM_DQ[8]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \mem0|write_s~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[8]~en_regout\);

-- Location: LCCOMB_X30_Y19_N18
\pro0|e0|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux6~0_combout\ = (\pro0|c0|pc_s\(9) & ((\pro0|e0|Mux0~0_combout\) # ((\SRAM_DQ[9]~9\ & \pro0|c0|c_l|Mux22~0_combout\)))) # (!\pro0|c0|pc_s\(9) & (\SRAM_DQ[9]~9\ & (\pro0|c0|c_l|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(9),
	datab => \SRAM_DQ[9]~9\,
	datac => \pro0|c0|c_l|Mux22~0_combout\,
	datad => \pro0|e0|Mux0~0_combout\,
	combout => \pro0|e0|Mux6~0_combout\);

-- Location: LCFF_X30_Y19_N1
\pro0|e0|reg0|regs~109\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux6~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~109_regout\);

-- Location: LCFF_X31_Y20_N29
\pro0|e0|reg0|regs~141\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux6~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~141_regout\);

-- Location: LCCOMB_X31_Y19_N20
\pro0|e0|reg0|regs~125feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~125feeder_combout\ = \pro0|e0|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~125feeder_combout\);

-- Location: LCFF_X31_Y19_N21
\pro0|e0|reg0|regs~125\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~125feeder_combout\,
	ena => \pro0|e0|reg0|regs~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~125_regout\);

-- Location: LCCOMB_X31_Y20_N22
\pro0|e0|reg0|regs~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~193_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & (((\pro0|e0|reg0|regs~125_regout\) # (\pro0|c0|c_l|Mux6~0_combout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & (\pro0|e0|reg0|regs~93_regout\ & ((!\pro0|c0|c_l|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~93_regout\,
	datab => \pro0|e0|reg0|regs~125_regout\,
	datac => \pro0|c0|c_l|Mux5~1_combout\,
	datad => \pro0|c0|c_l|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~193_combout\);

-- Location: LCCOMB_X31_Y20_N28
\pro0|e0|reg0|regs~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~194_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~193_combout\ & ((\pro0|e0|reg0|regs~141_regout\))) # (!\pro0|e0|reg0|regs~193_combout\ & (\pro0|e0|reg0|regs~109_regout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- (((\pro0|e0|reg0|regs~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~109_regout\,
	datac => \pro0|e0|reg0|regs~141_regout\,
	datad => \pro0|e0|reg0|regs~193_combout\,
	combout => \pro0|e0|reg0|regs~194_combout\);

-- Location: LCCOMB_X30_Y18_N10
\pro0|e0|reg0|regs~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~197_combout\ = (\pro0|c0|c_l|Mux4~0_combout\ & ((\pro0|e0|reg0|regs~194_combout\))) # (!\pro0|c0|c_l|Mux4~0_combout\ & (\pro0|e0|reg0|regs~196_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~196_combout\,
	datac => \pro0|c0|c_l|Mux4~0_combout\,
	datad => \pro0|e0|reg0|regs~194_combout\,
	combout => \pro0|e0|reg0|regs~197_combout\);

-- Location: LCFF_X30_Y18_N11
\mem0|sram_c|SRAM_DQ[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[9]~reg0_regout\);

-- Location: LCFF_X31_Y26_N23
\mem0|sram_c|SRAM_DQ[9]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \mem0|write_s~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[9]~en_regout\);

-- Location: LCCOMB_X33_Y18_N14
\pro0|c0|pc_s[8]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[8]~35_combout\ = (\pro0|c0|pc_s\(8) & (!\pro0|c0|pc_s[7]~34\)) # (!\pro0|c0|pc_s\(8) & ((\pro0|c0|pc_s[7]~34\) # (GND)))
-- \pro0|c0|pc_s[8]~36\ = CARRY((!\pro0|c0|pc_s[7]~34\) # (!\pro0|c0|pc_s\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|pc_s\(8),
	datad => VCC,
	cin => \pro0|c0|pc_s[7]~34\,
	combout => \pro0|c0|pc_s[8]~35_combout\,
	cout => \pro0|c0|pc_s[8]~36\);

-- Location: LCFF_X33_Y18_N15
\pro0|c0|pc_s[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|pc_s[8]~35_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \pro0|c0|pc_s[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|pc_s\(8));

-- Location: LCCOMB_X33_Y18_N18
\pro0|c0|pc_s[10]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[10]~39_combout\ = (\pro0|c0|pc_s\(10) & (!\pro0|c0|pc_s[9]~38\)) # (!\pro0|c0|pc_s\(10) & ((\pro0|c0|pc_s[9]~38\) # (GND)))
-- \pro0|c0|pc_s[10]~40\ = CARRY((!\pro0|c0|pc_s[9]~38\) # (!\pro0|c0|pc_s\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|pc_s\(10),
	datad => VCC,
	cin => \pro0|c0|pc_s[9]~38\,
	combout => \pro0|c0|pc_s[10]~39_combout\,
	cout => \pro0|c0|pc_s[10]~40\);

-- Location: LCFF_X33_Y18_N19
\pro0|c0|pc_s[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|pc_s[10]~39_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \pro0|c0|pc_s[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|pc_s\(10));

-- Location: LCCOMB_X30_Y20_N6
\pro0|e0|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux5~0_combout\ = (\SRAM_DQ[10]~10\ & ((\pro0|c0|c_l|Mux22~0_combout\) # ((\pro0|c0|pc_s\(10) & \pro0|e0|Mux0~0_combout\)))) # (!\SRAM_DQ[10]~10\ & (\pro0|c0|pc_s\(10) & ((\pro0|e0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[10]~10\,
	datab => \pro0|c0|pc_s\(10),
	datac => \pro0|c0|c_l|Mux22~0_combout\,
	datad => \pro0|e0|Mux0~0_combout\,
	combout => \pro0|e0|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y19_N22
\pro0|e0|reg0|regs~62feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~62feeder_combout\ = \pro0|e0|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux5~0_combout\,
	combout => \pro0|e0|reg0|regs~62feeder_combout\);

-- Location: LCFF_X29_Y19_N23
\pro0|e0|reg0|regs~62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~62feeder_combout\,
	ena => \pro0|e0|reg0|regs~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~62_regout\);

-- Location: LCFF_X29_Y20_N5
\pro0|e0|reg0|regs~78\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux5~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~78_regout\);

-- Location: LCCOMB_X29_Y18_N18
\pro0|e0|reg0|regs~30feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~30feeder_combout\ = \pro0|e0|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux5~0_combout\,
	combout => \pro0|e0|reg0|regs~30feeder_combout\);

-- Location: LCFF_X29_Y18_N19
\pro0|e0|reg0|regs~30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~30feeder_combout\,
	ena => \pro0|e0|reg0|regs~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~30_regout\);

-- Location: LCCOMB_X29_Y20_N18
\pro0|e0|reg0|regs~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~200_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & (((\pro0|c0|c_l|Mux6~0_combout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|c0|c_l|Mux6~0_combout\ & (\pro0|e0|reg0|regs~46_regout\)) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- ((\pro0|e0|reg0|regs~30_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~46_regout\,
	datab => \pro0|e0|reg0|regs~30_regout\,
	datac => \pro0|c0|c_l|Mux5~1_combout\,
	datad => \pro0|c0|c_l|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~200_combout\);

-- Location: LCCOMB_X29_Y20_N4
\pro0|e0|reg0|regs~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~201_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~200_combout\ & ((\pro0|e0|reg0|regs~78_regout\))) # (!\pro0|e0|reg0|regs~200_combout\ & (\pro0|e0|reg0|regs~62_regout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (((\pro0|e0|reg0|regs~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux5~1_combout\,
	datab => \pro0|e0|reg0|regs~62_regout\,
	datac => \pro0|e0|reg0|regs~78_regout\,
	datad => \pro0|e0|reg0|regs~200_combout\,
	combout => \pro0|e0|reg0|regs~201_combout\);

-- Location: LCFF_X30_Y20_N5
\pro0|e0|reg0|regs~110\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux5~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~110_regout\);

-- Location: LCFF_X31_Y20_N7
\pro0|e0|reg0|regs~94\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux5~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~94_regout\);

-- Location: LCCOMB_X31_Y20_N6
\pro0|e0|reg0|regs~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~198_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|c0|c_l|Mux5~1_combout\ & (\pro0|e0|reg0|regs~126_regout\)) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- ((\pro0|e0|reg0|regs~94_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~126_regout\,
	datab => \pro0|c0|c_l|Mux6~0_combout\,
	datac => \pro0|e0|reg0|regs~94_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~198_combout\);

-- Location: LCCOMB_X30_Y20_N4
\pro0|e0|reg0|regs~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~199_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~198_combout\ & (\pro0|e0|reg0|regs~142_regout\)) # (!\pro0|e0|reg0|regs~198_combout\ & ((\pro0|e0|reg0|regs~110_regout\))))) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- (((\pro0|e0|reg0|regs~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~142_regout\,
	datab => \pro0|c0|c_l|Mux6~0_combout\,
	datac => \pro0|e0|reg0|regs~110_regout\,
	datad => \pro0|e0|reg0|regs~198_combout\,
	combout => \pro0|e0|reg0|regs~199_combout\);

-- Location: LCCOMB_X29_Y20_N28
\pro0|e0|reg0|regs~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~202_combout\ = (\pro0|c0|c_l|Mux4~0_combout\ & ((\pro0|e0|reg0|regs~199_combout\))) # (!\pro0|c0|c_l|Mux4~0_combout\ & (\pro0|e0|reg0|regs~201_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|c_l|Mux4~0_combout\,
	datac => \pro0|e0|reg0|regs~201_combout\,
	datad => \pro0|e0|reg0|regs~199_combout\,
	combout => \pro0|e0|reg0|regs~202_combout\);

-- Location: LCFF_X29_Y20_N29
\mem0|sram_c|SRAM_DQ[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[10]~reg0_regout\);

-- Location: LCFF_X31_Y26_N9
\mem0|sram_c|SRAM_DQ[10]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \mem0|write_s~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[10]~en_regout\);

-- Location: LCCOMB_X30_Y19_N30
\pro0|e0|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux4~0_combout\ = (\pro0|c0|pc_s\(11) & ((\pro0|e0|Mux0~0_combout\) # ((\SRAM_DQ[11]~11\ & \pro0|c0|c_l|Mux22~0_combout\)))) # (!\pro0|c0|pc_s\(11) & (\SRAM_DQ[11]~11\ & (\pro0|c0|c_l|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(11),
	datab => \SRAM_DQ[11]~11\,
	datac => \pro0|c0|c_l|Mux22~0_combout\,
	datad => \pro0|e0|Mux0~0_combout\,
	combout => \pro0|e0|Mux4~0_combout\);

-- Location: LCFF_X30_Y19_N29
\pro0|e0|reg0|regs~111\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux4~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~111_regout\);

-- Location: LCFF_X31_Y19_N31
\pro0|e0|reg0|regs~95\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux4~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~95_regout\);

-- Location: LCCOMB_X31_Y19_N30
\pro0|e0|reg0|regs~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~203_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|c0|c_l|Mux5~1_combout\ & (\pro0|e0|reg0|regs~127_regout\)) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- ((\pro0|e0|reg0|regs~95_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~127_regout\,
	datab => \pro0|c0|c_l|Mux6~0_combout\,
	datac => \pro0|e0|reg0|regs~95_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~203_combout\);

-- Location: LCCOMB_X30_Y19_N28
\pro0|e0|reg0|regs~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~204_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~203_combout\ & (\pro0|e0|reg0|regs~143_regout\)) # (!\pro0|e0|reg0|regs~203_combout\ & ((\pro0|e0|reg0|regs~111_regout\))))) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- (((\pro0|e0|reg0|regs~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~143_regout\,
	datab => \pro0|c0|c_l|Mux6~0_combout\,
	datac => \pro0|e0|reg0|regs~111_regout\,
	datad => \pro0|e0|reg0|regs~203_combout\,
	combout => \pro0|e0|reg0|regs~204_combout\);

-- Location: LCFF_X31_Y17_N29
\pro0|e0|reg0|regs~63\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux4~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~63_regout\);

-- Location: LCCOMB_X30_Y17_N0
\pro0|e0|reg0|regs~47feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~47feeder_combout\ = \pro0|e0|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux4~0_combout\,
	combout => \pro0|e0|reg0|regs~47feeder_combout\);

-- Location: LCFF_X30_Y17_N1
\pro0|e0|reg0|regs~47\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~47feeder_combout\,
	ena => \pro0|e0|reg0|regs~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~47_regout\);

-- Location: LCFF_X30_Y17_N11
\pro0|e0|reg0|regs~31\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux4~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~31_regout\);

-- Location: LCCOMB_X30_Y17_N10
\pro0|e0|reg0|regs~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~205_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~47_regout\) # ((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|e0|reg0|regs~31_regout\ & !\pro0|c0|c_l|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~47_regout\,
	datac => \pro0|e0|reg0|regs~31_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~205_combout\);

-- Location: LCCOMB_X31_Y17_N28
\pro0|e0|reg0|regs~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~206_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~205_combout\ & (\pro0|e0|reg0|regs~79_regout\)) # (!\pro0|e0|reg0|regs~205_combout\ & ((\pro0|e0|reg0|regs~63_regout\))))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (((\pro0|e0|reg0|regs~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~79_regout\,
	datab => \pro0|c0|c_l|Mux5~1_combout\,
	datac => \pro0|e0|reg0|regs~63_regout\,
	datad => \pro0|e0|reg0|regs~205_combout\,
	combout => \pro0|e0|reg0|regs~206_combout\);

-- Location: LCCOMB_X31_Y17_N10
\pro0|e0|reg0|regs~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~207_combout\ = (\pro0|c0|c_l|Mux4~0_combout\ & (\pro0|e0|reg0|regs~204_combout\)) # (!\pro0|c0|c_l|Mux4~0_combout\ & ((\pro0|e0|reg0|regs~206_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|c_l|Mux4~0_combout\,
	datac => \pro0|e0|reg0|regs~204_combout\,
	datad => \pro0|e0|reg0|regs~206_combout\,
	combout => \pro0|e0|reg0|regs~207_combout\);

-- Location: LCFF_X31_Y17_N11
\mem0|sram_c|SRAM_DQ[11]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[11]~reg0_regout\);

-- Location: LCFF_X31_Y26_N19
\mem0|sram_c|SRAM_DQ[11]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \mem0|write_s~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[11]~en_regout\);

-- Location: LCCOMB_X31_Y19_N2
\pro0|e0|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux3~0_combout\ = (\pro0|c0|pc_s\(12) & ((\pro0|e0|Mux0~0_combout\) # ((\SRAM_DQ[12]~12\ & \pro0|c0|c_l|Mux22~0_combout\)))) # (!\pro0|c0|pc_s\(12) & (\SRAM_DQ[12]~12\ & (\pro0|c0|c_l|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(12),
	datab => \SRAM_DQ[12]~12\,
	datac => \pro0|c0|c_l|Mux22~0_combout\,
	datad => \pro0|e0|Mux0~0_combout\,
	combout => \pro0|e0|Mux3~0_combout\);

-- Location: LCFF_X31_Y17_N15
\pro0|e0|reg0|regs~64\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux3~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~64_regout\);

-- Location: LCFF_X30_Y17_N17
\pro0|e0|reg0|regs~48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux3~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~48_regout\);

-- Location: LCFF_X30_Y17_N27
\pro0|e0|reg0|regs~32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux3~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~32_regout\);

-- Location: LCCOMB_X30_Y17_N26
\pro0|e0|reg0|regs~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~210_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~48_regout\) # ((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|e0|reg0|regs~32_regout\ & !\pro0|c0|c_l|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~48_regout\,
	datac => \pro0|e0|reg0|regs~32_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~210_combout\);

-- Location: LCCOMB_X31_Y17_N14
\pro0|e0|reg0|regs~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~211_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~210_combout\ & (\pro0|e0|reg0|regs~80_regout\)) # (!\pro0|e0|reg0|regs~210_combout\ & ((\pro0|e0|reg0|regs~64_regout\))))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (((\pro0|e0|reg0|regs~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~80_regout\,
	datab => \pro0|c0|c_l|Mux5~1_combout\,
	datac => \pro0|e0|reg0|regs~64_regout\,
	datad => \pro0|e0|reg0|regs~210_combout\,
	combout => \pro0|e0|reg0|regs~211_combout\);

-- Location: LCCOMB_X32_Y19_N30
\pro0|e0|reg0|regs~144feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~144feeder_combout\ = \pro0|e0|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux3~0_combout\,
	combout => \pro0|e0|reg0|regs~144feeder_combout\);

-- Location: LCFF_X32_Y19_N31
\pro0|e0|reg0|regs~144\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~144feeder_combout\,
	ena => \pro0|e0|reg0|regs~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~144_regout\);

-- Location: LCFF_X31_Y19_N25
\pro0|e0|reg0|regs~96\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux3~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~96_regout\);

-- Location: LCCOMB_X31_Y19_N24
\pro0|e0|reg0|regs~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~208_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|c0|c_l|Mux5~1_combout\ & (\pro0|e0|reg0|regs~128_regout\)) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- ((\pro0|e0|reg0|regs~96_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~128_regout\,
	datab => \pro0|c0|c_l|Mux6~0_combout\,
	datac => \pro0|e0|reg0|regs~96_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~208_combout\);

-- Location: LCCOMB_X31_Y19_N26
\pro0|e0|reg0|regs~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~209_combout\ = (\pro0|e0|reg0|regs~208_combout\ & (((\pro0|e0|reg0|regs~144_regout\) # (!\pro0|c0|c_l|Mux6~0_combout\)))) # (!\pro0|e0|reg0|regs~208_combout\ & (\pro0|e0|reg0|regs~112_regout\ & ((\pro0|c0|c_l|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~112_regout\,
	datab => \pro0|e0|reg0|regs~144_regout\,
	datac => \pro0|e0|reg0|regs~208_combout\,
	datad => \pro0|c0|c_l|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~209_combout\);

-- Location: LCCOMB_X31_Y17_N20
\pro0|e0|reg0|regs~212\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~212_combout\ = (\pro0|c0|c_l|Mux4~0_combout\ & ((\pro0|e0|reg0|regs~209_combout\))) # (!\pro0|c0|c_l|Mux4~0_combout\ & (\pro0|e0|reg0|regs~211_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|c_l|Mux4~0_combout\,
	datac => \pro0|e0|reg0|regs~211_combout\,
	datad => \pro0|e0|reg0|regs~209_combout\,
	combout => \pro0|e0|reg0|regs~212_combout\);

-- Location: LCFF_X31_Y17_N21
\mem0|sram_c|SRAM_DQ[12]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[12]~reg0_regout\);

-- Location: LCFF_X31_Y26_N15
\mem0|sram_c|SRAM_DQ[12]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \mem0|write_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[12]~en_regout\);

-- Location: LCCOMB_X32_Y17_N10
\pro0|e0|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux2~0_combout\ = (\pro0|c0|pc_s\(13) & ((\pro0|e0|Mux0~0_combout\) # ((\SRAM_DQ[13]~13\ & \pro0|c0|c_l|Mux22~0_combout\)))) # (!\pro0|c0|pc_s\(13) & (\SRAM_DQ[13]~13\ & (\pro0|c0|c_l|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(13),
	datab => \SRAM_DQ[13]~13\,
	datac => \pro0|c0|c_l|Mux22~0_combout\,
	datad => \pro0|e0|Mux0~0_combout\,
	combout => \pro0|e0|Mux2~0_combout\);

-- Location: LCFF_X31_Y17_N5
\pro0|e0|reg0|regs~65\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux2~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~65_regout\);

-- Location: LCCOMB_X33_Y17_N18
\pro0|e0|reg0|regs~49feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~49feeder_combout\ = \pro0|e0|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux2~0_combout\,
	combout => \pro0|e0|reg0|regs~49feeder_combout\);

-- Location: LCFF_X33_Y17_N19
\pro0|e0|reg0|regs~49\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~49feeder_combout\,
	ena => \pro0|e0|reg0|regs~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~49_regout\);

-- Location: LCFF_X30_Y17_N13
\pro0|e0|reg0|regs~33\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux2~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~33_regout\);

-- Location: LCCOMB_X30_Y17_N12
\pro0|e0|reg0|regs~215\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~215_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~49_regout\) # ((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|e0|reg0|regs~33_regout\ & !\pro0|c0|c_l|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~49_regout\,
	datac => \pro0|e0|reg0|regs~33_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~215_combout\);

-- Location: LCCOMB_X31_Y17_N4
\pro0|e0|reg0|regs~216\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~216_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~215_combout\ & (\pro0|e0|reg0|regs~81_regout\)) # (!\pro0|e0|reg0|regs~215_combout\ & ((\pro0|e0|reg0|regs~65_regout\))))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (((\pro0|e0|reg0|regs~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~81_regout\,
	datab => \pro0|c0|c_l|Mux5~1_combout\,
	datac => \pro0|e0|reg0|regs~65_regout\,
	datad => \pro0|e0|reg0|regs~215_combout\,
	combout => \pro0|e0|reg0|regs~216_combout\);

-- Location: LCCOMB_X33_Y17_N24
\pro0|e0|reg0|regs~145feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~145feeder_combout\ = \pro0|e0|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux2~0_combout\,
	combout => \pro0|e0|reg0|regs~145feeder_combout\);

-- Location: LCFF_X33_Y17_N25
\pro0|e0|reg0|regs~145\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~145feeder_combout\,
	ena => \pro0|e0|reg0|regs~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~145_regout\);

-- Location: LCFF_X32_Y17_N5
\pro0|e0|reg0|regs~113\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux2~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~113_regout\);

-- Location: LCFF_X31_Y19_N19
\pro0|e0|reg0|regs~97\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux2~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~97_regout\);

-- Location: LCCOMB_X31_Y19_N18
\pro0|e0|reg0|regs~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~213_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|c0|c_l|Mux5~1_combout\ & (\pro0|e0|reg0|regs~129_regout\)) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- ((\pro0|e0|reg0|regs~97_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~129_regout\,
	datab => \pro0|c0|c_l|Mux6~0_combout\,
	datac => \pro0|e0|reg0|regs~97_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~213_combout\);

-- Location: LCCOMB_X32_Y17_N4
\pro0|e0|reg0|regs~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~214_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~213_combout\ & (\pro0|e0|reg0|regs~145_regout\)) # (!\pro0|e0|reg0|regs~213_combout\ & ((\pro0|e0|reg0|regs~113_regout\))))) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- (((\pro0|e0|reg0|regs~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~145_regout\,
	datac => \pro0|e0|reg0|regs~113_regout\,
	datad => \pro0|e0|reg0|regs~213_combout\,
	combout => \pro0|e0|reg0|regs~214_combout\);

-- Location: LCCOMB_X31_Y17_N18
\pro0|e0|reg0|regs~217\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~217_combout\ = (\pro0|c0|c_l|Mux4~0_combout\ & ((\pro0|e0|reg0|regs~214_combout\))) # (!\pro0|c0|c_l|Mux4~0_combout\ & (\pro0|e0|reg0|regs~216_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|c_l|Mux4~0_combout\,
	datac => \pro0|e0|reg0|regs~216_combout\,
	datad => \pro0|e0|reg0|regs~214_combout\,
	combout => \pro0|e0|reg0|regs~217_combout\);

-- Location: LCFF_X31_Y17_N19
\mem0|sram_c|SRAM_DQ[13]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[13]~reg0_regout\);

-- Location: LCFF_X31_Y26_N13
\mem0|sram_c|SRAM_DQ[13]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \mem0|write_s~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[13]~en_regout\);

-- Location: LCCOMB_X33_Y18_N20
\pro0|c0|pc_s[11]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[11]~41_combout\ = (\pro0|c0|pc_s\(11) & (\pro0|c0|pc_s[10]~40\ $ (GND))) # (!\pro0|c0|pc_s\(11) & (!\pro0|c0|pc_s[10]~40\ & VCC))
-- \pro0|c0|pc_s[11]~42\ = CARRY((\pro0|c0|pc_s\(11) & !\pro0|c0|pc_s[10]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(11),
	datad => VCC,
	cin => \pro0|c0|pc_s[10]~40\,
	combout => \pro0|c0|pc_s[11]~41_combout\,
	cout => \pro0|c0|pc_s[11]~42\);

-- Location: LCCOMB_X33_Y18_N22
\pro0|c0|pc_s[12]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[12]~43_combout\ = (\pro0|c0|pc_s\(12) & (!\pro0|c0|pc_s[11]~42\)) # (!\pro0|c0|pc_s\(12) & ((\pro0|c0|pc_s[11]~42\) # (GND)))
-- \pro0|c0|pc_s[12]~44\ = CARRY((!\pro0|c0|pc_s[11]~42\) # (!\pro0|c0|pc_s\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|pc_s\(12),
	datad => VCC,
	cin => \pro0|c0|pc_s[11]~42\,
	combout => \pro0|c0|pc_s[12]~43_combout\,
	cout => \pro0|c0|pc_s[12]~44\);

-- Location: LCFF_X33_Y18_N23
\pro0|c0|pc_s[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|pc_s[12]~43_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \pro0|c0|pc_s[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|pc_s\(12));

-- Location: LCCOMB_X33_Y18_N24
\pro0|c0|pc_s[13]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[13]~45_combout\ = (\pro0|c0|pc_s\(13) & (\pro0|c0|pc_s[12]~44\ $ (GND))) # (!\pro0|c0|pc_s\(13) & (!\pro0|c0|pc_s[12]~44\ & VCC))
-- \pro0|c0|pc_s[13]~46\ = CARRY((\pro0|c0|pc_s\(13) & !\pro0|c0|pc_s[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(13),
	datad => VCC,
	cin => \pro0|c0|pc_s[12]~44\,
	combout => \pro0|c0|pc_s[13]~45_combout\,
	cout => \pro0|c0|pc_s[13]~46\);

-- Location: LCCOMB_X33_Y18_N26
\pro0|c0|pc_s[14]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[14]~47_combout\ = (\pro0|c0|pc_s\(14) & (!\pro0|c0|pc_s[13]~46\)) # (!\pro0|c0|pc_s\(14) & ((\pro0|c0|pc_s[13]~46\) # (GND)))
-- \pro0|c0|pc_s[14]~48\ = CARRY((!\pro0|c0|pc_s[13]~46\) # (!\pro0|c0|pc_s\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|pc_s\(14),
	datad => VCC,
	cin => \pro0|c0|pc_s[13]~46\,
	combout => \pro0|c0|pc_s[14]~47_combout\,
	cout => \pro0|c0|pc_s[14]~48\);

-- Location: LCFF_X33_Y18_N27
\pro0|c0|pc_s[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|pc_s[14]~47_combout\,
	sdata => VCC,
	sload => \SW~combout\(9),
	ena => \pro0|c0|pc_s[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|pc_s\(14));

-- Location: LCCOMB_X32_Y17_N24
\pro0|e0|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux1~0_combout\ = (\SRAM_DQ[14]~14\ & ((\pro0|c0|c_l|Mux22~0_combout\) # ((\pro0|c0|pc_s\(14) & \pro0|e0|Mux0~0_combout\)))) # (!\SRAM_DQ[14]~14\ & (\pro0|c0|pc_s\(14) & ((\pro0|e0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[14]~14\,
	datab => \pro0|c0|pc_s\(14),
	datac => \pro0|c0|c_l|Mux22~0_combout\,
	datad => \pro0|e0|Mux0~0_combout\,
	combout => \pro0|e0|Mux1~0_combout\);

-- Location: LCFF_X32_Y17_N31
\pro0|e0|reg0|regs~82\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux1~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~82_regout\);

-- Location: LCCOMB_X31_Y17_N22
\pro0|e0|reg0|regs~66feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~66feeder_combout\ = \pro0|e0|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux1~0_combout\,
	combout => \pro0|e0|reg0|regs~66feeder_combout\);

-- Location: LCFF_X31_Y17_N23
\pro0|e0|reg0|regs~66\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~66feeder_combout\,
	ena => \pro0|e0|reg0|regs~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~66_regout\);

-- Location: LCCOMB_X30_Y17_N22
\pro0|e0|reg0|regs~50feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~50feeder_combout\ = \pro0|e0|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux1~0_combout\,
	combout => \pro0|e0|reg0|regs~50feeder_combout\);

-- Location: LCFF_X30_Y17_N23
\pro0|e0|reg0|regs~50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~50feeder_combout\,
	ena => \pro0|e0|reg0|regs~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~50_regout\);

-- Location: LCFF_X30_Y17_N29
\pro0|e0|reg0|regs~34\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux1~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~34_regout\);

-- Location: LCCOMB_X30_Y17_N28
\pro0|e0|reg0|regs~220\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~220_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~50_regout\) # ((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|e0|reg0|regs~34_regout\ & !\pro0|c0|c_l|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~50_regout\,
	datac => \pro0|e0|reg0|regs~34_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~220_combout\);

-- Location: LCCOMB_X29_Y17_N20
\pro0|e0|reg0|regs~221\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~221_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~220_combout\ & (\pro0|e0|reg0|regs~82_regout\)) # (!\pro0|e0|reg0|regs~220_combout\ & ((\pro0|e0|reg0|regs~66_regout\))))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (((\pro0|e0|reg0|regs~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux5~1_combout\,
	datab => \pro0|e0|reg0|regs~82_regout\,
	datac => \pro0|e0|reg0|regs~66_regout\,
	datad => \pro0|e0|reg0|regs~220_combout\,
	combout => \pro0|e0|reg0|regs~221_combout\);

-- Location: LCCOMB_X33_Y17_N12
\pro0|e0|reg0|regs~146feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~146feeder_combout\ = \pro0|e0|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux1~0_combout\,
	combout => \pro0|e0|reg0|regs~146feeder_combout\);

-- Location: LCFF_X33_Y17_N13
\pro0|e0|reg0|regs~146\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~146feeder_combout\,
	ena => \pro0|e0|reg0|regs~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~146_regout\);

-- Location: LCFF_X32_Y17_N9
\pro0|e0|reg0|regs~114\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux1~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~114_regout\);

-- Location: LCFF_X31_Y19_N15
\pro0|e0|reg0|regs~98\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux1~0_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~98_regout\);

-- Location: LCCOMB_X31_Y19_N14
\pro0|e0|reg0|regs~218\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~218_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|c0|c_l|Mux5~1_combout\ & (\pro0|e0|reg0|regs~130_regout\)) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- ((\pro0|e0|reg0|regs~98_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~130_regout\,
	datab => \pro0|c0|c_l|Mux6~0_combout\,
	datac => \pro0|e0|reg0|regs~98_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~218_combout\);

-- Location: LCCOMB_X32_Y17_N8
\pro0|e0|reg0|regs~219\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~219_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~218_combout\ & (\pro0|e0|reg0|regs~146_regout\)) # (!\pro0|e0|reg0|regs~218_combout\ & ((\pro0|e0|reg0|regs~114_regout\))))) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- (((\pro0|e0|reg0|regs~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~146_regout\,
	datac => \pro0|e0|reg0|regs~114_regout\,
	datad => \pro0|e0|reg0|regs~218_combout\,
	combout => \pro0|e0|reg0|regs~219_combout\);

-- Location: LCCOMB_X29_Y17_N26
\pro0|e0|reg0|regs~222\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~222_combout\ = (\pro0|c0|c_l|Mux4~0_combout\ & ((\pro0|e0|reg0|regs~219_combout\))) # (!\pro0|c0|c_l|Mux4~0_combout\ & (\pro0|e0|reg0|regs~221_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|c_l|Mux4~0_combout\,
	datac => \pro0|e0|reg0|regs~221_combout\,
	datad => \pro0|e0|reg0|regs~219_combout\,
	combout => \pro0|e0|reg0|regs~222_combout\);

-- Location: LCFF_X29_Y17_N27
\mem0|sram_c|SRAM_DQ[14]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[14]~reg0_regout\);

-- Location: LCCOMB_X32_Y26_N16
\mem0|sram_c|SRAM_DQ[14]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sram_c|SRAM_DQ[14]~enfeeder_combout\ = \mem0|write_s~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem0|write_s~0_combout\,
	combout => \mem0|sram_c|SRAM_DQ[14]~enfeeder_combout\);

-- Location: LCFF_X32_Y26_N17
\mem0|sram_c|SRAM_DQ[14]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \mem0|sram_c|SRAM_DQ[14]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[14]~en_regout\);

-- Location: LCCOMB_X32_Y17_N6
\pro0|e0|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux0~1_combout\ = (\pro0|c0|pc_s\(15) & ((\pro0|e0|Mux0~0_combout\) # ((\SRAM_DQ[15]~15\ & \pro0|c0|c_l|Mux22~0_combout\)))) # (!\pro0|c0|pc_s\(15) & (\SRAM_DQ[15]~15\ & (\pro0|c0|c_l|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(15),
	datab => \SRAM_DQ[15]~15\,
	datac => \pro0|c0|c_l|Mux22~0_combout\,
	datad => \pro0|e0|Mux0~0_combout\,
	combout => \pro0|e0|Mux0~1_combout\);

-- Location: LCCOMB_X32_Y17_N14
\pro0|e0|reg0|regs~83feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~83feeder_combout\ = \pro0|e0|Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux0~1_combout\,
	combout => \pro0|e0|reg0|regs~83feeder_combout\);

-- Location: LCFF_X32_Y17_N15
\pro0|e0|reg0|regs~83\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~83feeder_combout\,
	ena => \pro0|e0|reg0|regs~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~83_regout\);

-- Location: LCFF_X29_Y17_N15
\pro0|e0|reg0|regs~67\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux0~1_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~67_regout\);

-- Location: LCFF_X33_Y17_N7
\pro0|e0|reg0|regs~51\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux0~1_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~51_regout\);

-- Location: LCFF_X30_Y17_N31
\pro0|e0|reg0|regs~35\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux0~1_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~35_regout\);

-- Location: LCCOMB_X30_Y17_N30
\pro0|e0|reg0|regs~225\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~225_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~51_regout\) # ((\pro0|c0|c_l|Mux5~1_combout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & (((\pro0|e0|reg0|regs~35_regout\ & !\pro0|c0|c_l|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux6~0_combout\,
	datab => \pro0|e0|reg0|regs~51_regout\,
	datac => \pro0|e0|reg0|regs~35_regout\,
	datad => \pro0|c0|c_l|Mux5~1_combout\,
	combout => \pro0|e0|reg0|regs~225_combout\);

-- Location: LCCOMB_X29_Y17_N14
\pro0|e0|reg0|regs~226\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~226_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~225_combout\ & (\pro0|e0|reg0|regs~83_regout\)) # (!\pro0|e0|reg0|regs~225_combout\ & ((\pro0|e0|reg0|regs~67_regout\))))) # (!\pro0|c0|c_l|Mux5~1_combout\ & 
-- (((\pro0|e0|reg0|regs~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux5~1_combout\,
	datab => \pro0|e0|reg0|regs~83_regout\,
	datac => \pro0|e0|reg0|regs~67_regout\,
	datad => \pro0|e0|reg0|regs~225_combout\,
	combout => \pro0|e0|reg0|regs~226_combout\);

-- Location: LCFF_X31_Y20_N19
\pro0|e0|reg0|regs~147\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux0~1_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~147_regout\);

-- Location: LCCOMB_X31_Y19_N12
\pro0|e0|reg0|regs~131feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~131feeder_combout\ = \pro0|e0|Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|e0|Mux0~1_combout\,
	combout => \pro0|e0|reg0|regs~131feeder_combout\);

-- Location: LCFF_X31_Y19_N13
\pro0|e0|reg0|regs~131\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~131feeder_combout\,
	ena => \pro0|e0|reg0|regs~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~131_regout\);

-- Location: LCFF_X31_Y20_N13
\pro0|e0|reg0|regs~99\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	sdata => \pro0|e0|Mux0~1_combout\,
	sload => VCC,
	ena => \pro0|e0|reg0|regs~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~99_regout\);

-- Location: LCCOMB_X31_Y20_N12
\pro0|e0|reg0|regs~223\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~223_combout\ = (\pro0|c0|c_l|Mux5~1_combout\ & ((\pro0|e0|reg0|regs~131_regout\) # ((\pro0|c0|c_l|Mux6~0_combout\)))) # (!\pro0|c0|c_l|Mux5~1_combout\ & (((\pro0|e0|reg0|regs~99_regout\ & !\pro0|c0|c_l|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|c_l|Mux5~1_combout\,
	datab => \pro0|e0|reg0|regs~131_regout\,
	datac => \pro0|e0|reg0|regs~99_regout\,
	datad => \pro0|c0|c_l|Mux6~0_combout\,
	combout => \pro0|e0|reg0|regs~223_combout\);

-- Location: LCCOMB_X31_Y20_N18
\pro0|e0|reg0|regs~224\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~224_combout\ = (\pro0|c0|c_l|Mux6~0_combout\ & ((\pro0|e0|reg0|regs~223_combout\ & ((\pro0|e0|reg0|regs~147_regout\))) # (!\pro0|e0|reg0|regs~223_combout\ & (\pro0|e0|reg0|regs~115_regout\)))) # (!\pro0|c0|c_l|Mux6~0_combout\ & 
-- (((\pro0|e0|reg0|regs~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~115_regout\,
	datab => \pro0|c0|c_l|Mux6~0_combout\,
	datac => \pro0|e0|reg0|regs~147_regout\,
	datad => \pro0|e0|reg0|regs~223_combout\,
	combout => \pro0|e0|reg0|regs~224_combout\);

-- Location: LCCOMB_X29_Y17_N8
\pro0|e0|reg0|regs~227\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~227_combout\ = (\pro0|c0|c_l|Mux4~0_combout\ & ((\pro0|e0|reg0|regs~224_combout\))) # (!\pro0|c0|c_l|Mux4~0_combout\ & (\pro0|e0|reg0|regs~226_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|c_l|Mux4~0_combout\,
	datac => \pro0|e0|reg0|regs~226_combout\,
	datad => \pro0|e0|reg0|regs~224_combout\,
	combout => \pro0|e0|reg0|regs~227_combout\);

-- Location: LCFF_X29_Y17_N9
\mem0|sram_c|SRAM_DQ[15]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[15]~reg0_regout\);

-- Location: LCFF_X31_Y26_N27
\mem0|sram_c|SRAM_DQ[15]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \mem0|write_s~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_DQ[15]~en_regout\);

-- Location: LCCOMB_X31_Y18_N20
\pro0|e0|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|Mux14~0_combout\ = (\pro0|c0|ir\(15) & (\pro0|c0|ir\(13) & (!\pro0|c0|ir\(12) & !\pro0|c0|ir\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(15),
	datab => \pro0|c0|ir\(13),
	datac => \pro0|c0|ir\(12),
	datad => \pro0|c0|ir\(14),
	combout => \pro0|e0|Mux14~0_combout\);

-- Location: LCCOMB_X32_Y18_N4
\pro0|e0|addr_m[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[1]~0_combout\ = (\pro0|c0|m|state~regout\) # ((\pro0|e0|Mux14~0_combout\ & (!\pro0|e0|Mux16~1_combout\ & !\pro0|e0|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|m|state~regout\,
	datab => \pro0|e0|Mux14~0_combout\,
	datac => \pro0|e0|Mux16~1_combout\,
	datad => \pro0|e0|Mux16~0_combout\,
	combout => \pro0|e0|addr_m[1]~0_combout\);

-- Location: LCCOMB_X33_Y20_N0
\pro0|e0|addr_m[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[1]~1_combout\ = (\pro0|c0|pc_s\(1) & !\pro0|e0|addr_m[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|c0|pc_s\(1),
	datad => \pro0|e0|addr_m[1]~0_combout\,
	combout => \pro0|e0|addr_m[1]~1_combout\);

-- Location: LCFF_X33_Y20_N1
\mem0|sram_c|SRAM_ADDR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|addr_m[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_ADDR\(0));

-- Location: LCCOMB_X33_Y20_N18
\pro0|e0|addr_m[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[2]~2_combout\ = (\pro0|c0|pc_s\(2) & !\pro0|e0|addr_m[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|pc_s\(2),
	datad => \pro0|e0|addr_m[1]~0_combout\,
	combout => \pro0|e0|addr_m[2]~2_combout\);

-- Location: LCFF_X33_Y20_N19
\mem0|sram_c|SRAM_ADDR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|addr_m[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_ADDR\(1));

-- Location: LCCOMB_X33_Y20_N12
\pro0|e0|addr_m[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[3]~3_combout\ = (\pro0|c0|pc_s\(3) & !\pro0|e0|addr_m[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|pc_s\(3),
	datad => \pro0|e0|addr_m[1]~0_combout\,
	combout => \pro0|e0|addr_m[3]~3_combout\);

-- Location: LCFF_X33_Y20_N13
\mem0|sram_c|SRAM_ADDR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|addr_m[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_ADDR\(2));

-- Location: LCFF_X33_Y18_N7
\pro0|c0|pc_s[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|pc_s[4]~27_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \pro0|c0|pc_s[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|pc_s\(4));

-- Location: LCCOMB_X33_Y20_N2
\pro0|e0|addr_m[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[4]~4_combout\ = (\pro0|c0|pc_s\(4) & !\pro0|e0|addr_m[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|c0|pc_s\(4),
	datad => \pro0|e0|addr_m[1]~0_combout\,
	combout => \pro0|e0|addr_m[4]~4_combout\);

-- Location: LCFF_X33_Y20_N3
\mem0|sram_c|SRAM_ADDR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|addr_m[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_ADDR\(3));

-- Location: LCCOMB_X33_Y20_N24
\pro0|e0|addr_m[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[5]~5_combout\ = (\pro0|c0|pc_s\(5) & !\pro0|e0|addr_m[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(5),
	datad => \pro0|e0|addr_m[1]~0_combout\,
	combout => \pro0|e0|addr_m[5]~5_combout\);

-- Location: LCFF_X33_Y20_N25
\mem0|sram_c|SRAM_ADDR[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|addr_m[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_ADDR\(4));

-- Location: LCCOMB_X33_Y20_N6
\pro0|e0|addr_m[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[6]~6_combout\ = (\pro0|c0|pc_s\(6) & !\pro0|e0|addr_m[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(6),
	datad => \pro0|e0|addr_m[1]~0_combout\,
	combout => \pro0|e0|addr_m[6]~6_combout\);

-- Location: LCFF_X33_Y20_N7
\mem0|sram_c|SRAM_ADDR[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|addr_m[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_ADDR\(5));

-- Location: LCCOMB_X33_Y20_N28
\pro0|e0|addr_m[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[7]~7_combout\ = (\pro0|c0|pc_s\(7) & !\pro0|e0|addr_m[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(7),
	datad => \pro0|e0|addr_m[1]~0_combout\,
	combout => \pro0|e0|addr_m[7]~7_combout\);

-- Location: LCFF_X33_Y20_N29
\mem0|sram_c|SRAM_ADDR[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|addr_m[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_ADDR\(6));

-- Location: LCCOMB_X33_Y20_N22
\pro0|e0|addr_m[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[8]~8_combout\ = (\pro0|c0|pc_s\(8) & !\pro0|e0|addr_m[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|c0|pc_s\(8),
	datad => \pro0|e0|addr_m[1]~0_combout\,
	combout => \pro0|e0|addr_m[8]~8_combout\);

-- Location: LCFF_X33_Y20_N23
\mem0|sram_c|SRAM_ADDR[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|addr_m[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_ADDR\(7));

-- Location: LCCOMB_X33_Y20_N16
\pro0|e0|addr_m[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[9]~9_combout\ = (\pro0|c0|pc_s\(9) & !\pro0|e0|addr_m[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(9),
	datad => \pro0|e0|addr_m[1]~0_combout\,
	combout => \pro0|e0|addr_m[9]~9_combout\);

-- Location: LCFF_X33_Y20_N17
\mem0|sram_c|SRAM_ADDR[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|addr_m[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_ADDR\(8));

-- Location: LCCOMB_X33_Y20_N30
\pro0|e0|addr_m[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[10]~10_combout\ = (\pro0|c0|pc_s\(10) & !\pro0|e0|addr_m[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|c0|pc_s\(10),
	datad => \pro0|e0|addr_m[1]~0_combout\,
	combout => \pro0|e0|addr_m[10]~10_combout\);

-- Location: LCFF_X33_Y20_N31
\mem0|sram_c|SRAM_ADDR[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|addr_m[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_ADDR\(9));

-- Location: LCFF_X33_Y18_N21
\pro0|c0|pc_s[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|pc_s[11]~41_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \pro0|c0|pc_s[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|pc_s\(11));

-- Location: LCCOMB_X33_Y20_N4
\pro0|e0|addr_m[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[11]~11_combout\ = (\pro0|c0|pc_s\(11) & !\pro0|e0|addr_m[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|c0|pc_s\(11),
	datad => \pro0|e0|addr_m[1]~0_combout\,
	combout => \pro0|e0|addr_m[11]~11_combout\);

-- Location: LCFF_X33_Y20_N5
\mem0|sram_c|SRAM_ADDR[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|addr_m[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_ADDR\(10));

-- Location: LCCOMB_X33_Y20_N26
\pro0|e0|addr_m[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[12]~12_combout\ = (\pro0|c0|pc_s\(12) & !\pro0|e0|addr_m[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|pc_s\(12),
	datad => \pro0|e0|addr_m[1]~0_combout\,
	combout => \pro0|e0|addr_m[12]~12_combout\);

-- Location: LCFF_X33_Y20_N27
\mem0|sram_c|SRAM_ADDR[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|addr_m[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_ADDR\(11));

-- Location: LCFF_X33_Y18_N25
\pro0|c0|pc_s[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|pc_s[13]~45_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \pro0|c0|pc_s[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|pc_s\(13));

-- Location: LCCOMB_X33_Y20_N20
\pro0|e0|addr_m[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[13]~13_combout\ = (\pro0|c0|pc_s\(13) & !\pro0|e0|addr_m[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|c0|pc_s\(13),
	datad => \pro0|e0|addr_m[1]~0_combout\,
	combout => \pro0|e0|addr_m[13]~13_combout\);

-- Location: LCFF_X33_Y20_N21
\mem0|sram_c|SRAM_ADDR[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|addr_m[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_ADDR\(12));

-- Location: LCCOMB_X33_Y20_N10
\pro0|e0|addr_m[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[14]~14_combout\ = (\pro0|c0|pc_s\(14) & !\pro0|e0|addr_m[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|c0|pc_s\(14),
	datad => \pro0|e0|addr_m[1]~0_combout\,
	combout => \pro0|e0|addr_m[14]~14_combout\);

-- Location: LCFF_X33_Y20_N11
\mem0|sram_c|SRAM_ADDR[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|addr_m[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_ADDR\(13));

-- Location: LCCOMB_X33_Y18_N28
\pro0|c0|pc_s[15]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|pc_s[15]~49_combout\ = \pro0|c0|pc_s[14]~48\ $ (!\pro0|c0|pc_s\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pro0|c0|pc_s\(15),
	cin => \pro0|c0|pc_s[14]~48\,
	combout => \pro0|c0|pc_s[15]~49_combout\);

-- Location: LCFF_X33_Y18_N29
\pro0|c0|pc_s[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_counter[2]~clkctrl_outclk\,
	datain => \pro0|c0|pc_s[15]~49_combout\,
	sdata => VCC,
	sload => \SW~combout\(9),
	ena => \pro0|c0|pc_s[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|c0|pc_s\(15));

-- Location: LCCOMB_X33_Y20_N8
\pro0|e0|addr_m[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[15]~15_combout\ = (\pro0|c0|pc_s\(15) & !\pro0|e0|addr_m[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|c0|pc_s\(15),
	datad => \pro0|e0|addr_m[1]~0_combout\,
	combout => \pro0|e0|addr_m[15]~15_combout\);

-- Location: LCFF_X33_Y20_N9
\mem0|sram_c|SRAM_ADDR[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \pro0|e0|addr_m[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_ADDR\(14));

-- Location: LCCOMB_X30_Y18_N8
\pro0|c0|c_l|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|c_l|Mux19~0_combout\ = (\pro0|c0|ir\(15) & (\pro0|c0|ir\(14) & (\pro0|c0|ir\(13) $ (\pro0|c0|ir\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|ir\(15),
	datab => \pro0|c0|ir\(13),
	datac => \pro0|c0|ir\(12),
	datad => \pro0|c0|ir\(14),
	combout => \pro0|c0|c_l|Mux19~0_combout\);

-- Location: LCCOMB_X32_Y18_N26
\pro0|c0|m|word_byte~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|c0|m|word_byte~0_combout\ = (\pro0|c0|m|state~regout\ & \pro0|c0|c_l|Mux19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|c0|m|state~regout\,
	datad => \pro0|c0|c_l|Mux19~0_combout\,
	combout => \pro0|c0|m|word_byte~0_combout\);

-- Location: LCCOMB_X30_Y1_N16
\mem0|sram_c|SRAM_OE_N~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sram_c|SRAM_OE_N~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mem0|sram_c|SRAM_OE_N~feeder_combout\);

-- Location: LCFF_X30_Y1_N17
\mem0|sram_c|SRAM_OE_N\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \mem0|sram_c|SRAM_OE_N~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_OE_N~regout\);

-- Location: LCFF_X31_Y26_N17
\mem0|sram_c|SRAM_WE_N\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \mem0|write_s~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sram_c|SRAM_WE_N~regout\);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[0]~I\ : cycloneii_io
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
	datain => \mem0|sram_c|SRAM_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(0));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[1]~I\ : cycloneii_io
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
	datain => \mem0|sram_c|SRAM_ADDR\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(1));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[2]~I\ : cycloneii_io
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
	datain => \mem0|sram_c|SRAM_ADDR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(2));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[3]~I\ : cycloneii_io
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
	datain => \mem0|sram_c|SRAM_ADDR\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(3));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[4]~I\ : cycloneii_io
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
	datain => \mem0|sram_c|SRAM_ADDR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(4));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[5]~I\ : cycloneii_io
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
	datain => \mem0|sram_c|SRAM_ADDR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(5));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[6]~I\ : cycloneii_io
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
	datain => \mem0|sram_c|SRAM_ADDR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(6));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[7]~I\ : cycloneii_io
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
	datain => \mem0|sram_c|SRAM_ADDR\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(7));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[8]~I\ : cycloneii_io
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
	datain => \mem0|sram_c|SRAM_ADDR\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(8));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[9]~I\ : cycloneii_io
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
	datain => \mem0|sram_c|SRAM_ADDR\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(9));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[10]~I\ : cycloneii_io
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
	datain => \mem0|sram_c|SRAM_ADDR\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(10));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[11]~I\ : cycloneii_io
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
	datain => \mem0|sram_c|SRAM_ADDR\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(11));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[12]~I\ : cycloneii_io
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
	datain => \mem0|sram_c|SRAM_ADDR\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(12));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[13]~I\ : cycloneii_io
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
	datain => \mem0|sram_c|SRAM_ADDR\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(13));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[14]~I\ : cycloneii_io
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
	datain => \mem0|sram_c|SRAM_ADDR\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(14));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[15]~I\ : cycloneii_io
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
	padio => ww_SRAM_ADDR(15));

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[16]~I\ : cycloneii_io
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
	padio => ww_SRAM_ADDR(16));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[17]~I\ : cycloneii_io
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
	padio => ww_SRAM_ADDR(17));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_UB_N~I\ : cycloneii_io
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
	padio => ww_SRAM_UB_N);

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_LB_N~I\ : cycloneii_io
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
	datain => \pro0|c0|m|word_byte~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_LB_N);

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_CE_N~I\ : cycloneii_io
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
	padio => ww_SRAM_CE_N);

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_OE_N~I\ : cycloneii_io
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
	datain => \mem0|sram_c|ALT_INV_SRAM_OE_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_OE_N);

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_WE_N~I\ : cycloneii_io
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
	datain => \mem0|sram_c|ALT_INV_SRAM_WE_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_WE_N);
END structure;


