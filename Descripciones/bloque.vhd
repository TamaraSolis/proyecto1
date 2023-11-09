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
-- CREATED		"Mon Nov 06 20:47:00 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY bloque IS 
	PORT
	(
		Jin :  IN  STD_LOGIC;
		Kin :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		Qn :  OUT  STD_LOGIC;
		Qout :  OUT  STD_LOGIC
	);
END bloque;

ARCHITECTURE bdf_type OF bloque IS 

SIGNAL	JKFF_inst6 :  STD_LOGIC;


BEGIN 
Qout <= JKFF_inst6;



Qn <= NOT(JKFF_inst6);



PROCESS(clk)
VARIABLE synthesized_var_for_JKFF_inst6 : STD_LOGIC;
BEGIN
IF (RISING_EDGE(clk)) THEN
	synthesized_var_for_JKFF_inst6 := (NOT(synthesized_var_for_JKFF_inst6) AND Jin) OR (synthesized_var_for_JKFF_inst6 AND (NOT(Kin)));
END IF;
	JKFF_inst6 <= synthesized_var_for_JKFF_inst6;
END PROCESS;


END bdf_type;