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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Mon Nov 13 21:08:42 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY sumador_completo IS 
	PORT
	(
		suma_resta :  IN  STD_LOGIC;
		a0 :  IN  STD_LOGIC;
		b0 :  IN  STD_LOGIC;
		a1 :  IN  STD_LOGIC;
		b1 :  IN  STD_LOGIC;
		a2 :  IN  STD_LOGIC;
		b2 :  IN  STD_LOGIC;
		a3 :  IN  STD_LOGIC;
		b3 :  IN  STD_LOGIC;
		f4 :  OUT  STD_LOGIC;
		C :  OUT  STD_LOGIC;
		f2 :  OUT  STD_LOGIC;
		f1 :  OUT  STD_LOGIC;
		f0 :  OUT  STD_LOGIC;
		V :  OUT  STD_LOGIC;
		Z :  OUT  STD_LOGIC
	);
END sumador_completo;

ARCHITECTURE bdf_type OF sumador_completo IS 

COMPONENT sumador
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 cin : IN STD_LOGIC;
		 f : OUT STD_LOGIC;
		 cout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;


BEGIN 



b2v_inst : sumador
PORT MAP(a => a2,
		 b => SYNTHESIZED_WIRE_0,
		 cin => SYNTHESIZED_WIRE_19,
		 f => f2,
		 cout => SYNTHESIZED_WIRE_20);


b2v_inst1 : sumador
PORT MAP(a => a3,
		 b => SYNTHESIZED_WIRE_2,
		 cin => SYNTHESIZED_WIRE_20,
		 f => f4,
		 cout => SYNTHESIZED_WIRE_21);


V <= SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_6 AND SYNTHESIZED_WIRE_7 AND SYNTHESIZED_WIRE_21;


SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_9 AND b3 AND a3;


SYNTHESIZED_WIRE_6 <= NOT(b3);



SYNTHESIZED_WIRE_7 <= NOT(a3);



SYNTHESIZED_WIRE_9 <= NOT(SYNTHESIZED_WIRE_21);



Z <= NOT(SYNTHESIZED_WIRE_22 OR SYNTHESIZED_WIRE_20 OR SYNTHESIZED_WIRE_19 OR SYNTHESIZED_WIRE_21);


b2v_inst2 : sumador
PORT MAP(a => a1,
		 b => SYNTHESIZED_WIRE_15,
		 cin => SYNTHESIZED_WIRE_22,
		 f => f1,
		 cout => SYNTHESIZED_WIRE_19);


b2v_inst3 : sumador
PORT MAP(a => a0,
		 b => SYNTHESIZED_WIRE_17,
		 cin => suma_resta,
		 f => f0,
		 cout => SYNTHESIZED_WIRE_22);


SYNTHESIZED_WIRE_17 <= suma_resta XOR b0;


SYNTHESIZED_WIRE_15 <= suma_resta XOR b1;


SYNTHESIZED_WIRE_0 <= suma_resta XOR b2;


SYNTHESIZED_WIRE_2 <= suma_resta XOR b3;


C <= SYNTHESIZED_WIRE_21 XOR suma_resta;


END bdf_type;