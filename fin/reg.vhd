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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 12.1 Build 243 01/31/2013 Service Pack 1 SJ Full Version"
-- CREATED		"Sat Apr 23 14:56:30 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY reg IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		WR :  IN  STD_LOGIC;
		LD_DATA :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		WA :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		R0 :  OUT  STD_LOGIC;
		R1 :  OUT  STD_LOGIC;
		R2 :  OUT  STD_LOGIC;
		R3 :  OUT  STD_LOGIC
	);
END reg;

ARCHITECTURE bdf_type OF reg IS 

COMPONENT datamod
	PORT(data : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 out : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT dem
	PORT(f : IN STD_LOGIC;
		 ctrl : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 a : OUT STD_LOGIC;
		 b : OUT STD_LOGIC;
		 c : OUT STD_LOGIC;
		 d : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT spliter
	PORT(in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 a : OUT STD_LOGIC;
		 b : OUT STD_LOGIC;
		 c : OUT STD_LOGIC;
		 d : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;


BEGIN 



b2v_inst : datamod
PORT MAP(data => SYNTHESIZED_WIRE_0,
		 enable => SYNTHESIZED_WIRE_1,
		 clk => clk,
		 out => R0);


b2v_inst1 : datamod
PORT MAP(data => SYNTHESIZED_WIRE_2,
		 enable => SYNTHESIZED_WIRE_3,
		 clk => clk,
		 out => R1);


b2v_inst2 : datamod
PORT MAP(data => SYNTHESIZED_WIRE_4,
		 enable => SYNTHESIZED_WIRE_5,
		 clk => clk,
		 out => R2);


b2v_inst3 : datamod
PORT MAP(data => SYNTHESIZED_WIRE_6,
		 enable => SYNTHESIZED_WIRE_7,
		 clk => clk,
		 out => R3);


b2v_inst4 : dem
PORT MAP(f => WR,
		 ctrl => WA,
		 a => SYNTHESIZED_WIRE_1,
		 b => SYNTHESIZED_WIRE_3,
		 c => SYNTHESIZED_WIRE_5,
		 d => SYNTHESIZED_WIRE_7);


b2v_inst6 : spliter
PORT MAP(in => LD_DATA,
		 a => SYNTHESIZED_WIRE_0,
		 b => SYNTHESIZED_WIRE_2,
		 c => SYNTHESIZED_WIRE_4,
		 d => SYNTHESIZED_WIRE_6);


END bdf_type;