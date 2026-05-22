-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/20/2026 21:37:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          cronometro
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cronometro_vhd_vec_tst IS
END cronometro_vhd_vec_tst;
ARCHITECTURE cronometro_arch OF cronometro_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL btnChose : STD_LOGIC;
SIGNAL btnStop : STD_LOGIC;
SIGNAL clear : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL led : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL saida_display : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT cronometro
	PORT (
	btnChose : IN STD_LOGIC;
	btnStop : IN STD_LOGIC;
	clear : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	led : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	saida_display : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : cronometro
	PORT MAP (
-- list connections between master ports and signals
	btnChose => btnChose,
	btnStop => btnStop,
	clear => clear,
	clock => clock,
	led => led,
	saida_display => saida_display
	);

-- btnChose
t_prcs_btnChose: PROCESS
BEGIN
LOOP
	btnChose <= '0';
	WAIT FOR 250000 ps;
	btnChose <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_btnChose;

-- btnStop
t_prcs_btnStop: PROCESS
BEGIN
	btnStop <= '0';
WAIT;
END PROCESS t_prcs_btnStop;

-- clear
t_prcs_clear: PROCESS
BEGIN
	clear <= '0';
WAIT;
END PROCESS t_prcs_clear;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 25000 ps;
	clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
END cronometro_arch;
