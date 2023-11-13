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

-- Generated by Quartus II Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition
-- Created on Sun Nov 12 15:58:49 2023

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY maq_estado IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        x : IN STD_LOGIC := '0';
        z : OUT STD_LOGIC
    );
END maq_estado;

ARCHITECTURE BEHAVIOR OF maq_estado IS
    TYPE type_fstate IS (state1,state2,state3);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,x)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= state1;
            z <= '0';
        ELSE
            z <= '0';
            CASE fstate IS
                WHEN state1 =>
                    IF ((x = '0')) THEN
                        reg_fstate <= state2;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= state1;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state1;
                    END IF;

                    IF ((x = '1')) THEN
                        z <= '1';
                    ELSIF ((x = '0')) THEN
                        z <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z <= '0';
                    END IF;
                WHEN state2 =>
                    IF ((x = '0')) THEN
                        reg_fstate <= state2;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= state3;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state2;
                    END IF;

                    IF ((x = '1')) THEN
                        z <= '1';
                    ELSIF ((x = '0')) THEN
                        z <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z <= '0';
                    END IF;
                WHEN state3 =>
                    IF ((x = '0')) THEN
                        reg_fstate <= state3;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= state1;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state3;
                    END IF;

                    IF ((x = '1')) THEN
                        z <= '1';
                    ELSIF ((x = '0')) THEN
                        z <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z <= '0';
                    END IF;
                WHEN OTHERS => 
                    z <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
