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

-- DATE "04/23/2016 19:41:23"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	memD IS
    PORT (
	pin_name1 : OUT std_logic;
	clk : IN std_logic;
	in_0 : IN std_logic;
	mode_1 : IN std_logic;
	mode_0 : IN std_logic;
	in_1 : IN std_logic
	);
END memD;

-- Design Ports Information
-- pin_name1	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode_0	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode_1	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_0	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF memD IS
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
SIGNAL ww_clk : std_logic;
SIGNAL ww_in_0 : std_logic;
SIGNAL ww_mode_1 : std_logic;
SIGNAL ww_mode_0 : std_logic;
SIGNAL ww_in_1 : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \pin_name1~output_o\ : std_logic;
SIGNAL \in_1~input_o\ : std_logic;
SIGNAL \mode_0~input_o\ : std_logic;
SIGNAL \in_0~input_o\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \mode_1~input_o\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;

BEGIN

pin_name1 <= ww_pin_name1;
ww_clk <= clk;
ww_in_0 <= in_0;
ww_mode_1 <= mode_1;
ww_mode_0 <= mode_0;
ww_in_1 <= in_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X33_Y10_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOOBUF_X33_Y12_N2
\pin_name1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~combout\,
	devoe => ww_devoe,
	o => \pin_name1~output_o\);

-- Location: IOIBUF_X33_Y11_N1
\in_1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1,
	o => \in_1~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\mode_0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode_0,
	o => \mode_0~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\in_0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_0,
	o => \in_0~input_o\);

-- Location: FF_X32_Y11_N1
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \in_0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

-- Location: IOIBUF_X33_Y27_N8
\mode_1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode_1,
	o => \mode_1~input_o\);

-- Location: LCCOMB_X32_Y11_N0
inst4 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~combout\ = (\in_1~input_o\ & ((\mode_0~input_o\) # ((\inst~q\ & \mode_1~input_o\)))) # (!\in_1~input_o\ & (((\inst~q\ & \mode_1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_1~input_o\,
	datab => \mode_0~input_o\,
	datac => \inst~q\,
	datad => \mode_1~input_o\,
	combout => \inst4~combout\);

ww_pin_name1 <= \pin_name1~output_o\;
END structure;


