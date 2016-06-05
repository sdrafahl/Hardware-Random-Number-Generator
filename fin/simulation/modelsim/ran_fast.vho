-- Copyright (C) 1991-2012 Altera Corporation
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
-- VERSION "Version 12.1 Build 243 01/31/2013 Service Pack 1 SJ Full Version"

-- DATE "04/24/2016 18:37:54"

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

ENTITY 	generator IS
    PORT (
	pin_name1 : OUT std_logic;
	enable : IN std_logic;
	clk : IN std_logic;
	write : IN std_logic;
	seed_1 : IN std_logic;
	seed_5 : IN std_logic;
	seed_6 : IN std_logic;
	seed_4 : IN std_logic;
	seed_8 : IN std_logic;
	seed_2 : IN std_logic;
	seed_3 : IN std_logic;
	seed_7 : IN std_logic;
	pin_name2 : OUT std_logic;
	pin_name3 : OUT std_logic;
	pin_name4 : OUT std_logic;
	pin_name5 : OUT std_logic;
	pin_name6 : OUT std_logic;
	pin_name7 : OUT std_logic;
	testPin : OUT std_logic
	);
END generator;

-- Design Ports Information
-- pin_name1	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name2	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name3	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name4	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name5	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name6	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name7	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- testPin	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed_8	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- write	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed_7	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed_6	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed_5	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed_4	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed_3	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed_2	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed_1	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF generator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_write : std_logic;
SIGNAL ww_seed_1 : std_logic;
SIGNAL ww_seed_5 : std_logic;
SIGNAL ww_seed_6 : std_logic;
SIGNAL ww_seed_4 : std_logic;
SIGNAL ww_seed_8 : std_logic;
SIGNAL ww_seed_2 : std_logic;
SIGNAL ww_seed_3 : std_logic;
SIGNAL ww_seed_7 : std_logic;
SIGNAL ww_pin_name2 : std_logic;
SIGNAL ww_pin_name3 : std_logic;
SIGNAL ww_pin_name4 : std_logic;
SIGNAL ww_pin_name5 : std_logic;
SIGNAL ww_pin_name6 : std_logic;
SIGNAL ww_pin_name7 : std_logic;
SIGNAL ww_testPin : std_logic;
SIGNAL \inst1|inst4|Decoder0~1_combout\ : std_logic;
SIGNAL \inst1|inst4|Decoder0~2_combout\ : std_logic;
SIGNAL \inst1|inst4|Decoder0~3_combout\ : std_logic;
SIGNAL \inst1|inst4|c~combout\ : std_logic;
SIGNAL \inst1|inst4|b~combout\ : std_logic;
SIGNAL \inst1|inst4|a~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \seed_7~combout\ : std_logic;
SIGNAL \seed_5~combout\ : std_logic;
SIGNAL \seed_4~combout\ : std_logic;
SIGNAL \seed_2~combout\ : std_logic;
SIGNAL \write~combout\ : std_logic;
SIGNAL \seed_8~combout\ : std_logic;
SIGNAL \seed_6~combout\ : std_logic;
SIGNAL \seed_3~combout\ : std_logic;
SIGNAL \seed_1~combout\ : std_logic;
SIGNAL \inst|inst17|inst1~combout\ : std_logic;
SIGNAL \inst|inst18~regout\ : std_logic;
SIGNAL \inst|inst19|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst20~regout\ : std_logic;
SIGNAL \inst|inst22|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst23~regout\ : std_logic;
SIGNAL \inst|inst24|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst25~regout\ : std_logic;
SIGNAL \inst|inst26|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst27~regout\ : std_logic;
SIGNAL \inst|inst28|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst29~regout\ : std_logic;
SIGNAL \inst|inst30|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst31~regout\ : std_logic;
SIGNAL \inst|inst32|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst33~regout\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \inst5|inst1~0_combout\ : std_logic;
SIGNAL \inst5|inst1~regout\ : std_logic;
SIGNAL \inst5|inst~0_combout\ : std_logic;
SIGNAL \inst5|inst~regout\ : std_logic;
SIGNAL \inst1|inst4|Decoder0~0_combout\ : std_logic;
SIGNAL \inst1|inst4|d~combout\ : std_logic;
SIGNAL \inst1|inst1|inst~4_combout\ : std_logic;
SIGNAL \inst1|inst1|inst~2_combout\ : std_logic;
SIGNAL \inst1|inst1|inst~3_combout\ : std_logic;
SIGNAL \inst1|inst1|inst~regout\ : std_logic;
SIGNAL \inst1|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst3|inst~1_combout\ : std_logic;
SIGNAL \inst1|inst3|inst~regout\ : std_logic;
SIGNAL \inst1|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst~1_combout\ : std_logic;
SIGNAL \inst1|inst2|inst~regout\ : std_logic;
SIGNAL \inst1|inst|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst|inst~1_combout\ : std_logic;
SIGNAL \inst1|inst|inst~regout\ : std_logic;
SIGNAL \inst2|WideOr0~0_combout\ : std_logic;
SIGNAL \inst2|WideOr1~0_combout\ : std_logic;
SIGNAL \inst2|WideOr2~0_combout\ : std_logic;
SIGNAL \inst2|WideOr3~0_combout\ : std_logic;
SIGNAL \inst2|WideOr4~0_combout\ : std_logic;
SIGNAL \inst2|WideOr5~0_combout\ : std_logic;
SIGNAL \inst2|WideOr6~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_inst~regout\ : std_logic;
SIGNAL \inst2|ALT_INV_WideOr6~0_combout\ : std_logic;

BEGIN

pin_name1 <= ww_pin_name1;
ww_enable <= enable;
ww_clk <= clk;
ww_write <= write;
ww_seed_1 <= seed_1;
ww_seed_5 <= seed_5;
ww_seed_6 <= seed_6;
ww_seed_4 <= seed_4;
ww_seed_8 <= seed_8;
ww_seed_2 <= seed_2;
ww_seed_3 <= seed_3;
ww_seed_7 <= seed_7;
pin_name2 <= ww_pin_name2;
pin_name3 <= ww_pin_name3;
pin_name4 <= ww_pin_name4;
pin_name5 <= ww_pin_name5;
pin_name6 <= ww_pin_name6;
pin_name7 <= ww_pin_name7;
testPin <= ww_testPin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst5|ALT_INV_inst~regout\ <= NOT \inst5|inst~regout\;
\inst2|ALT_INV_WideOr6~0_combout\ <= NOT \inst2|WideOr6~0_combout\;

-- Location: LCCOMB_X20_Y11_N6
\inst1|inst4|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst4|Decoder0~1_combout\ = (!\inst5|inst1~regout\ & \inst5|inst~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst1~regout\,
	datad => \inst5|inst~regout\,
	combout => \inst1|inst4|Decoder0~1_combout\);

-- Location: LCCOMB_X20_Y11_N2
\inst1|inst4|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst4|Decoder0~2_combout\ = (\inst5|inst1~regout\ & !\inst5|inst~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst1~regout\,
	datad => \inst5|inst~regout\,
	combout => \inst1|inst4|Decoder0~2_combout\);

-- Location: LCCOMB_X20_Y11_N18
\inst1|inst4|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst4|Decoder0~3_combout\ = (\inst5|inst1~regout\) # (\inst5|inst~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst1~regout\,
	datad => \inst5|inst~regout\,
	combout => \inst1|inst4|Decoder0~3_combout\);

-- Location: LCCOMB_X20_Y11_N8
\inst1|inst4|c\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst4|c~combout\ = (\inst1|inst4|Decoder0~1_combout\ & (\enable~combout\)) # (!\inst1|inst4|Decoder0~1_combout\ & ((\inst1|inst4|c~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~combout\,
	datac => \inst1|inst4|c~combout\,
	datad => \inst1|inst4|Decoder0~1_combout\,
	combout => \inst1|inst4|c~combout\);

-- Location: LCCOMB_X20_Y11_N24
\inst1|inst4|b\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst4|b~combout\ = (\inst1|inst4|Decoder0~2_combout\ & (\enable~combout\)) # (!\inst1|inst4|Decoder0~2_combout\ & ((\inst1|inst4|b~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~combout\,
	datac => \inst1|inst4|b~combout\,
	datad => \inst1|inst4|Decoder0~2_combout\,
	combout => \inst1|inst4|b~combout\);

-- Location: LCCOMB_X20_Y11_N20
\inst1|inst4|a\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst4|a~combout\ = (\inst1|inst4|Decoder0~3_combout\ & ((\inst1|inst4|a~combout\))) # (!\inst1|inst4|Decoder0~3_combout\ & (\enable~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~combout\,
	datac => \inst1|inst4|a~combout\,
	datad => \inst1|inst4|Decoder0~3_combout\,
	combout => \inst1|inst4|a~combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed_7~I\ : cycloneii_io
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
	padio => ww_seed_7,
	combout => \seed_7~combout\);

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed_5~I\ : cycloneii_io
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
	padio => ww_seed_5,
	combout => \seed_5~combout\);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed_4~I\ : cycloneii_io
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
	padio => ww_seed_4,
	combout => \seed_4~combout\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed_2~I\ : cycloneii_io
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
	padio => ww_seed_2,
	combout => \seed_2~combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\write~I\ : cycloneii_io
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
	padio => ww_write,
	combout => \write~combout\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed_8~I\ : cycloneii_io
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
	padio => ww_seed_8,
	combout => \seed_8~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed_6~I\ : cycloneii_io
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
	padio => ww_seed_6,
	combout => \seed_6~combout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed_3~I\ : cycloneii_io
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
	padio => ww_seed_3,
	combout => \seed_3~combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed_1~I\ : cycloneii_io
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
	padio => ww_seed_1,
	combout => \seed_1~combout\);

-- Location: LCCOMB_X20_Y11_N0
\inst|inst17|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst17|inst1~combout\ = (\write~combout\ & \seed_1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write~combout\,
	datad => \seed_1~combout\,
	combout => \inst|inst17|inst1~combout\);

-- Location: LCFF_X20_Y11_N1
\inst|inst18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst|inst17|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst18~regout\);

-- Location: LCCOMB_X20_Y11_N28
\inst|inst19|inst3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst19|inst3~0_combout\ = (\write~combout\ & (\seed_2~combout\)) # (!\write~combout\ & ((\inst|inst18~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seed_2~combout\,
	datac => \write~combout\,
	datad => \inst|inst18~regout\,
	combout => \inst|inst19|inst3~0_combout\);

-- Location: LCFF_X20_Y11_N29
\inst|inst20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst|inst19|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst20~regout\);

-- Location: LCCOMB_X20_Y11_N30
\inst|inst22|inst3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst22|inst3~0_combout\ = (\write~combout\ & (\seed_3~combout\)) # (!\write~combout\ & ((\inst|inst20~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seed_3~combout\,
	datac => \write~combout\,
	datad => \inst|inst20~regout\,
	combout => \inst|inst22|inst3~0_combout\);

-- Location: LCFF_X20_Y11_N31
\inst|inst23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst|inst22|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst23~regout\);

-- Location: LCCOMB_X20_Y11_N22
\inst|inst24|inst3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst24|inst3~0_combout\ = (\write~combout\ & (\seed_4~combout\)) # (!\write~combout\ & ((\inst|inst23~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seed_4~combout\,
	datac => \write~combout\,
	datad => \inst|inst23~regout\,
	combout => \inst|inst24|inst3~0_combout\);

-- Location: LCFF_X20_Y11_N23
\inst|inst25\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst|inst24|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst25~regout\);

-- Location: LCCOMB_X20_Y11_N14
\inst|inst26|inst3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst26|inst3~0_combout\ = (\write~combout\ & (\seed_5~combout\)) # (!\write~combout\ & ((\inst|inst25~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seed_5~combout\,
	datac => \write~combout\,
	datad => \inst|inst25~regout\,
	combout => \inst|inst26|inst3~0_combout\);

-- Location: LCFF_X20_Y11_N15
\inst|inst27\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst|inst26|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst27~regout\);

-- Location: LCCOMB_X21_Y11_N20
\inst|inst28|inst3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst28|inst3~0_combout\ = (\write~combout\ & (\seed_6~combout\)) # (!\write~combout\ & ((\inst|inst27~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write~combout\,
	datac => \seed_6~combout\,
	datad => \inst|inst27~regout\,
	combout => \inst|inst28|inst3~0_combout\);

-- Location: LCFF_X21_Y11_N21
\inst|inst29\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst|inst28|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst29~regout\);

-- Location: LCCOMB_X21_Y11_N18
\inst|inst30|inst3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst30|inst3~0_combout\ = (\write~combout\ & (\seed_7~combout\)) # (!\write~combout\ & ((\inst|inst29~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seed_7~combout\,
	datab => \inst|inst29~regout\,
	datad => \write~combout\,
	combout => \inst|inst30|inst3~0_combout\);

-- Location: LCFF_X21_Y11_N19
\inst|inst31\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst|inst30|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst31~regout\);

-- Location: LCCOMB_X21_Y11_N8
\inst|inst32|inst3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst32|inst3~0_combout\ = (\write~combout\ & (\seed_8~combout\)) # (!\write~combout\ & ((\inst|inst31~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write~combout\,
	datac => \seed_8~combout\,
	datad => \inst|inst31~regout\,
	combout => \inst|inst32|inst3~0_combout\);

-- Location: LCFF_X21_Y11_N9
\inst|inst33\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst|inst32|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst33~regout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enable~I\ : cycloneii_io
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
	padio => ww_enable,
	combout => \enable~combout\);

-- Location: LCCOMB_X20_Y11_N4
\inst5|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|inst1~0_combout\ = !\inst5|inst1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst1~regout\,
	combout => \inst5|inst1~0_combout\);

-- Location: LCFF_X20_Y11_N5
\inst5|inst1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|ALT_INV_inst~regout\,
	datain => \inst5|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|inst1~regout\);

-- Location: LCCOMB_X20_Y11_N12
\inst5|inst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|inst~0_combout\ = !\inst5|inst~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst~regout\,
	combout => \inst5|inst~0_combout\);

-- Location: LCFF_X20_Y11_N13
\inst5|inst\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst5|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|inst~regout\);

-- Location: LCCOMB_X20_Y11_N26
\inst1|inst4|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst4|Decoder0~0_combout\ = (\inst5|inst1~regout\ & \inst5|inst~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst1~regout\,
	datad => \inst5|inst~regout\,
	combout => \inst1|inst4|Decoder0~0_combout\);

-- Location: LCCOMB_X20_Y11_N16
\inst1|inst4|d\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst4|d~combout\ = (\inst1|inst4|Decoder0~0_combout\ & (\enable~combout\)) # (!\inst1|inst4|Decoder0~0_combout\ & ((\inst1|inst4|d~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~combout\,
	datac => \inst1|inst4|d~combout\,
	datad => \inst1|inst4|Decoder0~0_combout\,
	combout => \inst1|inst4|d~combout\);

-- Location: LCCOMB_X21_Y11_N26
\inst1|inst1|inst~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst~4_combout\ = (\inst|inst33~regout\ & ((!\inst1|inst|inst~regout\))) # (!\inst|inst33~regout\ & (!\inst1|inst3|inst~regout\ & \inst1|inst|inst~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst33~regout\,
	datac => \inst1|inst3|inst~regout\,
	datad => \inst1|inst|inst~regout\,
	combout => \inst1|inst1|inst~4_combout\);

-- Location: LCCOMB_X21_Y11_N10
\inst1|inst1|inst~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst~2_combout\ = (\inst|inst33~regout\ & (\inst1|inst2|inst~regout\ $ (((!\inst1|inst|inst~regout\))))) # (!\inst|inst33~regout\ & (((\inst1|inst3|inst~regout\) # (!\inst1|inst|inst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst~regout\,
	datab => \inst|inst33~regout\,
	datac => \inst1|inst3|inst~regout\,
	datad => \inst1|inst|inst~regout\,
	combout => \inst1|inst1|inst~2_combout\);

-- Location: LCCOMB_X21_Y11_N12
\inst1|inst1|inst~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst~3_combout\ = (\inst1|inst4|b~combout\ & ((\inst1|inst1|inst~regout\ & ((\inst1|inst1|inst~2_combout\))) # (!\inst1|inst1|inst~regout\ & (\inst1|inst1|inst~4_combout\)))) # (!\inst1|inst4|b~combout\ & (((\inst1|inst1|inst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|b~combout\,
	datab => \inst1|inst1|inst~4_combout\,
	datac => \inst1|inst1|inst~regout\,
	datad => \inst1|inst1|inst~2_combout\,
	combout => \inst1|inst1|inst~3_combout\);

-- Location: LCFF_X21_Y11_N13
\inst1|inst1|inst\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst1|inst1|inst~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|inst~regout\);

-- Location: LCCOMB_X21_Y11_N2
\inst1|inst3|inst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst~0_combout\ = (\inst1|inst|inst~regout\ & (((\inst1|inst1|inst~regout\ & \inst1|inst2|inst~regout\)) # (!\inst|inst33~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33~regout\,
	datab => \inst1|inst|inst~regout\,
	datac => \inst1|inst1|inst~regout\,
	datad => \inst1|inst2|inst~regout\,
	combout => \inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X21_Y11_N24
\inst1|inst3|inst~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst~1_combout\ = (\inst1|inst4|d~combout\ & (\inst1|inst3|inst~0_combout\ $ (((\inst|inst33~regout\ & !\inst1|inst3|inst~regout\))))) # (!\inst1|inst4|d~combout\ & (((\inst1|inst3|inst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33~regout\,
	datab => \inst1|inst4|d~combout\,
	datac => \inst1|inst3|inst~regout\,
	datad => \inst1|inst3|inst~0_combout\,
	combout => \inst1|inst3|inst~1_combout\);

-- Location: LCFF_X21_Y11_N25
\inst1|inst3|inst\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst1|inst3|inst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|inst~regout\);

-- Location: LCCOMB_X21_Y11_N28
\inst1|inst2|inst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst~0_combout\ = (\inst|inst33~regout\ & (((!\inst1|inst1|inst~regout\)))) # (!\inst|inst33~regout\ & (\inst1|inst|inst~regout\ $ ((\inst1|inst3|inst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst~regout\,
	datab => \inst|inst33~regout\,
	datac => \inst1|inst3|inst~regout\,
	datad => \inst1|inst1|inst~regout\,
	combout => \inst1|inst2|inst~0_combout\);

-- Location: LCCOMB_X21_Y11_N22
\inst1|inst2|inst~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst~1_combout\ = (\inst1|inst4|c~combout\ & ((!\inst1|inst2|inst~0_combout\))) # (!\inst1|inst4|c~combout\ & (\inst1|inst2|inst~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|c~combout\,
	datac => \inst1|inst2|inst~regout\,
	datad => \inst1|inst2|inst~0_combout\,
	combout => \inst1|inst2|inst~1_combout\);

-- Location: LCFF_X21_Y11_N23
\inst1|inst2|inst\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst1|inst2|inst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|inst~regout\);

-- Location: LCCOMB_X21_Y11_N0
\inst1|inst|inst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|inst~0_combout\ = (\inst|inst33~regout\ & (((!\inst1|inst1|inst~regout\)))) # (!\inst|inst33~regout\ & ((\inst1|inst3|inst~regout\ & ((!\inst1|inst1|inst~regout\))) # (!\inst1|inst3|inst~regout\ & (!\inst1|inst|inst~regout\ & 
-- \inst1|inst1|inst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst~regout\,
	datab => \inst|inst33~regout\,
	datac => \inst1|inst3|inst~regout\,
	datad => \inst1|inst1|inst~regout\,
	combout => \inst1|inst|inst~0_combout\);

-- Location: LCCOMB_X21_Y11_N30
\inst1|inst|inst~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|inst~1_combout\ = (\inst1|inst4|a~combout\ & (\inst1|inst2|inst~regout\ $ (((\inst1|inst|inst~0_combout\))))) # (!\inst1|inst4|a~combout\ & (((\inst1|inst|inst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|a~combout\,
	datab => \inst1|inst2|inst~regout\,
	datac => \inst1|inst|inst~regout\,
	datad => \inst1|inst|inst~0_combout\,
	combout => \inst1|inst|inst~1_combout\);

-- Location: LCFF_X21_Y11_N31
\inst1|inst|inst\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst1|inst|inst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|inst~regout\);

-- Location: LCCOMB_X25_Y4_N8
\inst2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr0~0_combout\ = (\inst1|inst|inst~regout\ & (\inst1|inst3|inst~regout\ & (\inst1|inst2|inst~regout\ $ (\inst1|inst1|inst~regout\)))) # (!\inst1|inst|inst~regout\ & (!\inst1|inst2|inst~regout\ & (\inst1|inst3|inst~regout\ $ 
-- (\inst1|inst1|inst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst~regout\,
	datab => \inst1|inst2|inst~regout\,
	datac => \inst1|inst3|inst~regout\,
	datad => \inst1|inst1|inst~regout\,
	combout => \inst2|WideOr0~0_combout\);

-- Location: LCCOMB_X25_Y4_N10
\inst2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr1~0_combout\ = (\inst1|inst|inst~regout\ & ((\inst1|inst3|inst~regout\ & (\inst1|inst2|inst~regout\)) # (!\inst1|inst3|inst~regout\ & ((\inst1|inst1|inst~regout\))))) # (!\inst1|inst|inst~regout\ & (\inst1|inst1|inst~regout\ & 
-- (\inst1|inst2|inst~regout\ $ (\inst1|inst3|inst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst~regout\,
	datab => \inst1|inst2|inst~regout\,
	datac => \inst1|inst3|inst~regout\,
	datad => \inst1|inst1|inst~regout\,
	combout => \inst2|WideOr1~0_combout\);

-- Location: LCCOMB_X25_Y4_N12
\inst2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr2~0_combout\ = (\inst1|inst|inst~regout\ & (\inst1|inst1|inst~regout\ & ((\inst1|inst2|inst~regout\) # (!\inst1|inst3|inst~regout\)))) # (!\inst1|inst|inst~regout\ & (\inst1|inst2|inst~regout\ & (!\inst1|inst3|inst~regout\ & 
-- !\inst1|inst1|inst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst~regout\,
	datab => \inst1|inst2|inst~regout\,
	datac => \inst1|inst3|inst~regout\,
	datad => \inst1|inst1|inst~regout\,
	combout => \inst2|WideOr2~0_combout\);

-- Location: LCCOMB_X25_Y4_N2
\inst2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr3~0_combout\ = (\inst1|inst2|inst~regout\ & ((\inst1|inst3|inst~regout\ & ((\inst1|inst1|inst~regout\))) # (!\inst1|inst3|inst~regout\ & (\inst1|inst|inst~regout\ & !\inst1|inst1|inst~regout\)))) # (!\inst1|inst2|inst~regout\ & 
-- (!\inst1|inst|inst~regout\ & (\inst1|inst3|inst~regout\ $ (\inst1|inst1|inst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst~regout\,
	datab => \inst1|inst2|inst~regout\,
	datac => \inst1|inst3|inst~regout\,
	datad => \inst1|inst1|inst~regout\,
	combout => \inst2|WideOr3~0_combout\);

-- Location: LCCOMB_X25_Y4_N16
\inst2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr4~0_combout\ = (\inst1|inst2|inst~regout\ & (!\inst1|inst|inst~regout\ & (\inst1|inst3|inst~regout\))) # (!\inst1|inst2|inst~regout\ & ((\inst1|inst1|inst~regout\ & (!\inst1|inst|inst~regout\)) # (!\inst1|inst1|inst~regout\ & 
-- ((\inst1|inst3|inst~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst~regout\,
	datab => \inst1|inst2|inst~regout\,
	datac => \inst1|inst3|inst~regout\,
	datad => \inst1|inst1|inst~regout\,
	combout => \inst2|WideOr4~0_combout\);

-- Location: LCCOMB_X25_Y4_N18
\inst2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr5~0_combout\ = (\inst1|inst2|inst~regout\ & (!\inst1|inst|inst~regout\ & ((\inst1|inst3|inst~regout\) # (!\inst1|inst1|inst~regout\)))) # (!\inst1|inst2|inst~regout\ & (\inst1|inst3|inst~regout\ & (\inst1|inst|inst~regout\ $ 
-- (!\inst1|inst1|inst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst~regout\,
	datab => \inst1|inst2|inst~regout\,
	datac => \inst1|inst3|inst~regout\,
	datad => \inst1|inst1|inst~regout\,
	combout => \inst2|WideOr5~0_combout\);

-- Location: LCCOMB_X25_Y4_N20
\inst2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr6~0_combout\ = (\inst1|inst3|inst~regout\ & ((\inst1|inst|inst~regout\) # (\inst1|inst2|inst~regout\ $ (\inst1|inst1|inst~regout\)))) # (!\inst1|inst3|inst~regout\ & ((\inst1|inst2|inst~regout\) # (\inst1|inst|inst~regout\ $ 
-- (\inst1|inst1|inst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst~regout\,
	datab => \inst1|inst2|inst~regout\,
	datac => \inst1|inst3|inst~regout\,
	datad => \inst1|inst1|inst~regout\,
	combout => \inst2|WideOr6~0_combout\);

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name1~I\ : cycloneii_io
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
	datain => \inst2|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name1);

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name2~I\ : cycloneii_io
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
	datain => \inst2|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name2);

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name3~I\ : cycloneii_io
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
	datain => \inst2|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name3);

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name4~I\ : cycloneii_io
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
	datain => \inst2|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name4);

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name5~I\ : cycloneii_io
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
	datain => \inst2|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name5);

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name6~I\ : cycloneii_io
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
	datain => \inst2|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name6);

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name7~I\ : cycloneii_io
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
	datain => \inst2|ALT_INV_WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name7);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\testPin~I\ : cycloneii_io
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
	datain => \inst|inst33~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_testPin);
END structure;


