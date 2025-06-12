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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "11/30/2023 10:00:08"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab6 IS
    PORT (
	NEGOUT : OUT std_logic;
	clock : IN std_logic;
	Reset_A : IN std_logic;
	A : IN std_logic_vector(0 TO 7);
	Reset_B : IN std_logic;
	b : IN std_logic_vector(0 TO 7);
	Enable_Decoder : IN std_logic;
	data_in : IN std_logic;
	FSM_reset : IN std_logic;
	AOUT : OUT std_logic_vector(3 DOWNTO 0);
	BOUT : OUT std_logic_vector(3 DOWNTO 0);
	pin_name1 : OUT std_logic_vector(0 TO 6);
	pin_name2 : OUT std_logic_vector(0 TO 6);
	R_First_Four : OUT std_logic_vector(0 TO 6);
	R_Last_Four : OUT std_logic_vector(0 TO 6);
	Sign : OUT std_logic_vector(0 TO 6);
	student_id : OUT std_logic_vector(0 TO 6)
	);
END Lab6;

-- Design Ports Information
-- NEGOUT	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AOUT[3]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AOUT[2]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AOUT[1]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AOUT[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BOUT[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BOUT[2]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BOUT[1]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BOUT[0]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name1[0]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name1[1]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name1[2]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name1[3]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name1[4]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name1[5]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name1[6]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name2[0]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name2[1]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name2[2]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name2[3]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name2[4]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name2[5]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name2[6]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_First_Four[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_First_Four[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_First_Four[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_First_Four[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_First_Four[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_First_Four[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_First_Four[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Last_Four[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Last_Four[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Last_Four[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Last_Four[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Last_Four[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Last_Four[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Last_Four[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Enable_Decoder	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_reset	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_A	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_B	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[7]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Lab6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_NEGOUT : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_Reset_A : std_logic;
SIGNAL ww_A : std_logic_vector(0 TO 7);
SIGNAL ww_Reset_B : std_logic;
SIGNAL ww_b : std_logic_vector(0 TO 7);
SIGNAL ww_Enable_Decoder : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_FSM_reset : std_logic;
SIGNAL ww_AOUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BOUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pin_name1 : std_logic_vector(0 TO 6);
SIGNAL ww_pin_name2 : std_logic_vector(0 TO 6);
SIGNAL ww_R_First_Four : std_logic_vector(0 TO 6);
SIGNAL ww_R_Last_Four : std_logic_vector(0 TO 6);
SIGNAL ww_Sign : std_logic_vector(0 TO 6);
SIGNAL ww_student_id : std_logic_vector(0 TO 6);
SIGNAL \Reset_A~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_B~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSM_reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|Add1~4_combout\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add1~9\ : std_logic;
SIGNAL \inst1|Add1~10_combout\ : std_logic;
SIGNAL \inst1|Add1~11\ : std_logic;
SIGNAL \inst1|Add1~12_combout\ : std_logic;
SIGNAL \inst1|Add1~13\ : std_logic;
SIGNAL \inst1|Add1~14_combout\ : std_logic;
SIGNAL \inst1|Add2~8_combout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|Selector6~0_combout\ : std_logic;
SIGNAL \inst1|Selector6~1_combout\ : std_logic;
SIGNAL \inst1|Selector7~7_combout\ : std_logic;
SIGNAL \inst1|Selector1~4_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \Reset_A~combout\ : std_logic;
SIGNAL \Reset_A~clkctrl_outclk\ : std_logic;
SIGNAL \Reset_B~combout\ : std_logic;
SIGNAL \Reset_B~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|LessThan0~1_cout\ : std_logic;
SIGNAL \inst1|LessThan0~3_cout\ : std_logic;
SIGNAL \inst1|LessThan0~5_cout\ : std_logic;
SIGNAL \inst1|LessThan0~7_cout\ : std_logic;
SIGNAL \inst1|LessThan0~9_cout\ : std_logic;
SIGNAL \inst1|LessThan0~11_cout\ : std_logic;
SIGNAL \inst1|LessThan0~13_cout\ : std_logic;
SIGNAL \inst1|LessThan0~14_combout\ : std_logic;
SIGNAL \data_in~combout\ : std_logic;
SIGNAL \FSM_reset~combout\ : std_logic;
SIGNAL \FSM_reset~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|yfsm.s4~regout\ : std_logic;
SIGNAL \inst2|yfsm.s5~regout\ : std_logic;
SIGNAL \inst2|yfsm.s6~regout\ : std_logic;
SIGNAL \inst2|yfsm.s7~regout\ : std_logic;
SIGNAL \inst2|Selector12~0_combout\ : std_logic;
SIGNAL \inst2|yfsm.s8~regout\ : std_logic;
SIGNAL \inst2|yfsm.s0~0_combout\ : std_logic;
SIGNAL \inst2|yfsm.s0~regout\ : std_logic;
SIGNAL \inst2|yfsm.s1~0_combout\ : std_logic;
SIGNAL \inst2|yfsm.s1~regout\ : std_logic;
SIGNAL \inst2|yfsm.s2~regout\ : std_logic;
SIGNAL \inst2|yfsm.s3~regout\ : std_logic;
SIGNAL \inst2|Selector3~1_combout\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|Selector3~2_combout\ : std_logic;
SIGNAL \inst1|Selector0~1_combout\ : std_logic;
SIGNAL \inst1|NEG~regout\ : std_logic;
SIGNAL \Enable_Decoder~combout\ : std_logic;
SIGNAL \inst2|Selector2~1_combout\ : std_logic;
SIGNAL \inst2|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|Selector2~2_combout\ : std_logic;
SIGNAL \inst1|Selector8~2_combout\ : std_logic;
SIGNAL \inst1|RESULT[4]~3_combout\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|Selector1~1_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Selector5~2_combout\ : std_logic;
SIGNAL \inst1|Selector5~3_combout\ : std_logic;
SIGNAL \inst1|RESULT[4]~2_combout\ : std_logic;
SIGNAL \inst1|Add1~1\ : std_logic;
SIGNAL \inst1|Add1~3\ : std_logic;
SIGNAL \inst1|Add1~5\ : std_logic;
SIGNAL \inst1|Add1~6_combout\ : std_logic;
SIGNAL \inst1|Add2~1\ : std_logic;
SIGNAL \inst1|Add2~3\ : std_logic;
SIGNAL \inst1|Add2~5\ : std_logic;
SIGNAL \inst1|Add2~6_combout\ : std_logic;
SIGNAL \inst1|Selector5~0_combout\ : std_logic;
SIGNAL \inst1|RESULT[4]~1_combout\ : std_logic;
SIGNAL \inst1|Selector5~1_combout\ : std_logic;
SIGNAL \inst1|Selector5~4_combout\ : std_logic;
SIGNAL \inst1|Selector5~5_combout\ : std_logic;
SIGNAL \inst1|Selector5~6_combout\ : std_logic;
SIGNAL \inst1|RESULT[4]~0_combout\ : std_logic;
SIGNAL \inst1|Selector6~4_combout\ : std_logic;
SIGNAL \inst1|Add2~4_combout\ : std_logic;
SIGNAL \inst1|Selector6~2_combout\ : std_logic;
SIGNAL \inst1|Selector6~3_combout\ : std_logic;
SIGNAL \inst1|Selector6~5_combout\ : std_logic;
SIGNAL \inst1|Selector6~6_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Selector7~9_combout\ : std_logic;
SIGNAL \inst1|Selector7~10_combout\ : std_logic;
SIGNAL \inst1|Selector7~14_combout\ : std_logic;
SIGNAL \inst1|Add2~2_combout\ : std_logic;
SIGNAL \inst1|Selector7~6_combout\ : std_logic;
SIGNAL \inst1|Add1~2_combout\ : std_logic;
SIGNAL \inst1|Selector7~12_combout\ : std_logic;
SIGNAL \inst1|Selector7~13_combout\ : std_logic;
SIGNAL \inst1|Selector7~8_combout\ : std_logic;
SIGNAL \inst1|Selector7~11_combout\ : std_logic;
SIGNAL \inst1|Selector8~5_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Selector8~6_combout\ : std_logic;
SIGNAL \inst1|Selector8~7_combout\ : std_logic;
SIGNAL \inst1|Selector8~4_combout\ : std_logic;
SIGNAL \inst1|Add2~0_combout\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|Selector8~3_combout\ : std_logic;
SIGNAL \inst1|Selector8~9_combout\ : std_logic;
SIGNAL \inst1|Selector8~8_combout\ : std_logic;
SIGNAL \inst1|Add2~7\ : std_logic;
SIGNAL \inst1|Add2~9\ : std_logic;
SIGNAL \inst1|Add2~11\ : std_logic;
SIGNAL \inst1|Add2~13\ : std_logic;
SIGNAL \inst1|Add2~14_combout\ : std_logic;
SIGNAL \inst1|Selector1~2_combout\ : std_logic;
SIGNAL \inst1|Selector1~3_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|Selector1~1_combout\ : std_logic;
SIGNAL \inst1|Selector1~5_combout\ : std_logic;
SIGNAL \inst1|Selector1~6_combout\ : std_logic;
SIGNAL \inst1|Selector2~11_combout\ : std_logic;
SIGNAL \inst1|Selector2~8_combout\ : std_logic;
SIGNAL \inst1|Selector2~4_combout\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Selector2~5_combout\ : std_logic;
SIGNAL \inst1|Selector2~6_combout\ : std_logic;
SIGNAL \inst1|Add2~12_combout\ : std_logic;
SIGNAL \inst1|Selector2~7_combout\ : std_logic;
SIGNAL \inst1|Selector2~10_combout\ : std_logic;
SIGNAL \inst1|Selector2~9_combout\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|Selector3~1_combout\ : std_logic;
SIGNAL \inst1|Selector3~4_combout\ : std_logic;
SIGNAL \inst1|Add2~10_combout\ : std_logic;
SIGNAL \inst1|Selector3~2_combout\ : std_logic;
SIGNAL \inst1|Selector3~3_combout\ : std_logic;
SIGNAL \inst1|Selector3~5_combout\ : std_logic;
SIGNAL \inst1|Selector3~6_combout\ : std_logic;
SIGNAL \inst1|Selector4~11_combout\ : std_logic;
SIGNAL \inst1|Selector4~8_combout\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Selector4~4_combout\ : std_logic;
SIGNAL \inst1|Selector4~5_combout\ : std_logic;
SIGNAL \inst1|Selector4~6_combout\ : std_logic;
SIGNAL \inst1|Add1~7\ : std_logic;
SIGNAL \inst1|Add1~8_combout\ : std_logic;
SIGNAL \inst1|Selector4~7_combout\ : std_logic;
SIGNAL \inst1|Selector4~10_combout\ : std_logic;
SIGNAL \inst1|Selector4~9_combout\ : std_logic;
SIGNAL \inst13|Mux0~0_combout\ : std_logic;
SIGNAL \inst13|Mux1~0_combout\ : std_logic;
SIGNAL \inst13|Mux2~0_combout\ : std_logic;
SIGNAL \inst13|Mux3~0_combout\ : std_logic;
SIGNAL \inst13|Mux4~0_combout\ : std_logic;
SIGNAL \inst13|Mux5~0_combout\ : std_logic;
SIGNAL \inst13|Mux6~0_combout\ : std_logic;
SIGNAL \inst15|Mux0~0_combout\ : std_logic;
SIGNAL \inst15|Mux1~0_combout\ : std_logic;
SIGNAL \inst15|Mux2~0_combout\ : std_logic;
SIGNAL \inst15|Mux3~0_combout\ : std_logic;
SIGNAL \inst15|Mux4~0_combout\ : std_logic;
SIGNAL \inst15|Mux5~0_combout\ : std_logic;
SIGNAL \inst15|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|WideOr14~combout\ : std_logic;
SIGNAL \inst2|WideOr13~combout\ : std_logic;
SIGNAL \inst2|WideOr15~combout\ : std_logic;
SIGNAL \inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|Mux6~4_combout\ : std_logic;
SIGNAL \inst8|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|RESULT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|current_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(0 TO 7);
SIGNAL \A~combout\ : std_logic_vector(0 TO 7);
SIGNAL \ALT_INV_FSM_reset~combout\ : std_logic;
SIGNAL \ALT_INV_Enable_Decoder~combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst15|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_NEG~regout\ : std_logic;
SIGNAL \ALT_INV_Reset_B~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Reset_A~clkctrl_outclk\ : std_logic;

BEGIN

NEGOUT <= ww_NEGOUT;
ww_clock <= clock;
ww_Reset_A <= Reset_A;
ww_A <= A;
ww_Reset_B <= Reset_B;
ww_b <= b;
ww_Enable_Decoder <= Enable_Decoder;
ww_data_in <= data_in;
ww_FSM_reset <= FSM_reset;
AOUT <= ww_AOUT;
BOUT <= ww_BOUT;
pin_name1 <= ww_pin_name1;
pin_name2 <= ww_pin_name2;
R_First_Four <= ww_R_First_Four;
R_Last_Four <= ww_R_Last_Four;
Sign <= ww_Sign;
student_id <= ww_student_id;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset_A~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_A~combout\);

\Reset_B~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_B~combout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\FSM_reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \FSM_reset~combout\);
\ALT_INV_FSM_reset~combout\ <= NOT \FSM_reset~combout\;
\ALT_INV_Enable_Decoder~combout\ <= NOT \Enable_Decoder~combout\;
\inst6|ALT_INV_Mux3~0_combout\ <= NOT \inst6|Mux3~0_combout\;
\inst6|ALT_INV_Mux0~0_combout\ <= NOT \inst6|Mux0~0_combout\;
\inst15|ALT_INV_Mux6~0_combout\ <= NOT \inst15|Mux6~0_combout\;
\inst13|ALT_INV_Mux6~0_combout\ <= NOT \inst13|Mux6~0_combout\;
\inst1|ALT_INV_NEG~regout\ <= NOT \inst1|NEG~regout\;
\ALT_INV_Reset_B~clkctrl_outclk\ <= NOT \Reset_B~clkctrl_outclk\;
\ALT_INV_Reset_A~clkctrl_outclk\ <= NOT \Reset_A~clkctrl_outclk\;

-- Location: LCCOMB_X35_Y15_N10
\inst1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add1~4_combout\ = ((\inst|Q\(2) $ (\inst8|Q\(2) $ (\inst1|Add1~3\)))) # (GND)
-- \inst1|Add1~5\ = CARRY((\inst|Q\(2) & ((!\inst1|Add1~3\) # (!\inst8|Q\(2)))) # (!\inst|Q\(2) & (!\inst8|Q\(2) & !\inst1|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(2),
	datab => \inst8|Q\(2),
	datad => VCC,
	cin => \inst1|Add1~3\,
	combout => \inst1|Add1~4_combout\,
	cout => \inst1|Add1~5\);

-- Location: LCCOMB_X36_Y15_N20
\inst1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = ((\inst8|Q\(2) $ (\inst|Q\(2) $ (!\inst1|Add0~3\)))) # (GND)
-- \inst1|Add0~5\ = CARRY((\inst8|Q\(2) & ((\inst|Q\(2)) # (!\inst1|Add0~3\))) # (!\inst8|Q\(2) & (\inst|Q\(2) & !\inst1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(2),
	datab => \inst|Q\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X35_Y15_N14
\inst1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add1~8_combout\ = ((\inst8|Q\(4) $ (\inst|Q\(4) $ (\inst1|Add1~7\)))) # (GND)
-- \inst1|Add1~9\ = CARRY((\inst8|Q\(4) & (\inst|Q\(4) & !\inst1|Add1~7\)) # (!\inst8|Q\(4) & ((\inst|Q\(4)) # (!\inst1|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(4),
	datab => \inst|Q\(4),
	datad => VCC,
	cin => \inst1|Add1~7\,
	combout => \inst1|Add1~8_combout\,
	cout => \inst1|Add1~9\);

-- Location: LCCOMB_X35_Y15_N16
\inst1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add1~10_combout\ = (\inst8|Q\(5) & ((\inst|Q\(5) & (!\inst1|Add1~9\)) # (!\inst|Q\(5) & ((\inst1|Add1~9\) # (GND))))) # (!\inst8|Q\(5) & ((\inst|Q\(5) & (\inst1|Add1~9\ & VCC)) # (!\inst|Q\(5) & (!\inst1|Add1~9\))))
-- \inst1|Add1~11\ = CARRY((\inst8|Q\(5) & ((!\inst1|Add1~9\) # (!\inst|Q\(5)))) # (!\inst8|Q\(5) & (!\inst|Q\(5) & !\inst1|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(5),
	datab => \inst|Q\(5),
	datad => VCC,
	cin => \inst1|Add1~9\,
	combout => \inst1|Add1~10_combout\,
	cout => \inst1|Add1~11\);

-- Location: LCCOMB_X35_Y15_N18
\inst1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add1~12_combout\ = ((\inst|Q\(6) $ (\inst8|Q\(6) $ (\inst1|Add1~11\)))) # (GND)
-- \inst1|Add1~13\ = CARRY((\inst|Q\(6) & ((!\inst1|Add1~11\) # (!\inst8|Q\(6)))) # (!\inst|Q\(6) & (!\inst8|Q\(6) & !\inst1|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(6),
	datab => \inst8|Q\(6),
	datad => VCC,
	cin => \inst1|Add1~11\,
	combout => \inst1|Add1~12_combout\,
	cout => \inst1|Add1~13\);

-- Location: LCCOMB_X35_Y15_N20
\inst1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add1~14_combout\ = \inst|Q\(7) $ (\inst1|Add1~13\ $ (!\inst8|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(7),
	datad => \inst8|Q\(7),
	cin => \inst1|Add1~13\,
	combout => \inst1|Add1~14_combout\);

-- Location: LCCOMB_X37_Y15_N20
\inst1|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~8_combout\ = ((\inst8|Q\(4) $ (\inst|Q\(4) $ (\inst1|Add2~7\)))) # (GND)
-- \inst1|Add2~9\ = CARRY((\inst8|Q\(4) & ((!\inst1|Add2~7\) # (!\inst|Q\(4)))) # (!\inst8|Q\(4) & (!\inst|Q\(4) & !\inst1|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(4),
	datab => \inst|Q\(4),
	datad => VCC,
	cin => \inst1|Add2~7\,
	combout => \inst1|Add2~8_combout\,
	cout => \inst1|Add2~9\);

-- Location: LCCOMB_X37_Y14_N6
\inst1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = (!\inst2|current_state\(1) & (!\inst2|current_state\(3) & (\Enable_Decoder~combout\ & !\inst2|current_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(1),
	datab => \inst2|current_state\(3),
	datac => \Enable_Decoder~combout\,
	datad => \inst2|current_state\(2),
	combout => \inst1|Selector0~0_combout\);

-- Location: LCCOMB_X38_Y15_N28
\inst1|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~0_combout\ = (\inst2|current_state\(2) & (\inst8|Q\(2))) # (!\inst2|current_state\(2) & ((\inst1|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(2),
	datac => \inst2|current_state\(2),
	datad => \inst1|Add0~4_combout\,
	combout => \inst1|Selector6~0_combout\);

-- Location: LCCOMB_X38_Y15_N6
\inst1|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~1_combout\ = (\inst2|current_state\(1) & (\inst|Q\(2) $ (((\inst1|Selector6~0_combout\) # (!\inst2|current_state\(2)))))) # (!\inst2|current_state\(1) & ((\inst2|current_state\(2) & (!\inst|Q\(2) & !\inst1|Selector6~0_combout\)) # 
-- (!\inst2|current_state\(2) & ((\inst1|Selector6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(2),
	datab => \inst2|current_state\(1),
	datac => \inst|Q\(2),
	datad => \inst1|Selector6~0_combout\,
	combout => \inst1|Selector6~1_combout\);

-- Location: LCCOMB_X37_Y14_N10
\inst1|Selector7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector7~7_combout\ = (!\inst1|RESULT[4]~3_combout\ & ((\inst1|Selector7~6_combout\) # (!\inst1|RESULT[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|RESULT[4]~3_combout\,
	datac => \inst1|Selector7~6_combout\,
	datad => \inst1|RESULT[4]~0_combout\,
	combout => \inst1|Selector7~7_combout\);

-- Location: LCCOMB_X38_Y15_N24
\inst1|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector1~4_combout\ = (\inst1|RESULT[4]~0_combout\ & ((\inst|Q\(7) & (!\inst8|Q\(7) & !\inst1|RESULT[4]~2_combout\)) # (!\inst|Q\(7) & (\inst8|Q\(7) $ (\inst1|RESULT[4]~2_combout\))))) # (!\inst1|RESULT[4]~0_combout\ & 
-- (((\inst1|RESULT[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(7),
	datab => \inst8|Q\(7),
	datac => \inst1|RESULT[4]~0_combout\,
	datad => \inst1|RESULT[4]~2_combout\,
	combout => \inst1|Selector1~4_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G6
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
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
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_A~I\ : cycloneii_io
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
	padio => ww_Reset_A,
	combout => \Reset_A~combout\);

-- Location: CLKCTRL_G2
\Reset_A~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_A~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_A~clkctrl_outclk\);

-- Location: LCFF_X36_Y15_N15
\inst|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(0),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(7));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
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
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_B~I\ : cycloneii_io
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
	padio => ww_Reset_B,
	combout => \Reset_B~combout\);

-- Location: CLKCTRL_G11
\Reset_B~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_B~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_B~clkctrl_outclk\);

-- Location: LCFF_X36_Y15_N29
\inst8|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \b~combout\(1),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Q\(6));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
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
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCFF_X36_Y15_N27
\inst8|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \b~combout\(2),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Q\(5));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
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
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LCFF_X36_Y15_N31
\inst8|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \b~combout\(3),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Q\(4));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
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
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LCFF_X36_Y15_N23
\inst8|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \b~combout\(4),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Q\(3));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
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
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCFF_X36_Y15_N5
\inst|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(5),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(2));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : cycloneii_io
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
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: LCFF_X36_Y15_N19
\inst8|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \b~combout\(6),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Q\(1));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
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
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LCFF_X36_Y15_N1
\inst|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(7),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(0));

-- Location: LCCOMB_X36_Y15_N0
\inst1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_cout\ = CARRY((\inst8|Q\(0) & !\inst|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(0),
	datab => \inst|Q\(0),
	datad => VCC,
	cout => \inst1|LessThan0~1_cout\);

-- Location: LCCOMB_X36_Y15_N2
\inst1|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_cout\ = CARRY((\inst|Q\(1) & ((!\inst1|LessThan0~1_cout\) # (!\inst8|Q\(1)))) # (!\inst|Q\(1) & (!\inst8|Q\(1) & !\inst1|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst8|Q\(1),
	datad => VCC,
	cin => \inst1|LessThan0~1_cout\,
	cout => \inst1|LessThan0~3_cout\);

-- Location: LCCOMB_X36_Y15_N4
\inst1|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~5_cout\ = CARRY((\inst8|Q\(2) & ((!\inst1|LessThan0~3_cout\) # (!\inst|Q\(2)))) # (!\inst8|Q\(2) & (!\inst|Q\(2) & !\inst1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(2),
	datab => \inst|Q\(2),
	datad => VCC,
	cin => \inst1|LessThan0~3_cout\,
	cout => \inst1|LessThan0~5_cout\);

-- Location: LCCOMB_X36_Y15_N6
\inst1|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~7_cout\ = CARRY((\inst|Q\(3) & ((!\inst1|LessThan0~5_cout\) # (!\inst8|Q\(3)))) # (!\inst|Q\(3) & (!\inst8|Q\(3) & !\inst1|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst8|Q\(3),
	datad => VCC,
	cin => \inst1|LessThan0~5_cout\,
	cout => \inst1|LessThan0~7_cout\);

-- Location: LCCOMB_X36_Y15_N8
\inst1|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~9_cout\ = CARRY((\inst|Q\(4) & (\inst8|Q\(4) & !\inst1|LessThan0~7_cout\)) # (!\inst|Q\(4) & ((\inst8|Q\(4)) # (!\inst1|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datab => \inst8|Q\(4),
	datad => VCC,
	cin => \inst1|LessThan0~7_cout\,
	cout => \inst1|LessThan0~9_cout\);

-- Location: LCCOMB_X36_Y15_N10
\inst1|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~11_cout\ = CARRY((\inst|Q\(5) & ((!\inst1|LessThan0~9_cout\) # (!\inst8|Q\(5)))) # (!\inst|Q\(5) & (!\inst8|Q\(5) & !\inst1|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datab => \inst8|Q\(5),
	datad => VCC,
	cin => \inst1|LessThan0~9_cout\,
	cout => \inst1|LessThan0~11_cout\);

-- Location: LCCOMB_X36_Y15_N12
\inst1|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~13_cout\ = CARRY((\inst|Q\(6) & (\inst8|Q\(6) & !\inst1|LessThan0~11_cout\)) # (!\inst|Q\(6) & ((\inst8|Q\(6)) # (!\inst1|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(6),
	datab => \inst8|Q\(6),
	datad => VCC,
	cin => \inst1|LessThan0~11_cout\,
	cout => \inst1|LessThan0~13_cout\);

-- Location: LCCOMB_X36_Y15_N14
\inst1|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~14_combout\ = (\inst8|Q\(7) & ((\inst1|LessThan0~13_cout\) # (!\inst|Q\(7)))) # (!\inst8|Q\(7) & (!\inst|Q\(7) & \inst1|LessThan0~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(7),
	datab => \inst|Q\(7),
	cin => \inst1|LessThan0~13_cout\,
	combout => \inst1|LessThan0~14_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in~I\ : cycloneii_io
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
	padio => ww_data_in,
	combout => \data_in~combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_reset~I\ : cycloneii_io
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
	padio => ww_FSM_reset,
	combout => \FSM_reset~combout\);

-- Location: CLKCTRL_G5
\FSM_reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FSM_reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FSM_reset~clkctrl_outclk\);

-- Location: LCFF_X36_Y14_N19
\inst2|yfsm.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst2|yfsm.s3~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|yfsm.s4~regout\);

-- Location: LCFF_X36_Y14_N11
\inst2|yfsm.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst2|yfsm.s4~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|yfsm.s5~regout\);

-- Location: LCFF_X36_Y14_N23
\inst2|yfsm.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst2|yfsm.s5~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|yfsm.s6~regout\);

-- Location: LCFF_X36_Y14_N7
\inst2|yfsm.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst2|yfsm.s6~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|yfsm.s7~regout\);

-- Location: LCCOMB_X36_Y14_N16
\inst2|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector12~0_combout\ = (\data_in~combout\ & ((\inst2|yfsm.s7~regout\))) # (!\data_in~combout\ & (\inst2|yfsm.s8~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|yfsm.s8~regout\,
	datac => \data_in~combout\,
	datad => \inst2|yfsm.s7~regout\,
	combout => \inst2|Selector12~0_combout\);

-- Location: LCFF_X36_Y14_N31
\inst2|yfsm.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst2|Selector12~0_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|yfsm.s8~regout\);

-- Location: LCCOMB_X36_Y14_N26
\inst2|yfsm.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|yfsm.s0~0_combout\ = !\inst2|yfsm.s8~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|yfsm.s8~regout\,
	combout => \inst2|yfsm.s0~0_combout\);

-- Location: LCFF_X36_Y14_N27
\inst2|yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst2|yfsm.s0~0_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|yfsm.s0~regout\);

-- Location: LCCOMB_X36_Y14_N2
\inst2|yfsm.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|yfsm.s1~0_combout\ = !\inst2|yfsm.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|yfsm.s0~regout\,
	combout => \inst2|yfsm.s1~0_combout\);

-- Location: LCFF_X36_Y14_N3
\inst2|yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst2|yfsm.s1~0_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|yfsm.s1~regout\);

-- Location: LCFF_X36_Y14_N9
\inst2|yfsm.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst2|yfsm.s1~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|yfsm.s2~regout\);

-- Location: LCFF_X36_Y14_N5
\inst2|yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst2|yfsm.s2~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|yfsm.s3~regout\);

-- Location: LCCOMB_X36_Y14_N6
\inst2|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~1_combout\ = (\inst2|yfsm.s5~regout\) # ((\inst2|yfsm.s3~regout\) # ((\inst2|yfsm.s7~regout\) # (\inst2|yfsm.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|yfsm.s5~regout\,
	datab => \inst2|yfsm.s3~regout\,
	datac => \inst2|yfsm.s7~regout\,
	datad => \inst2|yfsm.s1~regout\,
	combout => \inst2|Selector3~1_combout\);

-- Location: LCCOMB_X36_Y14_N18
\inst2|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = (\inst2|yfsm.s6~regout\) # ((\inst2|yfsm.s2~regout\) # ((\inst2|yfsm.s4~regout\) # (!\inst2|yfsm.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|yfsm.s6~regout\,
	datab => \inst2|yfsm.s2~regout\,
	datac => \inst2|yfsm.s4~regout\,
	datad => \inst2|yfsm.s0~regout\,
	combout => \inst2|Selector3~0_combout\);

-- Location: LCCOMB_X36_Y14_N24
\inst2|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~2_combout\ = (\data_in~combout\ & ((\inst2|Selector3~0_combout\))) # (!\data_in~combout\ & (\inst2|Selector3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\,
	datac => \inst2|Selector3~1_combout\,
	datad => \inst2|Selector3~0_combout\,
	combout => \inst2|Selector3~2_combout\);

-- Location: LCFF_X37_Y15_N11
\inst2|current_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst2|Selector3~2_combout\,
	sload => VCC,
	ena => \ALT_INV_FSM_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|current_state\(0));

-- Location: LCCOMB_X37_Y14_N22
\inst1|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector0~1_combout\ = (\inst1|Selector0~0_combout\ & (\inst1|LessThan0~14_combout\ & ((\inst2|current_state\(0))))) # (!\inst1|Selector0~0_combout\ & (((\inst1|NEG~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector0~0_combout\,
	datab => \inst1|LessThan0~14_combout\,
	datac => \inst1|NEG~regout\,
	datad => \inst2|current_state\(0),
	combout => \inst1|Selector0~1_combout\);

-- Location: LCFF_X37_Y14_N23
\inst1|NEG\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|NEG~regout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Enable_Decoder~I\ : cycloneii_io
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
	padio => ww_Enable_Decoder,
	combout => \Enable_Decoder~combout\);

-- Location: LCCOMB_X36_Y14_N4
\inst2|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~1_combout\ = (\inst2|yfsm.s6~regout\) # ((!\data_in~combout\ & ((\inst2|yfsm.s7~regout\) # (\inst2|yfsm.s3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|yfsm.s7~regout\,
	datab => \data_in~combout\,
	datac => \inst2|yfsm.s3~regout\,
	datad => \inst2|yfsm.s6~regout\,
	combout => \inst2|Selector2~1_combout\);

-- Location: LCCOMB_X36_Y14_N8
\inst2|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = (\inst2|yfsm.s2~regout\) # ((\data_in~combout\ & ((\inst2|yfsm.s5~regout\) # (\inst2|yfsm.s1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\,
	datab => \inst2|yfsm.s5~regout\,
	datac => \inst2|yfsm.s2~regout\,
	datad => \inst2|yfsm.s1~regout\,
	combout => \inst2|Selector2~0_combout\);

-- Location: LCCOMB_X37_Y14_N26
\inst2|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~2_combout\ = (\inst2|Selector2~1_combout\) # (\inst2|Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Selector2~1_combout\,
	datad => \inst2|Selector2~0_combout\,
	combout => \inst2|Selector2~2_combout\);

-- Location: LCFF_X37_Y15_N29
\inst2|current_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst2|Selector2~2_combout\,
	sload => VCC,
	ena => \ALT_INV_FSM_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|current_state\(1));

-- Location: LCCOMB_X38_Y15_N18
\inst1|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector8~2_combout\ = (!\inst2|current_state\(2) & !\inst2|current_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(2),
	datad => \inst2|current_state\(1),
	combout => \inst1|Selector8~2_combout\);

-- Location: LCCOMB_X37_Y14_N0
\inst1|RESULT[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|RESULT[4]~3_combout\ = ((\inst2|current_state\(3) & ((\inst2|current_state\(0)) # (!\inst1|Selector8~2_combout\)))) # (!\Enable_Decoder~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(3),
	datab => \inst2|current_state\(0),
	datac => \Enable_Decoder~combout\,
	datad => \inst1|Selector8~2_combout\,
	combout => \inst1|RESULT[4]~3_combout\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
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
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCFF_X36_Y15_N7
\inst|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(4),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(3));

-- Location: LCCOMB_X36_Y14_N10
\inst2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (\inst2|yfsm.s5~regout\) # ((\data_in~combout\ & ((\inst2|yfsm.s3~regout\))) # (!\data_in~combout\ & (\inst2|yfsm.s7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|yfsm.s7~regout\,
	datab => \inst2|yfsm.s3~regout\,
	datac => \inst2|yfsm.s5~regout\,
	datad => \data_in~combout\,
	combout => \inst2|Selector1~0_combout\);

-- Location: LCCOMB_X36_Y14_N30
\inst2|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~1_combout\ = (\inst2|yfsm.s4~regout\) # ((\inst2|yfsm.s6~regout\) # (\inst2|Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|yfsm.s4~regout\,
	datab => \inst2|yfsm.s6~regout\,
	datad => \inst2|Selector1~0_combout\,
	combout => \inst2|Selector1~1_combout\);

-- Location: LCFF_X37_Y15_N31
\inst2|current_state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst2|Selector1~1_combout\,
	sload => VCC,
	ena => \ALT_INV_FSM_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|current_state\(2));

-- Location: LCCOMB_X36_Y15_N16
\inst1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = (\inst8|Q\(0) & (\inst|Q\(0) $ (VCC))) # (!\inst8|Q\(0) & (\inst|Q\(0) & VCC))
-- \inst1|Add0~1\ = CARRY((\inst8|Q\(0) & \inst|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(0),
	datab => \inst|Q\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X36_Y15_N18
\inst1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst|Q\(1) & ((\inst8|Q\(1) & (\inst1|Add0~1\ & VCC)) # (!\inst8|Q\(1) & (!\inst1|Add0~1\)))) # (!\inst|Q\(1) & ((\inst8|Q\(1) & (!\inst1|Add0~1\)) # (!\inst8|Q\(1) & ((\inst1|Add0~1\) # (GND)))))
-- \inst1|Add0~3\ = CARRY((\inst|Q\(1) & (!\inst8|Q\(1) & !\inst1|Add0~1\)) # (!\inst|Q\(1) & ((!\inst1|Add0~1\) # (!\inst8|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst8|Q\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X36_Y15_N22
\inst1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst|Q\(3) & ((\inst8|Q\(3) & (\inst1|Add0~5\ & VCC)) # (!\inst8|Q\(3) & (!\inst1|Add0~5\)))) # (!\inst|Q\(3) & ((\inst8|Q\(3) & (!\inst1|Add0~5\)) # (!\inst8|Q\(3) & ((\inst1|Add0~5\) # (GND)))))
-- \inst1|Add0~7\ = CARRY((\inst|Q\(3) & (!\inst8|Q\(3) & !\inst1|Add0~5\)) # (!\inst|Q\(3) & ((!\inst1|Add0~5\) # (!\inst8|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst8|Q\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X37_Y15_N28
\inst1|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector5~2_combout\ = (\inst2|current_state\(2) & (\inst8|Q\(3))) # (!\inst2|current_state\(2) & ((\inst1|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(3),
	datab => \inst2|current_state\(2),
	datad => \inst1|Add0~6_combout\,
	combout => \inst1|Selector5~2_combout\);

-- Location: LCCOMB_X37_Y15_N30
\inst1|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector5~3_combout\ = (\inst2|current_state\(1) & (\inst|Q\(3) $ (((\inst1|Selector5~2_combout\) # (!\inst2|current_state\(2)))))) # (!\inst2|current_state\(1) & ((\inst2|current_state\(2) & (!\inst|Q\(3) & !\inst1|Selector5~2_combout\)) # 
-- (!\inst2|current_state\(2) & ((\inst1|Selector5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(1),
	datab => \inst|Q\(3),
	datac => \inst2|current_state\(2),
	datad => \inst1|Selector5~2_combout\,
	combout => \inst1|Selector5~3_combout\);

-- Location: LCFF_X37_Y15_N27
\inst2|current_state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst2|Selector12~0_combout\,
	sload => VCC,
	ena => \ALT_INV_FSM_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|current_state\(3));

-- Location: LCCOMB_X34_Y15_N16
\inst1|RESULT[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|RESULT[4]~2_combout\ = (!\inst2|current_state\(3) & \inst2|current_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|current_state\(3),
	datad => \inst2|current_state\(0),
	combout => \inst1|RESULT[4]~2_combout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : cycloneii_io
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
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LCFF_X36_Y15_N21
\inst8|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \b~combout\(5),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Q\(2));

-- Location: LCCOMB_X35_Y15_N6
\inst1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = (\inst8|Q\(0) & (\inst|Q\(0) $ (VCC))) # (!\inst8|Q\(0) & ((\inst|Q\(0)) # (GND)))
-- \inst1|Add1~1\ = CARRY((\inst|Q\(0)) # (!\inst8|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(0),
	datab => \inst|Q\(0),
	datad => VCC,
	combout => \inst1|Add1~0_combout\,
	cout => \inst1|Add1~1\);

-- Location: LCCOMB_X35_Y15_N8
\inst1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add1~2_combout\ = (\inst|Q\(1) & ((\inst8|Q\(1) & (!\inst1|Add1~1\)) # (!\inst8|Q\(1) & (\inst1|Add1~1\ & VCC)))) # (!\inst|Q\(1) & ((\inst8|Q\(1) & ((\inst1|Add1~1\) # (GND))) # (!\inst8|Q\(1) & (!\inst1|Add1~1\))))
-- \inst1|Add1~3\ = CARRY((\inst|Q\(1) & (\inst8|Q\(1) & !\inst1|Add1~1\)) # (!\inst|Q\(1) & ((\inst8|Q\(1)) # (!\inst1|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst8|Q\(1),
	datad => VCC,
	cin => \inst1|Add1~1\,
	combout => \inst1|Add1~2_combout\,
	cout => \inst1|Add1~3\);

-- Location: LCCOMB_X35_Y15_N12
\inst1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add1~6_combout\ = (\inst|Q\(3) & ((\inst8|Q\(3) & (!\inst1|Add1~5\)) # (!\inst8|Q\(3) & (\inst1|Add1~5\ & VCC)))) # (!\inst|Q\(3) & ((\inst8|Q\(3) & ((\inst1|Add1~5\) # (GND))) # (!\inst8|Q\(3) & (!\inst1|Add1~5\))))
-- \inst1|Add1~7\ = CARRY((\inst|Q\(3) & (\inst8|Q\(3) & !\inst1|Add1~5\)) # (!\inst|Q\(3) & ((\inst8|Q\(3)) # (!\inst1|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst8|Q\(3),
	datad => VCC,
	cin => \inst1|Add1~5\,
	combout => \inst1|Add1~6_combout\,
	cout => \inst1|Add1~7\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : cycloneii_io
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
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LCFF_X36_Y15_N17
\inst8|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \b~combout\(7),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Q\(0));

-- Location: LCCOMB_X37_Y15_N12
\inst1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~0_combout\ = (\inst|Q\(0) & (\inst8|Q\(0) $ (VCC))) # (!\inst|Q\(0) & ((\inst8|Q\(0)) # (GND)))
-- \inst1|Add2~1\ = CARRY((\inst8|Q\(0)) # (!\inst|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(0),
	datab => \inst8|Q\(0),
	datad => VCC,
	combout => \inst1|Add2~0_combout\,
	cout => \inst1|Add2~1\);

-- Location: LCCOMB_X37_Y15_N14
\inst1|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~2_combout\ = (\inst|Q\(1) & ((\inst8|Q\(1) & (!\inst1|Add2~1\)) # (!\inst8|Q\(1) & ((\inst1|Add2~1\) # (GND))))) # (!\inst|Q\(1) & ((\inst8|Q\(1) & (\inst1|Add2~1\ & VCC)) # (!\inst8|Q\(1) & (!\inst1|Add2~1\))))
-- \inst1|Add2~3\ = CARRY((\inst|Q\(1) & ((!\inst1|Add2~1\) # (!\inst8|Q\(1)))) # (!\inst|Q\(1) & (!\inst8|Q\(1) & !\inst1|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst8|Q\(1),
	datad => VCC,
	cin => \inst1|Add2~1\,
	combout => \inst1|Add2~2_combout\,
	cout => \inst1|Add2~3\);

-- Location: LCCOMB_X37_Y15_N16
\inst1|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~4_combout\ = ((\inst8|Q\(2) $ (\inst|Q\(2) $ (\inst1|Add2~3\)))) # (GND)
-- \inst1|Add2~5\ = CARRY((\inst8|Q\(2) & ((!\inst1|Add2~3\) # (!\inst|Q\(2)))) # (!\inst8|Q\(2) & (!\inst|Q\(2) & !\inst1|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(2),
	datab => \inst|Q\(2),
	datad => VCC,
	cin => \inst1|Add2~3\,
	combout => \inst1|Add2~4_combout\,
	cout => \inst1|Add2~5\);

-- Location: LCCOMB_X37_Y15_N18
\inst1|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~6_combout\ = (\inst|Q\(3) & ((\inst8|Q\(3) & (!\inst1|Add2~5\)) # (!\inst8|Q\(3) & ((\inst1|Add2~5\) # (GND))))) # (!\inst|Q\(3) & ((\inst8|Q\(3) & (\inst1|Add2~5\ & VCC)) # (!\inst8|Q\(3) & (!\inst1|Add2~5\))))
-- \inst1|Add2~7\ = CARRY((\inst|Q\(3) & ((!\inst1|Add2~5\) # (!\inst8|Q\(3)))) # (!\inst|Q\(3) & (!\inst8|Q\(3) & !\inst1|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst8|Q\(3),
	datad => VCC,
	cin => \inst1|Add2~5\,
	combout => \inst1|Add2~6_combout\,
	cout => \inst1|Add2~7\);

-- Location: LCCOMB_X37_Y15_N4
\inst1|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector5~0_combout\ = (\inst1|Selector8~2_combout\ & (((\inst1|Add2~6_combout\)))) # (!\inst1|Selector8~2_combout\ & (\inst8|Q\(3) & (\inst|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector8~2_combout\,
	datab => \inst8|Q\(3),
	datac => \inst|Q\(3),
	datad => \inst1|Add2~6_combout\,
	combout => \inst1|Selector5~0_combout\);

-- Location: LCCOMB_X37_Y15_N10
\inst1|RESULT[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|RESULT[4]~1_combout\ = (\inst2|current_state\(1)) # ((!\inst2|current_state\(2) & !\inst1|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(1),
	datab => \inst2|current_state\(2),
	datad => \inst1|LessThan0~14_combout\,
	combout => \inst1|RESULT[4]~1_combout\);

-- Location: LCCOMB_X37_Y15_N2
\inst1|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector5~1_combout\ = (\inst1|RESULT[4]~1_combout\ & ((\inst1|Selector8~2_combout\ & (\inst1|Add1~6_combout\)) # (!\inst1|Selector8~2_combout\ & ((!\inst1|Selector5~0_combout\))))) # (!\inst1|RESULT[4]~1_combout\ & 
-- (((\inst1|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector8~2_combout\,
	datab => \inst1|Add1~6_combout\,
	datac => \inst1|Selector5~0_combout\,
	datad => \inst1|RESULT[4]~1_combout\,
	combout => \inst1|Selector5~1_combout\);

-- Location: LCCOMB_X37_Y15_N0
\inst1|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector5~4_combout\ = (\inst1|RESULT[4]~0_combout\ & (((\inst1|RESULT[4]~2_combout\)))) # (!\inst1|RESULT[4]~0_combout\ & ((\inst1|RESULT[4]~2_combout\ & ((\inst1|Selector5~1_combout\))) # (!\inst1|RESULT[4]~2_combout\ & 
-- (\inst1|Selector5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT[4]~0_combout\,
	datab => \inst1|Selector5~3_combout\,
	datac => \inst1|RESULT[4]~2_combout\,
	datad => \inst1|Selector5~1_combout\,
	combout => \inst1|Selector5~4_combout\);

-- Location: LCCOMB_X37_Y15_N6
\inst1|Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector5~5_combout\ = (\inst1|RESULT[4]~0_combout\ & ((\inst|Q\(3) & ((\inst8|Q\(3)) # (\inst1|Selector5~4_combout\))) # (!\inst|Q\(3) & (\inst8|Q\(3) $ (!\inst1|Selector5~4_combout\))))) # (!\inst1|RESULT[4]~0_combout\ & 
-- (((\inst1|Selector5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT[4]~0_combout\,
	datab => \inst|Q\(3),
	datac => \inst8|Q\(3),
	datad => \inst1|Selector5~4_combout\,
	combout => \inst1|Selector5~5_combout\);

-- Location: LCCOMB_X37_Y15_N8
\inst1|Selector5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector5~6_combout\ = (!\inst1|RESULT[4]~3_combout\ & \inst1|Selector5~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|RESULT[4]~3_combout\,
	datad => \inst1|Selector5~5_combout\,
	combout => \inst1|Selector5~6_combout\);

-- Location: LCFF_X37_Y15_N9
\inst1|RESULT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst1|Selector5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|RESULT\(3));

-- Location: LCCOMB_X38_Y15_N8
\inst1|RESULT[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|RESULT[4]~0_combout\ = (\inst2|current_state\(3)) # ((\inst2|current_state\(0) & (\inst2|current_state\(1) & \inst2|current_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(0),
	datab => \inst2|current_state\(1),
	datac => \inst2|current_state\(2),
	datad => \inst2|current_state\(3),
	combout => \inst1|RESULT[4]~0_combout\);

-- Location: LCCOMB_X38_Y15_N20
\inst1|Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~4_combout\ = (\inst1|RESULT[4]~0_combout\ & ((\inst8|Q\(2) & (!\inst|Q\(2) & !\inst1|RESULT[4]~2_combout\)) # (!\inst8|Q\(2) & (\inst|Q\(2) $ (\inst1|RESULT[4]~2_combout\))))) # (!\inst1|RESULT[4]~0_combout\ & 
-- (((\inst1|RESULT[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(2),
	datab => \inst|Q\(2),
	datac => \inst1|RESULT[4]~0_combout\,
	datad => \inst1|RESULT[4]~2_combout\,
	combout => \inst1|Selector6~4_combout\);

-- Location: LCCOMB_X38_Y15_N4
\inst1|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~2_combout\ = (\inst1|Selector8~2_combout\ & (((\inst1|Add2~4_combout\)))) # (!\inst1|Selector8~2_combout\ & (\inst8|Q\(2) & (\inst|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(2),
	datab => \inst1|Selector8~2_combout\,
	datac => \inst|Q\(2),
	datad => \inst1|Add2~4_combout\,
	combout => \inst1|Selector6~2_combout\);

-- Location: LCCOMB_X38_Y15_N2
\inst1|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~3_combout\ = (\inst1|RESULT[4]~1_combout\ & ((\inst1|Selector8~2_combout\ & (\inst1|Add1~4_combout\)) # (!\inst1|Selector8~2_combout\ & ((!\inst1|Selector6~2_combout\))))) # (!\inst1|RESULT[4]~1_combout\ & 
-- (((\inst1|Selector6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~4_combout\,
	datab => \inst1|Selector8~2_combout\,
	datac => \inst1|Selector6~2_combout\,
	datad => \inst1|RESULT[4]~1_combout\,
	combout => \inst1|Selector6~3_combout\);

-- Location: LCCOMB_X38_Y15_N22
\inst1|Selector6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~5_combout\ = (\inst1|RESULT[4]~0_combout\ & (((!\inst1|Selector6~4_combout\)))) # (!\inst1|RESULT[4]~0_combout\ & ((\inst1|Selector6~4_combout\ & ((\inst1|Selector6~3_combout\))) # (!\inst1|Selector6~4_combout\ & 
-- (\inst1|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector6~1_combout\,
	datab => \inst1|RESULT[4]~0_combout\,
	datac => \inst1|Selector6~4_combout\,
	datad => \inst1|Selector6~3_combout\,
	combout => \inst1|Selector6~5_combout\);

-- Location: LCCOMB_X38_Y15_N0
\inst1|Selector6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~6_combout\ = (!\inst1|RESULT[4]~3_combout\ & \inst1|Selector6~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|RESULT[4]~3_combout\,
	datad => \inst1|Selector6~5_combout\,
	combout => \inst1|Selector6~6_combout\);

-- Location: LCFF_X38_Y15_N1
\inst1|RESULT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst1|Selector6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|RESULT\(2));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
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
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCFF_X36_Y15_N3
\inst|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(6),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(1));

-- Location: LCCOMB_X37_Y14_N18
\inst1|Selector7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector7~9_combout\ = (\inst2|current_state\(2) & (\inst8|Q\(1))) # (!\inst2|current_state\(2) & ((\inst1|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(2),
	datac => \inst8|Q\(1),
	datad => \inst1|Add0~2_combout\,
	combout => \inst1|Selector7~9_combout\);

-- Location: LCCOMB_X37_Y14_N12
\inst1|Selector7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector7~10_combout\ = (\inst2|current_state\(1) & (\inst|Q\(1) $ (((\inst1|Selector7~9_combout\) # (!\inst2|current_state\(2)))))) # (!\inst2|current_state\(1) & ((\inst2|current_state\(2) & (!\inst|Q\(1) & !\inst1|Selector7~9_combout\)) # 
-- (!\inst2|current_state\(2) & ((\inst1|Selector7~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(2),
	datab => \inst|Q\(1),
	datac => \inst2|current_state\(1),
	datad => \inst1|Selector7~9_combout\,
	combout => \inst1|Selector7~10_combout\);

-- Location: LCCOMB_X37_Y14_N16
\inst1|Selector7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector7~14_combout\ = (\inst1|RESULT[4]~0_combout\) # ((\inst1|Selector7~10_combout\ & ((\inst2|current_state\(3)) # (!\inst2|current_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT[4]~0_combout\,
	datab => \inst2|current_state\(0),
	datac => \inst2|current_state\(3),
	datad => \inst1|Selector7~10_combout\,
	combout => \inst1|Selector7~14_combout\);

-- Location: LCCOMB_X36_Y14_N20
\inst1|Selector7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector7~6_combout\ = (\inst1|RESULT[4]~2_combout\ & ((\inst8|Q\(1) & ((\inst1|RESULT[4]~0_combout\) # (!\inst|Q\(1)))) # (!\inst8|Q\(1) & ((\inst|Q\(1)) # (!\inst1|RESULT[4]~0_combout\))))) # (!\inst1|RESULT[4]~2_combout\ & (\inst8|Q\(1) $ 
-- (\inst|Q\(1) $ (\inst1|RESULT[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(1),
	datab => \inst|Q\(1),
	datac => \inst1|RESULT[4]~2_combout\,
	datad => \inst1|RESULT[4]~0_combout\,
	combout => \inst1|Selector7~6_combout\);

-- Location: LCCOMB_X36_Y14_N12
\inst1|Selector7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector7~12_combout\ = (\inst2|current_state\(3) & (\inst2|current_state\(1))) # (!\inst2|current_state\(3) & ((\inst2|current_state\(0) & ((\inst1|Add1~2_combout\))) # (!\inst2|current_state\(0) & (\inst2|current_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(3),
	datab => \inst2|current_state\(1),
	datac => \inst1|Add1~2_combout\,
	datad => \inst2|current_state\(0),
	combout => \inst1|Selector7~12_combout\);

-- Location: LCCOMB_X36_Y14_N14
\inst1|Selector7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector7~13_combout\ = (\inst2|current_state\(1) & (((\inst1|Selector7~6_combout\)))) # (!\inst2|current_state\(1) & ((\inst2|current_state\(2) & (\inst1|Selector7~6_combout\)) # (!\inst2|current_state\(2) & ((\inst1|Selector7~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(1),
	datab => \inst2|current_state\(2),
	datac => \inst1|Selector7~6_combout\,
	datad => \inst1|Selector7~12_combout\,
	combout => \inst1|Selector7~13_combout\);

-- Location: LCCOMB_X37_Y14_N28
\inst1|Selector7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector7~8_combout\ = (\inst1|RESULT[4]~1_combout\ & (((\inst1|Selector7~13_combout\)))) # (!\inst1|RESULT[4]~1_combout\ & ((\inst1|Selector8~2_combout\ & (\inst1|Add2~2_combout\)) # (!\inst1|Selector8~2_combout\ & 
-- ((!\inst1|Selector7~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector8~2_combout\,
	datab => \inst1|Add2~2_combout\,
	datac => \inst1|RESULT[4]~1_combout\,
	datad => \inst1|Selector7~13_combout\,
	combout => \inst1|Selector7~8_combout\);

-- Location: LCCOMB_X37_Y14_N20
\inst1|Selector7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector7~11_combout\ = (\inst1|Selector7~7_combout\ & ((\inst1|Selector7~14_combout\) # ((\inst1|RESULT[4]~2_combout\ & \inst1|Selector7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector7~7_combout\,
	datab => \inst1|RESULT[4]~2_combout\,
	datac => \inst1|Selector7~14_combout\,
	datad => \inst1|Selector7~8_combout\,
	combout => \inst1|Selector7~11_combout\);

-- Location: LCFF_X37_Y14_N21
\inst1|RESULT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst1|Selector7~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|RESULT\(1));

-- Location: LCCOMB_X37_Y14_N8
\inst1|Selector8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector8~5_combout\ = (!\inst|Q\(0) & ((\inst2|current_state\(2) & (!\inst2|current_state\(1) & !\inst8|Q\(0))) # (!\inst2|current_state\(2) & (\inst2|current_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(2),
	datab => \inst|Q\(0),
	datac => \inst2|current_state\(1),
	datad => \inst8|Q\(0),
	combout => \inst1|Selector8~5_combout\);

-- Location: LCCOMB_X37_Y14_N14
\inst1|Selector8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector8~6_combout\ = (\inst1|Selector8~5_combout\) # ((\inst1|Add0~0_combout\ & (\inst2|current_state\(2) $ (!\inst2|current_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(2),
	datab => \inst1|Selector8~5_combout\,
	datac => \inst2|current_state\(1),
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|Selector8~6_combout\);

-- Location: LCCOMB_X37_Y14_N4
\inst1|Selector8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector8~7_combout\ = (\inst2|current_state\(3) & (\inst1|Selector8~2_combout\ & ((!\inst1|Add0~0_combout\)))) # (!\inst2|current_state\(3) & (((\inst1|Selector8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector8~2_combout\,
	datab => \inst2|current_state\(3),
	datac => \inst1|Selector8~6_combout\,
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|Selector8~7_combout\);

-- Location: LCCOMB_X36_Y14_N28
\inst1|Selector8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector8~4_combout\ = (\inst|Q\(0) & ((\inst8|Q\(0) & ((\inst2|current_state\(2)))) # (!\inst8|Q\(0) & (\inst2|current_state\(1))))) # (!\inst|Q\(0) & (\inst2|current_state\(1) & ((\inst8|Q\(0)) # (!\inst2|current_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(0),
	datab => \inst2|current_state\(1),
	datac => \inst8|Q\(0),
	datad => \inst2|current_state\(2),
	combout => \inst1|Selector8~4_combout\);

-- Location: LCCOMB_X37_Y14_N30
\inst1|Selector8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector8~3_combout\ = (\inst1|Selector8~2_combout\ & ((\inst1|LessThan0~14_combout\ & (\inst1|Add2~0_combout\)) # (!\inst1|LessThan0~14_combout\ & ((\inst1|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector8~2_combout\,
	datab => \inst1|Add2~0_combout\,
	datac => \inst1|LessThan0~14_combout\,
	datad => \inst1|Add1~0_combout\,
	combout => \inst1|Selector8~3_combout\);

-- Location: LCCOMB_X37_Y14_N2
\inst1|Selector8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector8~9_combout\ = (!\inst2|current_state\(3) & (\inst2|current_state\(0) & ((\inst1|Selector8~4_combout\) # (\inst1|Selector8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(3),
	datab => \inst2|current_state\(0),
	datac => \inst1|Selector8~4_combout\,
	datad => \inst1|Selector8~3_combout\,
	combout => \inst1|Selector8~9_combout\);

-- Location: LCCOMB_X37_Y14_N24
\inst1|Selector8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector8~8_combout\ = (\inst1|Selector8~9_combout\) # ((!\inst2|current_state\(0) & \inst1|Selector8~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|current_state\(0),
	datac => \inst1|Selector8~7_combout\,
	datad => \inst1|Selector8~9_combout\,
	combout => \inst1|Selector8~8_combout\);

-- Location: LCFF_X37_Y14_N25
\inst1|RESULT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst1|Selector8~8_combout\,
	sclr => \ALT_INV_Enable_Decoder~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|RESULT\(0));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
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
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LCFF_X36_Y15_N25
\inst8|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \b~combout\(0),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Q\(7));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
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
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCFF_X36_Y15_N9
\inst|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(3),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(4));

-- Location: LCCOMB_X37_Y15_N22
\inst1|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~10_combout\ = (\inst|Q\(5) & ((\inst8|Q\(5) & (!\inst1|Add2~9\)) # (!\inst8|Q\(5) & ((\inst1|Add2~9\) # (GND))))) # (!\inst|Q\(5) & ((\inst8|Q\(5) & (\inst1|Add2~9\ & VCC)) # (!\inst8|Q\(5) & (!\inst1|Add2~9\))))
-- \inst1|Add2~11\ = CARRY((\inst|Q\(5) & ((!\inst1|Add2~9\) # (!\inst8|Q\(5)))) # (!\inst|Q\(5) & (!\inst8|Q\(5) & !\inst1|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datab => \inst8|Q\(5),
	datad => VCC,
	cin => \inst1|Add2~9\,
	combout => \inst1|Add2~10_combout\,
	cout => \inst1|Add2~11\);

-- Location: LCCOMB_X37_Y15_N24
\inst1|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~12_combout\ = ((\inst|Q\(6) $ (\inst8|Q\(6) $ (\inst1|Add2~11\)))) # (GND)
-- \inst1|Add2~13\ = CARRY((\inst|Q\(6) & (\inst8|Q\(6) & !\inst1|Add2~11\)) # (!\inst|Q\(6) & ((\inst8|Q\(6)) # (!\inst1|Add2~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(6),
	datab => \inst8|Q\(6),
	datad => VCC,
	cin => \inst1|Add2~11\,
	combout => \inst1|Add2~12_combout\,
	cout => \inst1|Add2~13\);

-- Location: LCCOMB_X37_Y15_N26
\inst1|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~14_combout\ = \inst|Q\(7) $ (\inst8|Q\(7) $ (!\inst1|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(7),
	datab => \inst8|Q\(7),
	cin => \inst1|Add2~13\,
	combout => \inst1|Add2~14_combout\);

-- Location: LCCOMB_X38_Y15_N16
\inst1|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector1~2_combout\ = (\inst1|Selector8~2_combout\ & (((\inst1|Add2~14_combout\)))) # (!\inst1|Selector8~2_combout\ & (\inst|Q\(7) & (\inst8|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(7),
	datab => \inst1|Selector8~2_combout\,
	datac => \inst8|Q\(7),
	datad => \inst1|Add2~14_combout\,
	combout => \inst1|Selector1~2_combout\);

-- Location: LCCOMB_X38_Y15_N14
\inst1|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector1~3_combout\ = (\inst1|RESULT[4]~1_combout\ & ((\inst1|Selector8~2_combout\ & (\inst1|Add1~14_combout\)) # (!\inst1|Selector8~2_combout\ & ((!\inst1|Selector1~2_combout\))))) # (!\inst1|RESULT[4]~1_combout\ & 
-- (((\inst1|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~14_combout\,
	datab => \inst1|Selector8~2_combout\,
	datac => \inst1|Selector1~2_combout\,
	datad => \inst1|RESULT[4]~1_combout\,
	combout => \inst1|Selector1~3_combout\);

-- Location: LCCOMB_X36_Y15_N24
\inst1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = ((\inst|Q\(4) $ (\inst8|Q\(4) $ (!\inst1|Add0~7\)))) # (GND)
-- \inst1|Add0~9\ = CARRY((\inst|Q\(4) & ((\inst8|Q\(4)) # (!\inst1|Add0~7\))) # (!\inst|Q\(4) & (\inst8|Q\(4) & !\inst1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datab => \inst8|Q\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X36_Y15_N26
\inst1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst|Q\(5) & ((\inst8|Q\(5) & (\inst1|Add0~9\ & VCC)) # (!\inst8|Q\(5) & (!\inst1|Add0~9\)))) # (!\inst|Q\(5) & ((\inst8|Q\(5) & (!\inst1|Add0~9\)) # (!\inst8|Q\(5) & ((\inst1|Add0~9\) # (GND)))))
-- \inst1|Add0~11\ = CARRY((\inst|Q\(5) & (!\inst8|Q\(5) & !\inst1|Add0~9\)) # (!\inst|Q\(5) & ((!\inst1|Add0~9\) # (!\inst8|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datab => \inst8|Q\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X36_Y15_N28
\inst1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = ((\inst|Q\(6) $ (\inst8|Q\(6) $ (!\inst1|Add0~11\)))) # (GND)
-- \inst1|Add0~13\ = CARRY((\inst|Q\(6) & ((\inst8|Q\(6)) # (!\inst1|Add0~11\))) # (!\inst|Q\(6) & (\inst8|Q\(6) & !\inst1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(6),
	datab => \inst8|Q\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X36_Y15_N30
\inst1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = \inst8|Q\(7) $ (\inst|Q\(7) $ (\inst1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(7),
	datab => \inst|Q\(7),
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\);

-- Location: LCCOMB_X38_Y15_N12
\inst1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = (\inst2|current_state\(2) & (\inst8|Q\(7))) # (!\inst2|current_state\(2) & ((\inst1|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(2),
	datac => \inst8|Q\(7),
	datad => \inst1|Add0~14_combout\,
	combout => \inst1|Selector1~0_combout\);

-- Location: LCCOMB_X38_Y15_N26
\inst1|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector1~1_combout\ = (\inst2|current_state\(1) & (\inst|Q\(7) $ (((\inst1|Selector1~0_combout\) # (!\inst2|current_state\(2)))))) # (!\inst2|current_state\(1) & ((\inst2|current_state\(2) & (!\inst|Q\(7) & !\inst1|Selector1~0_combout\)) # 
-- (!\inst2|current_state\(2) & ((\inst1|Selector1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(2),
	datab => \inst2|current_state\(1),
	datac => \inst|Q\(7),
	datad => \inst1|Selector1~0_combout\,
	combout => \inst1|Selector1~1_combout\);

-- Location: LCCOMB_X38_Y15_N30
\inst1|Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector1~5_combout\ = (\inst1|Selector1~4_combout\ & (!\inst1|RESULT[4]~0_combout\ & (\inst1|Selector1~3_combout\))) # (!\inst1|Selector1~4_combout\ & ((\inst1|RESULT[4]~0_combout\) # ((\inst1|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector1~4_combout\,
	datab => \inst1|RESULT[4]~0_combout\,
	datac => \inst1|Selector1~3_combout\,
	datad => \inst1|Selector1~1_combout\,
	combout => \inst1|Selector1~5_combout\);

-- Location: LCCOMB_X38_Y15_N10
\inst1|Selector1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector1~6_combout\ = (!\inst1|RESULT[4]~3_combout\ & \inst1|Selector1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|RESULT[4]~3_combout\,
	datad => \inst1|Selector1~5_combout\,
	combout => \inst1|Selector1~6_combout\);

-- Location: LCFF_X38_Y15_N11
\inst1|RESULT[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst1|Selector1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|RESULT\(7));

-- Location: LCCOMB_X34_Y15_N26
\inst1|Selector2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector2~11_combout\ = (\inst8|Q\(6) & ((\inst2|current_state\(1)) # ((\inst2|current_state\(2)) # (\inst1|RESULT[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(6),
	datab => \inst2|current_state\(1),
	datac => \inst2|current_state\(2),
	datad => \inst1|RESULT[4]~0_combout\,
	combout => \inst1|Selector2~11_combout\);

-- Location: LCCOMB_X34_Y15_N8
\inst1|Selector2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector2~8_combout\ = (\inst|Q\(6) & ((\inst1|Selector2~11_combout\ & (\inst1|RESULT[4]~2_combout\ & !\inst1|RESULT[4]~0_combout\)) # (!\inst1|Selector2~11_combout\ & (!\inst1|RESULT[4]~2_combout\ & \inst1|RESULT[4]~0_combout\)))) # (!\inst|Q\(6) 
-- & (\inst1|RESULT[4]~0_combout\ & (\inst1|Selector2~11_combout\ $ (\inst1|RESULT[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(6),
	datab => \inst1|Selector2~11_combout\,
	datac => \inst1|RESULT[4]~2_combout\,
	datad => \inst1|RESULT[4]~0_combout\,
	combout => \inst1|Selector2~8_combout\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
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
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCFF_X36_Y15_N13
\inst|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(1),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(6));

-- Location: LCCOMB_X34_Y15_N30
\inst1|Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector2~4_combout\ = (\inst8|Q\(6) & (((!\inst|Q\(6) & \inst1|RESULT[4]~2_combout\)) # (!\inst1|RESULT[4]~0_combout\))) # (!\inst8|Q\(6) & ((\inst1|RESULT[4]~2_combout\ & (!\inst|Q\(6) & !\inst1|RESULT[4]~0_combout\)) # 
-- (!\inst1|RESULT[4]~2_combout\ & ((\inst1|RESULT[4]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(6),
	datab => \inst|Q\(6),
	datac => \inst1|RESULT[4]~2_combout\,
	datad => \inst1|RESULT[4]~0_combout\,
	combout => \inst1|Selector2~4_combout\);

-- Location: LCCOMB_X35_Y15_N2
\inst1|Selector2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector2~5_combout\ = (\inst2|current_state\(2) & (\inst1|Selector2~4_combout\)) # (!\inst2|current_state\(2) & ((\inst1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(2),
	datac => \inst1|Selector2~4_combout\,
	datad => \inst1|Add0~12_combout\,
	combout => \inst1|Selector2~5_combout\);

-- Location: LCCOMB_X34_Y15_N20
\inst1|Selector2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector2~6_combout\ = (\inst2|current_state\(1) & (\inst|Q\(6) $ (((\inst1|Selector2~5_combout\) # (!\inst2|current_state\(2)))))) # (!\inst2|current_state\(1) & ((\inst2|current_state\(2) & (!\inst|Q\(6) & !\inst1|Selector2~5_combout\)) # 
-- (!\inst2|current_state\(2) & ((\inst1|Selector2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(6),
	datab => \inst2|current_state\(1),
	datac => \inst2|current_state\(2),
	datad => \inst1|Selector2~5_combout\,
	combout => \inst1|Selector2~6_combout\);

-- Location: LCCOMB_X34_Y15_N18
\inst1|Selector2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector2~7_combout\ = (\inst1|Selector8~2_combout\ & ((\inst1|RESULT[4]~1_combout\ & (\inst1|Add1~12_combout\)) # (!\inst1|RESULT[4]~1_combout\ & ((\inst1|Add2~12_combout\))))) # (!\inst1|Selector8~2_combout\ & (((\inst1|RESULT[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~12_combout\,
	datab => \inst1|Selector8~2_combout\,
	datac => \inst1|Add2~12_combout\,
	datad => \inst1|RESULT[4]~1_combout\,
	combout => \inst1|Selector2~7_combout\);

-- Location: LCCOMB_X34_Y15_N0
\inst1|Selector2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector2~10_combout\ = (\inst2|current_state\(0) & ((\inst2|current_state\(3) & (\inst1|Selector2~6_combout\)) # (!\inst2|current_state\(3) & ((\inst1|Selector2~7_combout\))))) # (!\inst2|current_state\(0) & (((\inst1|Selector2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(0),
	datab => \inst2|current_state\(3),
	datac => \inst1|Selector2~6_combout\,
	datad => \inst1|Selector2~7_combout\,
	combout => \inst1|Selector2~10_combout\);

-- Location: LCCOMB_X34_Y15_N24
\inst1|Selector2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector2~9_combout\ = (!\inst1|RESULT[4]~3_combout\ & (\inst1|Selector2~8_combout\ $ (((\inst1|RESULT[4]~0_combout\) # (\inst1|Selector2~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT[4]~0_combout\,
	datab => \inst1|Selector2~8_combout\,
	datac => \inst1|RESULT[4]~3_combout\,
	datad => \inst1|Selector2~10_combout\,
	combout => \inst1|Selector2~9_combout\);

-- Location: LCFF_X34_Y15_N25
\inst1|RESULT[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst1|Selector2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|RESULT\(6));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
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
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCFF_X36_Y15_N11
\inst|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(2),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(5));

-- Location: LCCOMB_X35_Y15_N24
\inst1|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = (\inst2|current_state\(2) & (\inst8|Q\(5))) # (!\inst2|current_state\(2) & ((\inst1|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(5),
	datac => \inst2|current_state\(2),
	datad => \inst1|Add0~10_combout\,
	combout => \inst1|Selector3~0_combout\);

-- Location: LCCOMB_X35_Y15_N26
\inst1|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector3~1_combout\ = (\inst2|current_state\(1) & (\inst|Q\(5) $ (((\inst1|Selector3~0_combout\) # (!\inst2|current_state\(2)))))) # (!\inst2|current_state\(1) & ((\inst2|current_state\(2) & (!\inst|Q\(5) & !\inst1|Selector3~0_combout\)) # 
-- (!\inst2|current_state\(2) & ((\inst1|Selector3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(2),
	datab => \inst|Q\(5),
	datac => \inst1|Selector3~0_combout\,
	datad => \inst2|current_state\(1),
	combout => \inst1|Selector3~1_combout\);

-- Location: LCCOMB_X34_Y15_N6
\inst1|Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector3~4_combout\ = (\inst1|RESULT[4]~2_combout\ & (((!\inst8|Q\(5) & !\inst|Q\(5))) # (!\inst1|RESULT[4]~0_combout\))) # (!\inst1|RESULT[4]~2_combout\ & (\inst1|RESULT[4]~0_combout\ & (\inst8|Q\(5) $ (\inst|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT[4]~2_combout\,
	datab => \inst8|Q\(5),
	datac => \inst|Q\(5),
	datad => \inst1|RESULT[4]~0_combout\,
	combout => \inst1|Selector3~4_combout\);

-- Location: LCCOMB_X35_Y15_N4
\inst1|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector3~2_combout\ = (\inst1|Selector8~2_combout\ & (((\inst1|Add2~10_combout\)))) # (!\inst1|Selector8~2_combout\ & (\inst|Q\(5) & (\inst8|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector8~2_combout\,
	datab => \inst|Q\(5),
	datac => \inst8|Q\(5),
	datad => \inst1|Add2~10_combout\,
	combout => \inst1|Selector3~2_combout\);

-- Location: LCCOMB_X35_Y15_N22
\inst1|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector3~3_combout\ = (\inst1|RESULT[4]~1_combout\ & ((\inst1|Selector8~2_combout\ & (\inst1|Add1~10_combout\)) # (!\inst1|Selector8~2_combout\ & ((!\inst1|Selector3~2_combout\))))) # (!\inst1|RESULT[4]~1_combout\ & 
-- (((\inst1|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~10_combout\,
	datab => \inst1|Selector8~2_combout\,
	datac => \inst1|Selector3~2_combout\,
	datad => \inst1|RESULT[4]~1_combout\,
	combout => \inst1|Selector3~3_combout\);

-- Location: LCCOMB_X35_Y15_N0
\inst1|Selector3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector3~5_combout\ = (\inst1|RESULT[4]~0_combout\ & (((!\inst1|Selector3~4_combout\)))) # (!\inst1|RESULT[4]~0_combout\ & ((\inst1|Selector3~4_combout\ & ((\inst1|Selector3~3_combout\))) # (!\inst1|Selector3~4_combout\ & 
-- (\inst1|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT[4]~0_combout\,
	datab => \inst1|Selector3~1_combout\,
	datac => \inst1|Selector3~4_combout\,
	datad => \inst1|Selector3~3_combout\,
	combout => \inst1|Selector3~5_combout\);

-- Location: LCCOMB_X35_Y15_N28
\inst1|Selector3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector3~6_combout\ = (!\inst1|RESULT[4]~3_combout\ & \inst1|Selector3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|RESULT[4]~3_combout\,
	datad => \inst1|Selector3~5_combout\,
	combout => \inst1|Selector3~6_combout\);

-- Location: LCFF_X35_Y15_N29
\inst1|RESULT[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst1|Selector3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|RESULT\(5));

-- Location: LCCOMB_X34_Y15_N10
\inst1|Selector4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector4~11_combout\ = (\inst8|Q\(4) & ((\inst2|current_state\(2)) # ((\inst2|current_state\(1)) # (\inst1|RESULT[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(2),
	datab => \inst2|current_state\(1),
	datac => \inst8|Q\(4),
	datad => \inst1|RESULT[4]~0_combout\,
	combout => \inst1|Selector4~11_combout\);

-- Location: LCCOMB_X34_Y15_N22
\inst1|Selector4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector4~8_combout\ = (\inst1|RESULT[4]~0_combout\ & ((\inst|Q\(4) & (!\inst1|RESULT[4]~2_combout\ & !\inst1|Selector4~11_combout\)) # (!\inst|Q\(4) & (\inst1|RESULT[4]~2_combout\ $ (\inst1|Selector4~11_combout\))))) # 
-- (!\inst1|RESULT[4]~0_combout\ & (\inst|Q\(4) & (\inst1|RESULT[4]~2_combout\ & \inst1|Selector4~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT[4]~0_combout\,
	datab => \inst|Q\(4),
	datac => \inst1|RESULT[4]~2_combout\,
	datad => \inst1|Selector4~11_combout\,
	combout => \inst1|Selector4~8_combout\);

-- Location: LCCOMB_X34_Y15_N4
\inst1|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector4~4_combout\ = (\inst8|Q\(4) & (((!\inst|Q\(4) & \inst1|RESULT[4]~2_combout\)) # (!\inst1|RESULT[4]~0_combout\))) # (!\inst8|Q\(4) & ((\inst1|RESULT[4]~2_combout\ & (!\inst|Q\(4) & !\inst1|RESULT[4]~0_combout\)) # 
-- (!\inst1|RESULT[4]~2_combout\ & ((\inst1|RESULT[4]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datab => \inst8|Q\(4),
	datac => \inst1|RESULT[4]~2_combout\,
	datad => \inst1|RESULT[4]~0_combout\,
	combout => \inst1|Selector4~4_combout\);

-- Location: LCCOMB_X35_Y15_N30
\inst1|Selector4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector4~5_combout\ = (\inst2|current_state\(2) & ((\inst1|Selector4~4_combout\))) # (!\inst2|current_state\(2) & (\inst1|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(2),
	datab => \inst1|Add0~8_combout\,
	datac => \inst1|Selector4~4_combout\,
	combout => \inst1|Selector4~5_combout\);

-- Location: LCCOMB_X34_Y15_N14
\inst1|Selector4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector4~6_combout\ = (\inst2|current_state\(1) & (\inst|Q\(4) $ (((\inst1|Selector4~5_combout\) # (!\inst2|current_state\(2)))))) # (!\inst2|current_state\(1) & ((\inst2|current_state\(2) & (!\inst|Q\(4) & !\inst1|Selector4~5_combout\)) # 
-- (!\inst2|current_state\(2) & ((\inst1|Selector4~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datab => \inst2|current_state\(1),
	datac => \inst2|current_state\(2),
	datad => \inst1|Selector4~5_combout\,
	combout => \inst1|Selector4~6_combout\);

-- Location: LCCOMB_X34_Y15_N28
\inst1|Selector4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector4~7_combout\ = (\inst1|Selector8~2_combout\ & ((\inst1|RESULT[4]~1_combout\ & ((\inst1|Add1~8_combout\))) # (!\inst1|RESULT[4]~1_combout\ & (\inst1|Add2~8_combout\)))) # (!\inst1|Selector8~2_combout\ & (((\inst1|RESULT[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~8_combout\,
	datab => \inst1|Selector8~2_combout\,
	datac => \inst1|Add1~8_combout\,
	datad => \inst1|RESULT[4]~1_combout\,
	combout => \inst1|Selector4~7_combout\);

-- Location: LCCOMB_X34_Y15_N12
\inst1|Selector4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector4~10_combout\ = (\inst2|current_state\(0) & ((\inst2|current_state\(3) & (\inst1|Selector4~6_combout\)) # (!\inst2|current_state\(3) & ((\inst1|Selector4~7_combout\))))) # (!\inst2|current_state\(0) & (((\inst1|Selector4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state\(0),
	datab => \inst2|current_state\(3),
	datac => \inst1|Selector4~6_combout\,
	datad => \inst1|Selector4~7_combout\,
	combout => \inst1|Selector4~10_combout\);

-- Location: LCCOMB_X34_Y15_N2
\inst1|Selector4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector4~9_combout\ = (!\inst1|RESULT[4]~3_combout\ & (\inst1|Selector4~8_combout\ $ (((\inst1|RESULT[4]~0_combout\) # (\inst1|Selector4~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT[4]~0_combout\,
	datab => \inst1|Selector4~8_combout\,
	datac => \inst1|RESULT[4]~3_combout\,
	datad => \inst1|Selector4~10_combout\,
	combout => \inst1|Selector4~9_combout\);

-- Location: LCFF_X34_Y15_N3
\inst1|RESULT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst1|Selector4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|RESULT\(4));

-- Location: LCCOMB_X64_Y4_N16
\inst13|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Mux0~0_combout\ = (\inst1|RESULT\(3) & (\inst1|RESULT\(0) & (\inst1|RESULT\(1) $ (\inst1|RESULT\(2))))) # (!\inst1|RESULT\(3) & (!\inst1|RESULT\(1) & (\inst1|RESULT\(0) $ (\inst1|RESULT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT\(1),
	datab => \inst1|RESULT\(0),
	datac => \inst1|RESULT\(3),
	datad => \inst1|RESULT\(2),
	combout => \inst13|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y4_N22
\inst13|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Mux1~0_combout\ = (\inst1|RESULT\(1) & ((\inst1|RESULT\(0) & (\inst1|RESULT\(3))) # (!\inst1|RESULT\(0) & ((\inst1|RESULT\(2)))))) # (!\inst1|RESULT\(1) & (\inst1|RESULT\(2) & (\inst1|RESULT\(0) $ (\inst1|RESULT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT\(1),
	datab => \inst1|RESULT\(0),
	datac => \inst1|RESULT\(3),
	datad => \inst1|RESULT\(2),
	combout => \inst13|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y4_N24
\inst13|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Mux2~0_combout\ = (\inst1|RESULT\(3) & (\inst1|RESULT\(2) & ((\inst1|RESULT\(1)) # (!\inst1|RESULT\(0))))) # (!\inst1|RESULT\(3) & (\inst1|RESULT\(1) & (!\inst1|RESULT\(0) & !\inst1|RESULT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT\(1),
	datab => \inst1|RESULT\(0),
	datac => \inst1|RESULT\(3),
	datad => \inst1|RESULT\(2),
	combout => \inst13|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y4_N14
\inst13|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Mux3~0_combout\ = (\inst1|RESULT\(0) & (\inst1|RESULT\(1) $ (((!\inst1|RESULT\(2)))))) # (!\inst1|RESULT\(0) & ((\inst1|RESULT\(1) & (\inst1|RESULT\(3) & !\inst1|RESULT\(2))) # (!\inst1|RESULT\(1) & (!\inst1|RESULT\(3) & \inst1|RESULT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT\(1),
	datab => \inst1|RESULT\(0),
	datac => \inst1|RESULT\(3),
	datad => \inst1|RESULT\(2),
	combout => \inst13|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y4_N12
\inst13|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Mux4~0_combout\ = (\inst1|RESULT\(1) & (\inst1|RESULT\(0) & (!\inst1|RESULT\(3)))) # (!\inst1|RESULT\(1) & ((\inst1|RESULT\(2) & ((!\inst1|RESULT\(3)))) # (!\inst1|RESULT\(2) & (\inst1|RESULT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT\(1),
	datab => \inst1|RESULT\(0),
	datac => \inst1|RESULT\(3),
	datad => \inst1|RESULT\(2),
	combout => \inst13|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y4_N2
\inst13|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Mux5~0_combout\ = (\inst1|RESULT\(1) & (!\inst1|RESULT\(3) & ((\inst1|RESULT\(0)) # (!\inst1|RESULT\(2))))) # (!\inst1|RESULT\(1) & (\inst1|RESULT\(0) & (\inst1|RESULT\(3) $ (!\inst1|RESULT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT\(1),
	datab => \inst1|RESULT\(0),
	datac => \inst1|RESULT\(3),
	datad => \inst1|RESULT\(2),
	combout => \inst13|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y4_N0
\inst13|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Mux6~0_combout\ = (\inst1|RESULT\(0) & ((\inst1|RESULT\(3)) # (\inst1|RESULT\(1) $ (\inst1|RESULT\(2))))) # (!\inst1|RESULT\(0) & ((\inst1|RESULT\(1)) # (\inst1|RESULT\(3) $ (\inst1|RESULT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT\(1),
	datab => \inst1|RESULT\(0),
	datac => \inst1|RESULT\(3),
	datad => \inst1|RESULT\(2),
	combout => \inst13|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y1_N24
\inst15|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux0~0_combout\ = (\inst1|RESULT\(6) & (!\inst1|RESULT\(5) & (\inst1|RESULT\(4) $ (!\inst1|RESULT\(7))))) # (!\inst1|RESULT\(6) & (\inst1|RESULT\(4) & (\inst1|RESULT\(5) $ (!\inst1|RESULT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT\(5),
	datab => \inst1|RESULT\(4),
	datac => \inst1|RESULT\(6),
	datad => \inst1|RESULT\(7),
	combout => \inst15|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y1_N18
\inst15|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux1~0_combout\ = (\inst1|RESULT\(5) & ((\inst1|RESULT\(4) & ((\inst1|RESULT\(7)))) # (!\inst1|RESULT\(4) & (\inst1|RESULT\(6))))) # (!\inst1|RESULT\(5) & (\inst1|RESULT\(6) & (\inst1|RESULT\(4) $ (\inst1|RESULT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT\(5),
	datab => \inst1|RESULT\(4),
	datac => \inst1|RESULT\(6),
	datad => \inst1|RESULT\(7),
	combout => \inst15|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y1_N12
\inst15|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux2~0_combout\ = (\inst1|RESULT\(6) & (\inst1|RESULT\(7) & ((\inst1|RESULT\(5)) # (!\inst1|RESULT\(4))))) # (!\inst1|RESULT\(6) & (\inst1|RESULT\(5) & (!\inst1|RESULT\(4) & !\inst1|RESULT\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT\(5),
	datab => \inst1|RESULT\(4),
	datac => \inst1|RESULT\(6),
	datad => \inst1|RESULT\(7),
	combout => \inst15|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y1_N26
\inst15|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux3~0_combout\ = (\inst1|RESULT\(4) & (\inst1|RESULT\(5) $ ((!\inst1|RESULT\(6))))) # (!\inst1|RESULT\(4) & ((\inst1|RESULT\(5) & (!\inst1|RESULT\(6) & \inst1|RESULT\(7))) # (!\inst1|RESULT\(5) & (\inst1|RESULT\(6) & !\inst1|RESULT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT\(5),
	datab => \inst1|RESULT\(4),
	datac => \inst1|RESULT\(6),
	datad => \inst1|RESULT\(7),
	combout => \inst15|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y1_N20
\inst15|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux4~0_combout\ = (\inst1|RESULT\(5) & (\inst1|RESULT\(4) & ((!\inst1|RESULT\(7))))) # (!\inst1|RESULT\(5) & ((\inst1|RESULT\(6) & ((!\inst1|RESULT\(7)))) # (!\inst1|RESULT\(6) & (\inst1|RESULT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT\(5),
	datab => \inst1|RESULT\(4),
	datac => \inst1|RESULT\(6),
	datad => \inst1|RESULT\(7),
	combout => \inst15|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y1_N2
\inst15|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux5~0_combout\ = (\inst1|RESULT\(5) & (!\inst1|RESULT\(7) & ((\inst1|RESULT\(4)) # (!\inst1|RESULT\(6))))) # (!\inst1|RESULT\(5) & (\inst1|RESULT\(4) & (\inst1|RESULT\(6) $ (!\inst1|RESULT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT\(5),
	datab => \inst1|RESULT\(4),
	datac => \inst1|RESULT\(6),
	datad => \inst1|RESULT\(7),
	combout => \inst15|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y1_N16
\inst15|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux6~0_combout\ = (\inst1|RESULT\(4) & ((\inst1|RESULT\(7)) # (\inst1|RESULT\(5) $ (\inst1|RESULT\(6))))) # (!\inst1|RESULT\(4) & ((\inst1|RESULT\(5)) # (\inst1|RESULT\(6) $ (\inst1|RESULT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RESULT\(5),
	datab => \inst1|RESULT\(4),
	datac => \inst1|RESULT\(6),
	datad => \inst1|RESULT\(7),
	combout => \inst15|Mux6~0_combout\);

-- Location: LCCOMB_X36_Y14_N22
\inst2|WideOr14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr14~combout\ = (\inst2|yfsm.s4~regout\) # ((\inst2|yfsm.s6~regout\) # (\inst2|yfsm.s8~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|yfsm.s4~regout\,
	datac => \inst2|yfsm.s6~regout\,
	datad => \inst2|yfsm.s8~regout\,
	combout => \inst2|WideOr14~combout\);

-- Location: LCCOMB_X35_Y14_N22
\inst2|WideOr13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr13~combout\ = (\inst2|yfsm.s3~regout\) # ((\inst2|yfsm.s2~regout\) # (\inst2|yfsm.s1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|yfsm.s3~regout\,
	datac => \inst2|yfsm.s2~regout\,
	datad => \inst2|yfsm.s1~regout\,
	combout => \inst2|WideOr13~combout\);

-- Location: LCCOMB_X35_Y14_N28
\inst2|WideOr15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr15~combout\ = ((\inst2|yfsm.s2~regout\) # (\inst2|yfsm.s3~regout\)) # (!\inst2|yfsm.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|yfsm.s0~regout\,
	datac => \inst2|yfsm.s2~regout\,
	datad => \inst2|yfsm.s3~regout\,
	combout => \inst2|WideOr15~combout\);

-- Location: LCCOMB_X28_Y14_N16
\inst6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux0~0_combout\ = (\inst2|WideOr14~combout\) # ((\inst2|yfsm.s5~regout\) # (\inst2|WideOr13~combout\ $ (\inst2|WideOr15~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr14~combout\,
	datab => \inst2|WideOr13~combout\,
	datac => \inst2|WideOr15~combout\,
	datad => \inst2|yfsm.s5~regout\,
	combout => \inst6|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y14_N6
\inst6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux1~0_combout\ = (!\inst2|WideOr13~combout\ & (\inst2|WideOr14~combout\ $ (\inst2|WideOr15~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr14~combout\,
	datab => \inst2|WideOr13~combout\,
	datac => \inst2|WideOr15~combout\,
	combout => \inst6|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y14_N12
\inst6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux3~0_combout\ = (\inst2|WideOr14~combout\) # (\inst2|WideOr13~combout\ $ (\inst2|WideOr15~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr14~combout\,
	datab => \inst2|WideOr13~combout\,
	datac => \inst2|WideOr15~combout\,
	combout => \inst6|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y14_N26
\inst6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux4~0_combout\ = (\inst2|WideOr15~combout\) # ((!\inst2|WideOr14~combout\ & !\inst2|WideOr13~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr14~combout\,
	datab => \inst2|WideOr13~combout\,
	datac => \inst2|WideOr15~combout\,
	combout => \inst6|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y14_N12
\inst6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux5~0_combout\ = (\inst2|yfsm.s2~regout\) # ((\inst2|yfsm.s3~regout\) # ((\inst2|yfsm.s1~regout\ & !\inst2|yfsm.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|yfsm.s1~regout\,
	datab => \inst2|yfsm.s2~regout\,
	datac => \inst2|yfsm.s0~regout\,
	datad => \inst2|yfsm.s3~regout\,
	combout => \inst6|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y14_N0
\inst6|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux6~4_combout\ = (!\inst2|WideOr14~combout\ & ((\inst2|yfsm.s3~regout\) # ((\inst2|yfsm.s2~regout\) # (\inst2|yfsm.s1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr14~combout\,
	datab => \inst2|yfsm.s3~regout\,
	datac => \inst2|yfsm.s2~regout\,
	datad => \inst2|yfsm.s1~regout\,
	combout => \inst6|Mux6~4_combout\);

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NEGOUT~I\ : cycloneii_io
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
	datain => \inst1|NEG~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NEGOUT);

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AOUT[3]~I\ : cycloneii_io
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
	datain => \inst1|RESULT\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AOUT(3));

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AOUT[2]~I\ : cycloneii_io
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
	datain => \inst1|RESULT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AOUT(2));

-- Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AOUT[1]~I\ : cycloneii_io
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
	datain => \inst1|RESULT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AOUT(1));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AOUT[0]~I\ : cycloneii_io
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
	datain => \inst1|RESULT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AOUT(0));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BOUT[3]~I\ : cycloneii_io
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
	datain => \inst1|RESULT\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BOUT(3));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BOUT[2]~I\ : cycloneii_io
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
	datain => \inst1|RESULT\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BOUT(2));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BOUT[1]~I\ : cycloneii_io
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
	datain => \inst1|RESULT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BOUT(1));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BOUT[0]~I\ : cycloneii_io
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
	datain => \inst1|RESULT\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BOUT(0));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name1[0]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name1(0));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name1[1]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name1(1));

-- Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name1[2]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name1(2));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name1[3]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name1(3));

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name1[4]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name1(4));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name1[5]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name1(5));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name1[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name1(6));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name2[0]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name2(0));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name2[1]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name2(1));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name2[2]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name2(2));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name2[3]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name2(3));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name2[4]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name2(4));

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name2[5]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name2(5));

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name2[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name2(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_First_Four[0]~I\ : cycloneii_io
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
	datain => \inst13|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_First_Four(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_First_Four[1]~I\ : cycloneii_io
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
	datain => \inst13|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_First_Four(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_First_Four[2]~I\ : cycloneii_io
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
	datain => \inst13|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_First_Four(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_First_Four[3]~I\ : cycloneii_io
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
	datain => \inst13|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_First_Four(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_First_Four[4]~I\ : cycloneii_io
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
	datain => \inst13|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_First_Four(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_First_Four[5]~I\ : cycloneii_io
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
	datain => \inst13|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_First_Four(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_First_Four[6]~I\ : cycloneii_io
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
	datain => \inst13|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_First_Four(6));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Last_Four[0]~I\ : cycloneii_io
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
	datain => \inst15|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Last_Four(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Last_Four[1]~I\ : cycloneii_io
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
	datain => \inst15|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Last_Four(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Last_Four[2]~I\ : cycloneii_io
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
	datain => \inst15|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Last_Four(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Last_Four[3]~I\ : cycloneii_io
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
	datain => \inst15|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Last_Four(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Last_Four[4]~I\ : cycloneii_io
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
	datain => \inst15|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Last_Four(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Last_Four[5]~I\ : cycloneii_io
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
	datain => \inst15|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Last_Four(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Last_Four[6]~I\ : cycloneii_io
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
	datain => \inst15|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Last_Four(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[0]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[1]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[2]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[3]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[4]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[5]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[6]~I\ : cycloneii_io
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
	datain => \inst1|ALT_INV_NEG~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[0]~I\ : cycloneii_io
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
	datain => \inst6|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[1]~I\ : cycloneii_io
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
	datain => \inst6|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[2]~I\ : cycloneii_io
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
	padio => ww_student_id(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[3]~I\ : cycloneii_io
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
	datain => \inst6|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[4]~I\ : cycloneii_io
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
	datain => \inst6|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[5]~I\ : cycloneii_io
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
	datain => \inst6|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[6]~I\ : cycloneii_io
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
	datain => \inst6|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(6));
END structure;


