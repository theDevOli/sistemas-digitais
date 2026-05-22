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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "05/20/2026 21:37:08"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cronometro IS
    PORT (
	clock : IN std_logic;
	clear : IN std_logic;
	btnChose : IN std_logic;
	btnStop : IN std_logic;
	saida_display : OUT std_logic_vector(6 DOWNTO 0);
	led : OUT IEEE.NUMERIC_STD.unsigned(2 DOWNTO 0)
	);
END cronometro;

-- Design Ports Information
-- saida_display[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_display[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_display[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_display[3]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_display[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_display[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_display[6]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btnChose	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btnStop	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cronometro IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_btnChose : std_logic;
SIGNAL ww_btnStop : std_logic;
SIGNAL ww_saida_display : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \btnStop~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \U1|U_DIV|Add0~5_sumout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \U1|U_DIV|Add0~6\ : std_logic;
SIGNAL \U1|U_DIV|Add0~97_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Add0~98\ : std_logic;
SIGNAL \U1|U_DIV|Add0~93_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Add0~94\ : std_logic;
SIGNAL \U1|U_DIV|Add0~89_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Add0~90\ : std_logic;
SIGNAL \U1|U_DIV|Add0~85_sumout\ : std_logic;
SIGNAL \U1|U_DIV|counter_div[4]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U_DIV|Add0~86\ : std_logic;
SIGNAL \U1|U_DIV|Add0~81_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Add0~82\ : std_logic;
SIGNAL \U1|U_DIV|Add0~77_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Add0~78\ : std_logic;
SIGNAL \U1|U_DIV|Add0~73_sumout\ : std_logic;
SIGNAL \U1|U_DIV|counter_div[7]~feeder_combout\ : std_logic;
SIGNAL \U1|U_DIV|counter_div[7]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U_DIV|Add0~74\ : std_logic;
SIGNAL \U1|U_DIV|Add0~69_sumout\ : std_logic;
SIGNAL \U1|U_DIV|counter_div[8]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U_DIV|Add0~70\ : std_logic;
SIGNAL \U1|U_DIV|Add0~65_sumout\ : std_logic;
SIGNAL \U1|U_DIV|counter_div[9]~feeder_combout\ : std_logic;
SIGNAL \U1|U_DIV|counter_div[9]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U_DIV|Add0~66\ : std_logic;
SIGNAL \U1|U_DIV|Add0~61_sumout\ : std_logic;
SIGNAL \U1|U_DIV|counter_div[10]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U_DIV|Add0~62\ : std_logic;
SIGNAL \U1|U_DIV|Add0~9_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Add0~10\ : std_logic;
SIGNAL \U1|U_DIV|Add0~53_sumout\ : std_logic;
SIGNAL \U1|U_DIV|counter_div[12]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U_DIV|Add0~54\ : std_logic;
SIGNAL \U1|U_DIV|Add0~1_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Add0~2\ : std_logic;
SIGNAL \U1|U_DIV|Add0~49_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Add0~50\ : std_logic;
SIGNAL \U1|U_DIV|Add0~45_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Add0~46\ : std_logic;
SIGNAL \U1|U_DIV|Add0~41_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Add0~42\ : std_logic;
SIGNAL \U1|U_DIV|Add0~37_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Add0~38\ : std_logic;
SIGNAL \U1|U_DIV|Add0~33_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Equal0~1_combout\ : std_logic;
SIGNAL \U1|U_DIV|Add0~34\ : std_logic;
SIGNAL \U1|U_DIV|Add0~29_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Add0~30\ : std_logic;
SIGNAL \U1|U_DIV|Add0~25_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Add0~26\ : std_logic;
SIGNAL \U1|U_DIV|Add0~21_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Add0~22\ : std_logic;
SIGNAL \U1|U_DIV|Add0~17_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Add0~18\ : std_logic;
SIGNAL \U1|U_DIV|Add0~13_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Equal0~0_combout\ : std_logic;
SIGNAL \U1|U_DIV|Add0~14\ : std_logic;
SIGNAL \U1|U_DIV|Add0~57_sumout\ : std_logic;
SIGNAL \U1|U_DIV|Equal0~2_combout\ : std_logic;
SIGNAL \U1|U_DIV|Equal0~3_combout\ : std_logic;
SIGNAL \U1|U_DIV|Equal0~4_combout\ : std_logic;
SIGNAL \U1|U_DIV|tick_signal~q\ : std_logic;
SIGNAL \U2|contador[0]~2_combout\ : std_logic;
SIGNAL \U1|contador[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|contador~2_combout\ : std_logic;
SIGNAL \U1|contador[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|contador~0_combout\ : std_logic;
SIGNAL \U1|contador[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|contador[2]~1_combout\ : std_logic;
SIGNAL \btnChose~input_o\ : std_logic;
SIGNAL \U2|contador[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|contador~0_combout\ : std_logic;
SIGNAL \U2|Add1~0_combout\ : std_logic;
SIGNAL \U2|contador~1_combout\ : std_logic;
SIGNAL \U2|contador[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|U1|Mux6~0_combout\ : std_logic;
SIGNAL \saida_display~6_combout\ : std_logic;
SIGNAL \saida_display[0]$latch~combout\ : std_logic;
SIGNAL \U2|contador[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|U1|Mux5~0_combout\ : std_logic;
SIGNAL \saida_display~5_combout\ : std_logic;
SIGNAL \saida_display[1]$latch~combout\ : std_logic;
SIGNAL \U2|contador[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|U1|Mux4~0_combout\ : std_logic;
SIGNAL \saida_display~4_combout\ : std_logic;
SIGNAL \saida_display[2]$latch~combout\ : std_logic;
SIGNAL \U2|U1|Mux3~0_combout\ : std_logic;
SIGNAL \saida_display~3_combout\ : std_logic;
SIGNAL \saida_display[3]$latch~combout\ : std_logic;
SIGNAL \U2|U1|Mux2~0_combout\ : std_logic;
SIGNAL \saida_display~2_combout\ : std_logic;
SIGNAL \saida_display[4]$latch~combout\ : std_logic;
SIGNAL \U2|U1|Mux1~0_combout\ : std_logic;
SIGNAL \saida_display~1_combout\ : std_logic;
SIGNAL \saida_display[5]$latch~combout\ : std_logic;
SIGNAL \U2|U1|Mux0~0_combout\ : std_logic;
SIGNAL \saida_display~0_combout\ : std_logic;
SIGNAL \saida_display[6]$latch~combout\ : std_logic;
SIGNAL \U1|temp_led[0]~0_combout\ : std_logic;
SIGNAL \U2|temp_led[0]~0_combout\ : std_logic;
SIGNAL \led~0_combout\ : std_logic;
SIGNAL \led[0]$latch~combout\ : std_logic;
SIGNAL \U2|temp_led[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Equal1~0_combout\ : std_logic;
SIGNAL \U2|temp_led[2]~2_combout\ : std_logic;
SIGNAL \U2|temp_led[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|temp_led[1]~1_combout\ : std_logic;
SIGNAL \U1|Equal1~0_combout\ : std_logic;
SIGNAL \U1|temp_led[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|temp_led[2]~2_combout\ : std_logic;
SIGNAL \U1|temp_led[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|temp_led[1]~1_combout\ : std_logic;
SIGNAL \led~1_combout\ : std_logic;
SIGNAL \led[1]$latch~combout\ : std_logic;
SIGNAL \led~2_combout\ : std_logic;
SIGNAL \led[2]$latch~combout\ : std_logic;
SIGNAL \U2|temp_led\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|temp_led\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U_DIV|counter_div\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \U2|ALT_INV_temp_led[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|ALT_INV_temp_led[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_temp_led[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|ALT_INV_temp_led[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_contador[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_contador[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_contador[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|ALT_INV_contador[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|ALT_INV_contador[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|ALT_INV_contador[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_contador[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U_DIV|ALT_INV_counter_div[4]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U_DIV|ALT_INV_counter_div[7]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U_DIV|ALT_INV_counter_div[8]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U_DIV|ALT_INV_counter_div[9]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U_DIV|ALT_INV_counter_div[10]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U_DIV|ALT_INV_counter_div[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clear~input_o\ : std_logic;
SIGNAL \ALT_INV_btnStop~input_o\ : std_logic;
SIGNAL \ALT_INV_btnChose~input_o\ : std_logic;
SIGNAL \ALT_INV_led[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_led[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_led[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida_display[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida_display[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida_display[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida_display[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida_display[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida_display[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida_display[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida_display~6_combout\ : std_logic;
SIGNAL \ALT_INV_saida_display~5_combout\ : std_logic;
SIGNAL \ALT_INV_saida_display~4_combout\ : std_logic;
SIGNAL \ALT_INV_saida_display~3_combout\ : std_logic;
SIGNAL \ALT_INV_saida_display~2_combout\ : std_logic;
SIGNAL \ALT_INV_saida_display~1_combout\ : std_logic;
SIGNAL \ALT_INV_saida_display~0_combout\ : std_logic;
SIGNAL \U1|U_DIV|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \U1|U_DIV|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \U1|U_DIV|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \U1|U_DIV|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \U1|U_DIV|ALT_INV_tick_signal~q\ : std_logic;
SIGNAL \ALT_INV_led~2_combout\ : std_logic;
SIGNAL \U2|ALT_INV_temp_led\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|ALT_INV_temp_led\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_led~1_combout\ : std_logic;
SIGNAL \ALT_INV_led~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|ALT_INV_contador\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \U1|U_DIV|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \U1|U_DIV|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \U1|U_DIV|ALT_INV_counter_div\ : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_clear <= clear;
ww_btnChose <= btnChose;
ww_btnStop <= btnStop;
saida_display <= ww_saida_display;
led <= IEEE.NUMERIC_STD.UNSIGNED(ww_led);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U2|ALT_INV_temp_led[2]~DUPLICATE_q\ <= NOT \U2|temp_led[2]~DUPLICATE_q\;
\U1|ALT_INV_temp_led[2]~DUPLICATE_q\ <= NOT \U1|temp_led[2]~DUPLICATE_q\;
\U2|ALT_INV_temp_led[0]~DUPLICATE_q\ <= NOT \U2|temp_led[0]~DUPLICATE_q\;
\U1|ALT_INV_temp_led[0]~DUPLICATE_q\ <= NOT \U1|temp_led[0]~DUPLICATE_q\;
\U2|ALT_INV_contador[3]~DUPLICATE_q\ <= NOT \U2|contador[3]~DUPLICATE_q\;
\U2|ALT_INV_contador[2]~DUPLICATE_q\ <= NOT \U2|contador[2]~DUPLICATE_q\;
\U2|ALT_INV_contador[1]~DUPLICATE_q\ <= NOT \U2|contador[1]~DUPLICATE_q\;
\U1|ALT_INV_contador[3]~DUPLICATE_q\ <= NOT \U1|contador[3]~DUPLICATE_q\;
\U1|ALT_INV_contador[2]~DUPLICATE_q\ <= NOT \U1|contador[2]~DUPLICATE_q\;
\U1|ALT_INV_contador[1]~DUPLICATE_q\ <= NOT \U1|contador[1]~DUPLICATE_q\;
\U2|ALT_INV_contador[0]~DUPLICATE_q\ <= NOT \U2|contador[0]~DUPLICATE_q\;
\U1|U_DIV|ALT_INV_counter_div[4]~DUPLICATE_q\ <= NOT \U1|U_DIV|counter_div[4]~DUPLICATE_q\;
\U1|U_DIV|ALT_INV_counter_div[7]~DUPLICATE_q\ <= NOT \U1|U_DIV|counter_div[7]~DUPLICATE_q\;
\U1|U_DIV|ALT_INV_counter_div[8]~DUPLICATE_q\ <= NOT \U1|U_DIV|counter_div[8]~DUPLICATE_q\;
\U1|U_DIV|ALT_INV_counter_div[9]~DUPLICATE_q\ <= NOT \U1|U_DIV|counter_div[9]~DUPLICATE_q\;
\U1|U_DIV|ALT_INV_counter_div[10]~DUPLICATE_q\ <= NOT \U1|U_DIV|counter_div[10]~DUPLICATE_q\;
\U1|U_DIV|ALT_INV_counter_div[12]~DUPLICATE_q\ <= NOT \U1|U_DIV|counter_div[12]~DUPLICATE_q\;
\ALT_INV_clear~input_o\ <= NOT \clear~input_o\;
\ALT_INV_btnStop~input_o\ <= NOT \btnStop~input_o\;
\ALT_INV_btnChose~input_o\ <= NOT \btnChose~input_o\;
\ALT_INV_led[2]$latch~combout\ <= NOT \led[2]$latch~combout\;
\ALT_INV_led[1]$latch~combout\ <= NOT \led[1]$latch~combout\;
\ALT_INV_led[0]$latch~combout\ <= NOT \led[0]$latch~combout\;
\ALT_INV_saida_display[6]$latch~combout\ <= NOT \saida_display[6]$latch~combout\;
\ALT_INV_saida_display[5]$latch~combout\ <= NOT \saida_display[5]$latch~combout\;
\ALT_INV_saida_display[4]$latch~combout\ <= NOT \saida_display[4]$latch~combout\;
\ALT_INV_saida_display[3]$latch~combout\ <= NOT \saida_display[3]$latch~combout\;
\ALT_INV_saida_display[2]$latch~combout\ <= NOT \saida_display[2]$latch~combout\;
\ALT_INV_saida_display[1]$latch~combout\ <= NOT \saida_display[1]$latch~combout\;
\ALT_INV_saida_display[0]$latch~combout\ <= NOT \saida_display[0]$latch~combout\;
\ALT_INV_saida_display~6_combout\ <= NOT \saida_display~6_combout\;
\ALT_INV_saida_display~5_combout\ <= NOT \saida_display~5_combout\;
\ALT_INV_saida_display~4_combout\ <= NOT \saida_display~4_combout\;
\ALT_INV_saida_display~3_combout\ <= NOT \saida_display~3_combout\;
\ALT_INV_saida_display~2_combout\ <= NOT \saida_display~2_combout\;
\ALT_INV_saida_display~1_combout\ <= NOT \saida_display~1_combout\;
\ALT_INV_saida_display~0_combout\ <= NOT \saida_display~0_combout\;
\U1|U_DIV|ALT_INV_Equal0~3_combout\ <= NOT \U1|U_DIV|Equal0~3_combout\;
\U1|U_DIV|ALT_INV_Equal0~2_combout\ <= NOT \U1|U_DIV|Equal0~2_combout\;
\U1|U_DIV|ALT_INV_Equal0~1_combout\ <= NOT \U1|U_DIV|Equal0~1_combout\;
\U1|U_DIV|ALT_INV_Equal0~0_combout\ <= NOT \U1|U_DIV|Equal0~0_combout\;
\U2|ALT_INV_Equal1~0_combout\ <= NOT \U2|Equal1~0_combout\;
\U1|ALT_INV_Equal1~0_combout\ <= NOT \U1|Equal1~0_combout\;
\U1|U_DIV|ALT_INV_tick_signal~q\ <= NOT \U1|U_DIV|tick_signal~q\;
\ALT_INV_led~2_combout\ <= NOT \led~2_combout\;
\U2|ALT_INV_temp_led\(2) <= NOT \U2|temp_led\(2);
\U1|ALT_INV_temp_led\(2) <= NOT \U1|temp_led\(2);
\ALT_INV_led~1_combout\ <= NOT \led~1_combout\;
\U2|ALT_INV_temp_led\(1) <= NOT \U2|temp_led\(1);
\U1|ALT_INV_temp_led\(1) <= NOT \U1|temp_led\(1);
\ALT_INV_led~0_combout\ <= NOT \led~0_combout\;
\U2|ALT_INV_temp_led\(0) <= NOT \U2|temp_led\(0);
\U1|ALT_INV_temp_led\(0) <= NOT \U1|temp_led\(0);
\U2|U1|ALT_INV_Mux0~0_combout\ <= NOT \U2|U1|Mux0~0_combout\;
\U2|U1|ALT_INV_Mux1~0_combout\ <= NOT \U2|U1|Mux1~0_combout\;
\U2|U1|ALT_INV_Mux2~0_combout\ <= NOT \U2|U1|Mux2~0_combout\;
\U2|U1|ALT_INV_Mux3~0_combout\ <= NOT \U2|U1|Mux3~0_combout\;
\U2|U1|ALT_INV_Mux4~0_combout\ <= NOT \U2|U1|Mux4~0_combout\;
\U2|U1|ALT_INV_Mux5~0_combout\ <= NOT \U2|U1|Mux5~0_combout\;
\U2|U1|ALT_INV_Mux6~0_combout\ <= NOT \U2|U1|Mux6~0_combout\;
\U2|ALT_INV_contador\(3) <= NOT \U2|contador\(3);
\U2|ALT_INV_contador\(2) <= NOT \U2|contador\(2);
\U2|ALT_INV_contador\(1) <= NOT \U2|contador\(1);
\U1|ALT_INV_contador\(3) <= NOT \U1|contador\(3);
\U1|ALT_INV_contador\(2) <= NOT \U1|contador\(2);
\U1|ALT_INV_contador\(1) <= NOT \U1|contador\(1);
\U2|ALT_INV_contador\(0) <= NOT \U2|contador\(0);
\U1|U_DIV|ALT_INV_Add0~73_sumout\ <= NOT \U1|U_DIV|Add0~73_sumout\;
\U1|U_DIV|ALT_INV_Add0~65_sumout\ <= NOT \U1|U_DIV|Add0~65_sumout\;
\U1|U_DIV|ALT_INV_counter_div\(1) <= NOT \U1|U_DIV|counter_div\(1);
\U1|U_DIV|ALT_INV_counter_div\(2) <= NOT \U1|U_DIV|counter_div\(2);
\U1|U_DIV|ALT_INV_counter_div\(3) <= NOT \U1|U_DIV|counter_div\(3);
\U1|U_DIV|ALT_INV_counter_div\(4) <= NOT \U1|U_DIV|counter_div\(4);
\U1|U_DIV|ALT_INV_counter_div\(5) <= NOT \U1|U_DIV|counter_div\(5);
\U1|U_DIV|ALT_INV_counter_div\(6) <= NOT \U1|U_DIV|counter_div\(6);
\U1|U_DIV|ALT_INV_counter_div\(7) <= NOT \U1|U_DIV|counter_div\(7);
\U1|U_DIV|ALT_INV_counter_div\(8) <= NOT \U1|U_DIV|counter_div\(8);
\U1|U_DIV|ALT_INV_counter_div\(9) <= NOT \U1|U_DIV|counter_div\(9);
\U1|U_DIV|ALT_INV_counter_div\(10) <= NOT \U1|U_DIV|counter_div\(10);
\U1|U_DIV|ALT_INV_counter_div\(24) <= NOT \U1|U_DIV|counter_div\(24);
\U1|U_DIV|ALT_INV_counter_div\(12) <= NOT \U1|U_DIV|counter_div\(12);
\U1|U_DIV|ALT_INV_counter_div\(14) <= NOT \U1|U_DIV|counter_div\(14);
\U1|U_DIV|ALT_INV_counter_div\(15) <= NOT \U1|U_DIV|counter_div\(15);
\U1|U_DIV|ALT_INV_counter_div\(16) <= NOT \U1|U_DIV|counter_div\(16);
\U1|U_DIV|ALT_INV_counter_div\(17) <= NOT \U1|U_DIV|counter_div\(17);
\U1|U_DIV|ALT_INV_counter_div\(18) <= NOT \U1|U_DIV|counter_div\(18);
\U1|U_DIV|ALT_INV_counter_div\(19) <= NOT \U1|U_DIV|counter_div\(19);
\U1|U_DIV|ALT_INV_counter_div\(20) <= NOT \U1|U_DIV|counter_div\(20);
\U1|U_DIV|ALT_INV_counter_div\(21) <= NOT \U1|U_DIV|counter_div\(21);
\U1|U_DIV|ALT_INV_counter_div\(22) <= NOT \U1|U_DIV|counter_div\(22);
\U1|U_DIV|ALT_INV_counter_div\(23) <= NOT \U1|U_DIV|counter_div\(23);
\U1|U_DIV|ALT_INV_counter_div\(11) <= NOT \U1|U_DIV|counter_div\(11);
\U1|U_DIV|ALT_INV_counter_div\(0) <= NOT \U1|U_DIV|counter_div\(0);
\U1|U_DIV|ALT_INV_counter_div\(13) <= NOT \U1|U_DIV|counter_div\(13);

-- Location: IOOBUF_X89_Y38_N5
\saida_display[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_display[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida_display(0));

-- Location: IOOBUF_X89_Y36_N22
\saida_display[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_display[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida_display(1));

-- Location: IOOBUF_X89_Y37_N22
\saida_display[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_display[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida_display(2));

-- Location: IOOBUF_X89_Y38_N56
\saida_display[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_display[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida_display(3));

-- Location: IOOBUF_X89_Y38_N39
\saida_display[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_display[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida_display(4));

-- Location: IOOBUF_X89_Y35_N45
\saida_display[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_display[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida_display(5));

-- Location: IOOBUF_X89_Y37_N5
\saida_display[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_display[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida_display(6));

-- Location: IOOBUF_X89_Y36_N5
\led[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_led(0));

-- Location: IOOBUF_X89_Y36_N56
\led[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_led(1));

-- Location: IOOBUF_X89_Y36_N39
\led[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_led(2));

-- Location: IOIBUF_X89_Y38_N21
\btnStop~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btnStop,
	o => \btnStop~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y38_N30
\U1|U_DIV|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~5_sumout\ = SUM(( \U1|U_DIV|counter_div\(0) ) + ( VCC ) + ( !VCC ))
-- \U1|U_DIV|Add0~6\ = CARRY(( \U1|U_DIV|counter_div\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U_DIV|ALT_INV_counter_div\(0),
	cin => GND,
	sumout => \U1|U_DIV|Add0~5_sumout\,
	cout => \U1|U_DIV|Add0~6\);

-- Location: IOIBUF_X89_Y37_N38
\clear~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: FF_X88_Y38_N31
\U1|U_DIV|counter_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~5_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(0));

-- Location: LABCELL_X88_Y38_N33
\U1|U_DIV|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~97_sumout\ = SUM(( \U1|U_DIV|counter_div\(1) ) + ( GND ) + ( \U1|U_DIV|Add0~6\ ))
-- \U1|U_DIV|Add0~98\ = CARRY(( \U1|U_DIV|counter_div\(1) ) + ( GND ) + ( \U1|U_DIV|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U_DIV|ALT_INV_counter_div\(1),
	cin => \U1|U_DIV|Add0~6\,
	sumout => \U1|U_DIV|Add0~97_sumout\,
	cout => \U1|U_DIV|Add0~98\);

-- Location: FF_X88_Y38_N35
\U1|U_DIV|counter_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~97_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(1));

-- Location: LABCELL_X88_Y38_N36
\U1|U_DIV|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~93_sumout\ = SUM(( \U1|U_DIV|counter_div\(2) ) + ( GND ) + ( \U1|U_DIV|Add0~98\ ))
-- \U1|U_DIV|Add0~94\ = CARRY(( \U1|U_DIV|counter_div\(2) ) + ( GND ) + ( \U1|U_DIV|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|U_DIV|ALT_INV_counter_div\(2),
	cin => \U1|U_DIV|Add0~98\,
	sumout => \U1|U_DIV|Add0~93_sumout\,
	cout => \U1|U_DIV|Add0~94\);

-- Location: FF_X88_Y38_N38
\U1|U_DIV|counter_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~93_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(2));

-- Location: LABCELL_X88_Y38_N39
\U1|U_DIV|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~89_sumout\ = SUM(( \U1|U_DIV|counter_div\(3) ) + ( GND ) + ( \U1|U_DIV|Add0~94\ ))
-- \U1|U_DIV|Add0~90\ = CARRY(( \U1|U_DIV|counter_div\(3) ) + ( GND ) + ( \U1|U_DIV|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U_DIV|ALT_INV_counter_div\(3),
	cin => \U1|U_DIV|Add0~94\,
	sumout => \U1|U_DIV|Add0~89_sumout\,
	cout => \U1|U_DIV|Add0~90\);

-- Location: FF_X88_Y38_N41
\U1|U_DIV|counter_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~89_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(3));

-- Location: LABCELL_X88_Y38_N42
\U1|U_DIV|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~85_sumout\ = SUM(( \U1|U_DIV|counter_div[4]~DUPLICATE_q\ ) + ( GND ) + ( \U1|U_DIV|Add0~90\ ))
-- \U1|U_DIV|Add0~86\ = CARRY(( \U1|U_DIV|counter_div[4]~DUPLICATE_q\ ) + ( GND ) + ( \U1|U_DIV|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|U_DIV|ALT_INV_counter_div[4]~DUPLICATE_q\,
	cin => \U1|U_DIV|Add0~90\,
	sumout => \U1|U_DIV|Add0~85_sumout\,
	cout => \U1|U_DIV|Add0~86\);

-- Location: FF_X88_Y38_N43
\U1|U_DIV|counter_div[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~85_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div[4]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y38_N45
\U1|U_DIV|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~81_sumout\ = SUM(( \U1|U_DIV|counter_div\(5) ) + ( GND ) + ( \U1|U_DIV|Add0~86\ ))
-- \U1|U_DIV|Add0~82\ = CARRY(( \U1|U_DIV|counter_div\(5) ) + ( GND ) + ( \U1|U_DIV|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|U_DIV|ALT_INV_counter_div\(5),
	cin => \U1|U_DIV|Add0~86\,
	sumout => \U1|U_DIV|Add0~81_sumout\,
	cout => \U1|U_DIV|Add0~82\);

-- Location: FF_X88_Y38_N47
\U1|U_DIV|counter_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~81_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(5));

-- Location: LABCELL_X88_Y38_N48
\U1|U_DIV|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~77_sumout\ = SUM(( \U1|U_DIV|counter_div\(6) ) + ( GND ) + ( \U1|U_DIV|Add0~82\ ))
-- \U1|U_DIV|Add0~78\ = CARRY(( \U1|U_DIV|counter_div\(6) ) + ( GND ) + ( \U1|U_DIV|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U_DIV|ALT_INV_counter_div\(6),
	cin => \U1|U_DIV|Add0~82\,
	sumout => \U1|U_DIV|Add0~77_sumout\,
	cout => \U1|U_DIV|Add0~78\);

-- Location: FF_X88_Y38_N50
\U1|U_DIV|counter_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~77_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(6));

-- Location: LABCELL_X88_Y38_N51
\U1|U_DIV|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~73_sumout\ = SUM(( \U1|U_DIV|counter_div[7]~DUPLICATE_q\ ) + ( GND ) + ( \U1|U_DIV|Add0~78\ ))
-- \U1|U_DIV|Add0~74\ = CARRY(( \U1|U_DIV|counter_div[7]~DUPLICATE_q\ ) + ( GND ) + ( \U1|U_DIV|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|U_DIV|ALT_INV_counter_div[7]~DUPLICATE_q\,
	cin => \U1|U_DIV|Add0~78\,
	sumout => \U1|U_DIV|Add0~73_sumout\,
	cout => \U1|U_DIV|Add0~74\);

-- Location: MLABCELL_X87_Y37_N54
\U1|U_DIV|counter_div[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|counter_div[7]~feeder_combout\ = ( \U1|U_DIV|Add0~73_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|U_DIV|ALT_INV_Add0~73_sumout\,
	combout => \U1|U_DIV|counter_div[7]~feeder_combout\);

-- Location: FF_X87_Y37_N55
\U1|U_DIV|counter_div[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|counter_div[7]~feeder_combout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div[7]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y38_N54
\U1|U_DIV|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~69_sumout\ = SUM(( \U1|U_DIV|counter_div[8]~DUPLICATE_q\ ) + ( GND ) + ( \U1|U_DIV|Add0~74\ ))
-- \U1|U_DIV|Add0~70\ = CARRY(( \U1|U_DIV|counter_div[8]~DUPLICATE_q\ ) + ( GND ) + ( \U1|U_DIV|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|U_DIV|ALT_INV_counter_div[8]~DUPLICATE_q\,
	cin => \U1|U_DIV|Add0~74\,
	sumout => \U1|U_DIV|Add0~69_sumout\,
	cout => \U1|U_DIV|Add0~70\);

-- Location: FF_X88_Y38_N56
\U1|U_DIV|counter_div[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~69_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div[8]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y38_N57
\U1|U_DIV|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~65_sumout\ = SUM(( \U1|U_DIV|counter_div[9]~DUPLICATE_q\ ) + ( GND ) + ( \U1|U_DIV|Add0~70\ ))
-- \U1|U_DIV|Add0~66\ = CARRY(( \U1|U_DIV|counter_div[9]~DUPLICATE_q\ ) + ( GND ) + ( \U1|U_DIV|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|U_DIV|ALT_INV_counter_div[9]~DUPLICATE_q\,
	cin => \U1|U_DIV|Add0~70\,
	sumout => \U1|U_DIV|Add0~65_sumout\,
	cout => \U1|U_DIV|Add0~66\);

-- Location: MLABCELL_X87_Y37_N48
\U1|U_DIV|counter_div[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|counter_div[9]~feeder_combout\ = ( \U1|U_DIV|Add0~65_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|U_DIV|ALT_INV_Add0~65_sumout\,
	combout => \U1|U_DIV|counter_div[9]~feeder_combout\);

-- Location: FF_X87_Y37_N49
\U1|U_DIV|counter_div[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|counter_div[9]~feeder_combout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div[9]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y37_N0
\U1|U_DIV|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~61_sumout\ = SUM(( \U1|U_DIV|counter_div[10]~DUPLICATE_q\ ) + ( GND ) + ( \U1|U_DIV|Add0~66\ ))
-- \U1|U_DIV|Add0~62\ = CARRY(( \U1|U_DIV|counter_div[10]~DUPLICATE_q\ ) + ( GND ) + ( \U1|U_DIV|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|U_DIV|ALT_INV_counter_div[10]~DUPLICATE_q\,
	cin => \U1|U_DIV|Add0~66\,
	sumout => \U1|U_DIV|Add0~61_sumout\,
	cout => \U1|U_DIV|Add0~62\);

-- Location: FF_X88_Y37_N2
\U1|U_DIV|counter_div[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~61_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div[10]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y37_N3
\U1|U_DIV|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~9_sumout\ = SUM(( \U1|U_DIV|counter_div\(11) ) + ( GND ) + ( \U1|U_DIV|Add0~62\ ))
-- \U1|U_DIV|Add0~10\ = CARRY(( \U1|U_DIV|counter_div\(11) ) + ( GND ) + ( \U1|U_DIV|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|U_DIV|ALT_INV_counter_div\(11),
	cin => \U1|U_DIV|Add0~62\,
	sumout => \U1|U_DIV|Add0~9_sumout\,
	cout => \U1|U_DIV|Add0~10\);

-- Location: FF_X88_Y37_N5
\U1|U_DIV|counter_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~9_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(11));

-- Location: LABCELL_X88_Y37_N6
\U1|U_DIV|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~53_sumout\ = SUM(( \U1|U_DIV|counter_div[12]~DUPLICATE_q\ ) + ( GND ) + ( \U1|U_DIV|Add0~10\ ))
-- \U1|U_DIV|Add0~54\ = CARRY(( \U1|U_DIV|counter_div[12]~DUPLICATE_q\ ) + ( GND ) + ( \U1|U_DIV|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|U_DIV|ALT_INV_counter_div[12]~DUPLICATE_q\,
	cin => \U1|U_DIV|Add0~10\,
	sumout => \U1|U_DIV|Add0~53_sumout\,
	cout => \U1|U_DIV|Add0~54\);

-- Location: FF_X88_Y37_N7
\U1|U_DIV|counter_div[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~53_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div[12]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y37_N9
\U1|U_DIV|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~1_sumout\ = SUM(( \U1|U_DIV|counter_div\(13) ) + ( GND ) + ( \U1|U_DIV|Add0~54\ ))
-- \U1|U_DIV|Add0~2\ = CARRY(( \U1|U_DIV|counter_div\(13) ) + ( GND ) + ( \U1|U_DIV|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U_DIV|ALT_INV_counter_div\(13),
	cin => \U1|U_DIV|Add0~54\,
	sumout => \U1|U_DIV|Add0~1_sumout\,
	cout => \U1|U_DIV|Add0~2\);

-- Location: FF_X88_Y37_N11
\U1|U_DIV|counter_div[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~1_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(13));

-- Location: LABCELL_X88_Y37_N12
\U1|U_DIV|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~49_sumout\ = SUM(( \U1|U_DIV|counter_div\(14) ) + ( GND ) + ( \U1|U_DIV|Add0~2\ ))
-- \U1|U_DIV|Add0~50\ = CARRY(( \U1|U_DIV|counter_div\(14) ) + ( GND ) + ( \U1|U_DIV|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U_DIV|ALT_INV_counter_div\(14),
	cin => \U1|U_DIV|Add0~2\,
	sumout => \U1|U_DIV|Add0~49_sumout\,
	cout => \U1|U_DIV|Add0~50\);

-- Location: FF_X88_Y37_N14
\U1|U_DIV|counter_div[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~49_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(14));

-- Location: LABCELL_X88_Y37_N15
\U1|U_DIV|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~45_sumout\ = SUM(( \U1|U_DIV|counter_div\(15) ) + ( GND ) + ( \U1|U_DIV|Add0~50\ ))
-- \U1|U_DIV|Add0~46\ = CARRY(( \U1|U_DIV|counter_div\(15) ) + ( GND ) + ( \U1|U_DIV|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U_DIV|ALT_INV_counter_div\(15),
	cin => \U1|U_DIV|Add0~50\,
	sumout => \U1|U_DIV|Add0~45_sumout\,
	cout => \U1|U_DIV|Add0~46\);

-- Location: FF_X88_Y37_N17
\U1|U_DIV|counter_div[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~45_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(15));

-- Location: LABCELL_X88_Y37_N18
\U1|U_DIV|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~41_sumout\ = SUM(( \U1|U_DIV|counter_div\(16) ) + ( GND ) + ( \U1|U_DIV|Add0~46\ ))
-- \U1|U_DIV|Add0~42\ = CARRY(( \U1|U_DIV|counter_div\(16) ) + ( GND ) + ( \U1|U_DIV|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U_DIV|ALT_INV_counter_div\(16),
	cin => \U1|U_DIV|Add0~46\,
	sumout => \U1|U_DIV|Add0~41_sumout\,
	cout => \U1|U_DIV|Add0~42\);

-- Location: FF_X88_Y37_N20
\U1|U_DIV|counter_div[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~41_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(16));

-- Location: LABCELL_X88_Y37_N21
\U1|U_DIV|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~37_sumout\ = SUM(( \U1|U_DIV|counter_div\(17) ) + ( GND ) + ( \U1|U_DIV|Add0~42\ ))
-- \U1|U_DIV|Add0~38\ = CARRY(( \U1|U_DIV|counter_div\(17) ) + ( GND ) + ( \U1|U_DIV|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|U_DIV|ALT_INV_counter_div\(17),
	cin => \U1|U_DIV|Add0~42\,
	sumout => \U1|U_DIV|Add0~37_sumout\,
	cout => \U1|U_DIV|Add0~38\);

-- Location: FF_X88_Y37_N23
\U1|U_DIV|counter_div[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~37_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(17));

-- Location: LABCELL_X88_Y37_N24
\U1|U_DIV|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~33_sumout\ = SUM(( \U1|U_DIV|counter_div\(18) ) + ( GND ) + ( \U1|U_DIV|Add0~38\ ))
-- \U1|U_DIV|Add0~34\ = CARRY(( \U1|U_DIV|counter_div\(18) ) + ( GND ) + ( \U1|U_DIV|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U_DIV|ALT_INV_counter_div\(18),
	cin => \U1|U_DIV|Add0~38\,
	sumout => \U1|U_DIV|Add0~33_sumout\,
	cout => \U1|U_DIV|Add0~34\);

-- Location: FF_X88_Y37_N26
\U1|U_DIV|counter_div[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~33_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(18));

-- Location: LABCELL_X88_Y37_N54
\U1|U_DIV|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Equal0~1_combout\ = ( \U1|U_DIV|counter_div\(17) & ( \U1|U_DIV|counter_div\(15) & ( (!\U1|U_DIV|counter_div\(18) & (\U1|U_DIV|counter_div\(16) & \U1|U_DIV|counter_div\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U_DIV|ALT_INV_counter_div\(18),
	datac => \U1|U_DIV|ALT_INV_counter_div\(16),
	datad => \U1|U_DIV|ALT_INV_counter_div\(14),
	datae => \U1|U_DIV|ALT_INV_counter_div\(17),
	dataf => \U1|U_DIV|ALT_INV_counter_div\(15),
	combout => \U1|U_DIV|Equal0~1_combout\);

-- Location: LABCELL_X88_Y37_N27
\U1|U_DIV|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~29_sumout\ = SUM(( \U1|U_DIV|counter_div\(19) ) + ( GND ) + ( \U1|U_DIV|Add0~34\ ))
-- \U1|U_DIV|Add0~30\ = CARRY(( \U1|U_DIV|counter_div\(19) ) + ( GND ) + ( \U1|U_DIV|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U_DIV|ALT_INV_counter_div\(19),
	cin => \U1|U_DIV|Add0~34\,
	sumout => \U1|U_DIV|Add0~29_sumout\,
	cout => \U1|U_DIV|Add0~30\);

-- Location: FF_X88_Y37_N28
\U1|U_DIV|counter_div[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~29_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(19));

-- Location: LABCELL_X88_Y37_N30
\U1|U_DIV|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~25_sumout\ = SUM(( \U1|U_DIV|counter_div\(20) ) + ( GND ) + ( \U1|U_DIV|Add0~30\ ))
-- \U1|U_DIV|Add0~26\ = CARRY(( \U1|U_DIV|counter_div\(20) ) + ( GND ) + ( \U1|U_DIV|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U_DIV|ALT_INV_counter_div\(20),
	cin => \U1|U_DIV|Add0~30\,
	sumout => \U1|U_DIV|Add0~25_sumout\,
	cout => \U1|U_DIV|Add0~26\);

-- Location: FF_X88_Y37_N32
\U1|U_DIV|counter_div[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~25_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(20));

-- Location: LABCELL_X88_Y37_N33
\U1|U_DIV|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~21_sumout\ = SUM(( \U1|U_DIV|counter_div\(21) ) + ( GND ) + ( \U1|U_DIV|Add0~26\ ))
-- \U1|U_DIV|Add0~22\ = CARRY(( \U1|U_DIV|counter_div\(21) ) + ( GND ) + ( \U1|U_DIV|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U_DIV|ALT_INV_counter_div\(21),
	cin => \U1|U_DIV|Add0~26\,
	sumout => \U1|U_DIV|Add0~21_sumout\,
	cout => \U1|U_DIV|Add0~22\);

-- Location: FF_X88_Y37_N35
\U1|U_DIV|counter_div[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~21_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(21));

-- Location: LABCELL_X88_Y37_N36
\U1|U_DIV|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~17_sumout\ = SUM(( \U1|U_DIV|counter_div\(22) ) + ( GND ) + ( \U1|U_DIV|Add0~22\ ))
-- \U1|U_DIV|Add0~18\ = CARRY(( \U1|U_DIV|counter_div\(22) ) + ( GND ) + ( \U1|U_DIV|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U_DIV|ALT_INV_counter_div\(22),
	cin => \U1|U_DIV|Add0~22\,
	sumout => \U1|U_DIV|Add0~17_sumout\,
	cout => \U1|U_DIV|Add0~18\);

-- Location: FF_X88_Y37_N38
\U1|U_DIV|counter_div[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~17_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(22));

-- Location: LABCELL_X88_Y37_N39
\U1|U_DIV|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~13_sumout\ = SUM(( \U1|U_DIV|counter_div\(23) ) + ( GND ) + ( \U1|U_DIV|Add0~18\ ))
-- \U1|U_DIV|Add0~14\ = CARRY(( \U1|U_DIV|counter_div\(23) ) + ( GND ) + ( \U1|U_DIV|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U_DIV|ALT_INV_counter_div\(23),
	cin => \U1|U_DIV|Add0~18\,
	sumout => \U1|U_DIV|Add0~13_sumout\,
	cout => \U1|U_DIV|Add0~14\);

-- Location: FF_X88_Y37_N41
\U1|U_DIV|counter_div[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~13_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(23));

-- Location: LABCELL_X88_Y37_N48
\U1|U_DIV|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Equal0~0_combout\ = ( !\U1|U_DIV|counter_div\(22) & ( \U1|U_DIV|counter_div\(19) & ( (!\U1|U_DIV|counter_div\(21) & (\U1|U_DIV|counter_div\(20) & (\U1|U_DIV|counter_div\(11) & \U1|U_DIV|counter_div\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U_DIV|ALT_INV_counter_div\(21),
	datab => \U1|U_DIV|ALT_INV_counter_div\(20),
	datac => \U1|U_DIV|ALT_INV_counter_div\(11),
	datad => \U1|U_DIV|ALT_INV_counter_div\(23),
	datae => \U1|U_DIV|ALT_INV_counter_div\(22),
	dataf => \U1|U_DIV|ALT_INV_counter_div\(19),
	combout => \U1|U_DIV|Equal0~0_combout\);

-- Location: FF_X87_Y37_N56
\U1|U_DIV|counter_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|counter_div[7]~feeder_combout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(7));

-- Location: LABCELL_X88_Y37_N42
\U1|U_DIV|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Add0~57_sumout\ = SUM(( \U1|U_DIV|counter_div\(24) ) + ( GND ) + ( \U1|U_DIV|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U_DIV|ALT_INV_counter_div\(24),
	cin => \U1|U_DIV|Add0~14\,
	sumout => \U1|U_DIV|Add0~57_sumout\);

-- Location: FF_X88_Y37_N44
\U1|U_DIV|counter_div[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~57_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(24));

-- Location: FF_X88_Y37_N1
\U1|U_DIV|counter_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~61_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(10));

-- Location: FF_X87_Y37_N50
\U1|U_DIV|counter_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|counter_div[9]~feeder_combout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(9));

-- Location: FF_X88_Y37_N8
\U1|U_DIV|counter_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~53_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(12));

-- Location: FF_X88_Y38_N55
\U1|U_DIV|counter_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~69_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(8));

-- Location: MLABCELL_X87_Y37_N3
\U1|U_DIV|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Equal0~2_combout\ = ( \U1|U_DIV|counter_div\(12) & ( !\U1|U_DIV|counter_div\(8) & ( (\U1|U_DIV|counter_div\(7) & (\U1|U_DIV|counter_div\(24) & (\U1|U_DIV|counter_div\(10) & !\U1|U_DIV|counter_div\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U_DIV|ALT_INV_counter_div\(7),
	datab => \U1|U_DIV|ALT_INV_counter_div\(24),
	datac => \U1|U_DIV|ALT_INV_counter_div\(10),
	datad => \U1|U_DIV|ALT_INV_counter_div\(9),
	datae => \U1|U_DIV|ALT_INV_counter_div\(12),
	dataf => \U1|U_DIV|ALT_INV_counter_div\(8),
	combout => \U1|U_DIV|Equal0~2_combout\);

-- Location: FF_X88_Y38_N44
\U1|U_DIV|counter_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|U_DIV|Add0~85_sumout\,
	clrn => \ALT_INV_clear~input_o\,
	sclr => \U1|U_DIV|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|counter_div\(4));

-- Location: LABCELL_X88_Y38_N24
\U1|U_DIV|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Equal0~3_combout\ = ( \U1|U_DIV|counter_div\(5) & ( \U1|U_DIV|counter_div\(1) & ( (!\U1|U_DIV|counter_div\(6) & (\U1|U_DIV|counter_div\(3) & (\U1|U_DIV|counter_div\(2) & \U1|U_DIV|counter_div\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U_DIV|ALT_INV_counter_div\(6),
	datab => \U1|U_DIV|ALT_INV_counter_div\(3),
	datac => \U1|U_DIV|ALT_INV_counter_div\(2),
	datad => \U1|U_DIV|ALT_INV_counter_div\(4),
	datae => \U1|U_DIV|ALT_INV_counter_div\(5),
	dataf => \U1|U_DIV|ALT_INV_counter_div\(1),
	combout => \U1|U_DIV|Equal0~3_combout\);

-- Location: MLABCELL_X87_Y37_N18
\U1|U_DIV|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U_DIV|Equal0~4_combout\ = ( \U1|U_DIV|Equal0~2_combout\ & ( \U1|U_DIV|Equal0~3_combout\ & ( (\U1|U_DIV|counter_div\(0) & (\U1|U_DIV|Equal0~1_combout\ & (\U1|U_DIV|counter_div\(13) & \U1|U_DIV|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U_DIV|ALT_INV_counter_div\(0),
	datab => \U1|U_DIV|ALT_INV_Equal0~1_combout\,
	datac => \U1|U_DIV|ALT_INV_counter_div\(13),
	datad => \U1|U_DIV|ALT_INV_Equal0~0_combout\,
	datae => \U1|U_DIV|ALT_INV_Equal0~2_combout\,
	dataf => \U1|U_DIV|ALT_INV_Equal0~3_combout\,
	combout => \U1|U_DIV|Equal0~4_combout\);

-- Location: FF_X87_Y37_N5
\U1|U_DIV|tick_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \U1|U_DIV|Equal0~4_combout\,
	clrn => \ALT_INV_clear~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U_DIV|tick_signal~q\);

-- Location: LABCELL_X88_Y38_N6
\U2|contador[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|contador[0]~2_combout\ = ( !\U2|contador\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \U2|ALT_INV_contador\(0),
	combout => \U2|contador[0]~2_combout\);

-- Location: FF_X88_Y38_N7
\U2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U2|contador[0]~2_combout\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \U1|U_DIV|tick_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|contador\(0));

-- Location: FF_X87_Y38_N1
\U1|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|contador~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \U1|U_DIV|tick_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|contador\(1));

-- Location: FF_X87_Y38_N34
\U1|contador[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|contador[2]~1_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|contador[2]~DUPLICATE_q\);

-- Location: FF_X88_Y38_N2
\U1|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|contador~2_combout\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \U1|U_DIV|tick_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|contador\(3));

-- Location: LABCELL_X88_Y38_N0
\U1|contador~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|contador~2_combout\ = ( \U2|contador\(0) & ( (!\U1|contador\(1) & (\U1|contador[2]~DUPLICATE_q\ & \U1|contador\(3))) # (\U1|contador\(1) & (!\U1|contador[2]~DUPLICATE_q\ $ (!\U1|contador\(3)))) ) ) # ( !\U2|contador\(0) & ( \U1|contador\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011001111000000001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_contador\(1),
	datac => \U1|ALT_INV_contador[2]~DUPLICATE_q\,
	datad => \U1|ALT_INV_contador\(3),
	dataf => \U2|ALT_INV_contador\(0),
	combout => \U1|contador~2_combout\);

-- Location: FF_X88_Y38_N1
\U1|contador[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|contador~2_combout\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \U1|U_DIV|tick_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|contador[3]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y38_N0
\U1|contador~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|contador~0_combout\ = ( \U2|contador\(0) & ( (!\U1|contador\(1) & ((!\U1|contador[3]~DUPLICATE_q\) # (\U1|contador\(2)))) ) ) # ( !\U2|contador\(0) & ( \U1|contador\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_contador[3]~DUPLICATE_q\,
	datac => \U1|ALT_INV_contador\(2),
	datad => \U1|ALT_INV_contador\(1),
	dataf => \U2|ALT_INV_contador\(0),
	combout => \U1|contador~0_combout\);

-- Location: FF_X87_Y38_N2
\U1|contador[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|contador~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \U1|U_DIV|tick_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|contador[1]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y38_N33
\U1|contador[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|contador[2]~1_combout\ = ( \U1|contador[1]~DUPLICATE_q\ & ( !\U1|contador\(2) $ (((!\U1|U_DIV|tick_signal~q\) # (!\U2|contador\(0)))) ) ) # ( !\U1|contador[1]~DUPLICATE_q\ & ( \U1|contador\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U_DIV|ALT_INV_tick_signal~q\,
	datac => \U2|ALT_INV_contador\(0),
	datad => \U1|ALT_INV_contador\(2),
	dataf => \U1|ALT_INV_contador[1]~DUPLICATE_q\,
	combout => \U1|contador[2]~1_combout\);

-- Location: FF_X87_Y38_N35
\U1|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|contador[2]~1_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|contador\(2));

-- Location: IOIBUF_X89_Y37_N55
\btnChose~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btnChose,
	o => \btnChose~input_o\);

-- Location: FF_X88_Y38_N8
\U2|contador[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U2|contador[0]~2_combout\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \U1|U_DIV|tick_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|contador[0]~DUPLICATE_q\);

-- Location: FF_X88_Y38_N4
\U2|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U2|contador~1_combout\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \U1|U_DIV|tick_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|contador\(2));

-- Location: MLABCELL_X87_Y38_N12
\U2|contador~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|contador~0_combout\ = ( \U2|contador\(0) & ( (!\U2|contador\(1) & ((!\U2|contador\(3)) # (\U2|contador\(2)))) ) ) # ( !\U2|contador\(0) & ( \U2|contador\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_contador\(3),
	datac => \U2|ALT_INV_contador\(2),
	datad => \U2|ALT_INV_contador\(1),
	dataf => \U2|ALT_INV_contador\(0),
	combout => \U2|contador~0_combout\);

-- Location: FF_X87_Y38_N14
\U2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U2|contador~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \U1|U_DIV|tick_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|contador\(1));

-- Location: LABCELL_X85_Y38_N12
\U2|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add1~0_combout\ = ( \U2|contador\(1) & ( \U2|contador\(3) ) ) # ( !\U2|contador\(1) & ( !\U2|contador\(3) $ (((!\U2|contador\(0)) # (\U2|contador[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011110101000010101111010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_contador[2]~DUPLICATE_q\,
	datac => \U2|ALT_INV_contador\(0),
	datad => \U2|ALT_INV_contador\(3),
	dataf => \U2|ALT_INV_contador\(1),
	combout => \U2|Add1~0_combout\);

-- Location: FF_X85_Y38_N14
\U2|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U2|Add1~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \U1|U_DIV|tick_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|contador\(3));

-- Location: LABCELL_X88_Y38_N3
\U2|contador~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|contador~1_combout\ = ( \U2|contador\(1) & ( \U2|contador\(2) ) ) # ( !\U2|contador\(1) & ( (!\U2|contador[0]~DUPLICATE_q\ & ((\U2|contador\(2)))) # (\U2|contador[0]~DUPLICATE_q\ & (!\U2|contador\(3) & !\U2|contador\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011110000000010101111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_contador\(3),
	datac => \U2|ALT_INV_contador[0]~DUPLICATE_q\,
	datad => \U2|ALT_INV_contador\(2),
	dataf => \U2|ALT_INV_contador\(1),
	combout => \U2|contador~1_combout\);

-- Location: FF_X88_Y38_N5
\U2|contador[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U2|contador~1_combout\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \U1|U_DIV|tick_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|contador[2]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y38_N3
\U2|U1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux6~0_combout\ = ( \U2|contador\(3) & ( (!\U2|contador[2]~DUPLICATE_q\ & (\U2|contador\(1))) # (\U2|contador[2]~DUPLICATE_q\ & ((!\U2|contador\(1)) # (\U2|contador[0]~DUPLICATE_q\))) ) ) # ( !\U2|contador\(3) & ( (!\U2|contador[2]~DUPLICATE_q\ & 
-- !\U2|contador\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000001011010010111110101101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_contador[2]~DUPLICATE_q\,
	datac => \U2|ALT_INV_contador\(1),
	datad => \U2|ALT_INV_contador[0]~DUPLICATE_q\,
	dataf => \U2|ALT_INV_contador\(3),
	combout => \U2|U1|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y38_N18
\saida_display~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_display~6_combout\ = ( \U2|U1|Mux6~0_combout\ & ( \U1|contador[3]~DUPLICATE_q\ & ( (!\btnChose~input_o\) # ((!\U1|contador\(2) & !\U1|contador[1]~DUPLICATE_q\)) ) ) ) # ( !\U2|U1|Mux6~0_combout\ & ( \U1|contador[3]~DUPLICATE_q\ & ( 
-- (!\U1|contador\(2) & (\btnChose~input_o\ & !\U1|contador[1]~DUPLICATE_q\)) ) ) ) # ( \U2|U1|Mux6~0_combout\ & ( !\U1|contador[3]~DUPLICATE_q\ & ( (!\btnChose~input_o\) # ((!\U1|contador\(2) & ((\U1|contador[1]~DUPLICATE_q\))) # (\U1|contador\(2) & 
-- ((!\U2|contador[0]~DUPLICATE_q\) # (!\U1|contador[1]~DUPLICATE_q\)))) ) ) ) # ( !\U2|U1|Mux6~0_combout\ & ( !\U1|contador[3]~DUPLICATE_q\ & ( (\btnChose~input_o\ & ((!\U1|contador\(2) & ((\U1|contador[1]~DUPLICATE_q\))) # (\U1|contador\(2) & 
-- ((!\U2|contador[0]~DUPLICATE_q\) # (!\U1|contador[1]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110010110111011111111000100010000000001110111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_contador\(2),
	datab => \ALT_INV_btnChose~input_o\,
	datac => \U2|ALT_INV_contador[0]~DUPLICATE_q\,
	datad => \U1|ALT_INV_contador[1]~DUPLICATE_q\,
	datae => \U2|U1|ALT_INV_Mux6~0_combout\,
	dataf => \U1|ALT_INV_contador[3]~DUPLICATE_q\,
	combout => \saida_display~6_combout\);

-- Location: MLABCELL_X87_Y38_N48
\saida_display[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_display[0]$latch~combout\ = ( \saida_display~6_combout\ & ( (!\btnStop~input_o\) # (\saida_display[0]$latch~combout\) ) ) # ( !\saida_display~6_combout\ & ( (\btnStop~input_o\ & \saida_display[0]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_btnStop~input_o\,
	datad => \ALT_INV_saida_display[0]$latch~combout\,
	dataf => \ALT_INV_saida_display~6_combout\,
	combout => \saida_display[0]$latch~combout\);

-- Location: FF_X87_Y38_N13
\U2|contador[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U2|contador~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \U1|U_DIV|tick_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|contador[1]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y38_N15
\U2|U1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux5~0_combout\ = ( \U2|contador[0]~DUPLICATE_q\ & ( (!\U2|contador[2]~DUPLICATE_q\ & ((!\U2|contador[1]~DUPLICATE_q\))) # (\U2|contador[2]~DUPLICATE_q\ & (\U2|contador\(3))) ) ) # ( !\U2|contador[0]~DUPLICATE_q\ & ( (!\U2|contador[1]~DUPLICATE_q\ 
-- & (!\U2|contador\(3) $ (\U2|contador[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000011110011000000111111001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_contador\(3),
	datac => \U2|ALT_INV_contador[2]~DUPLICATE_q\,
	datad => \U2|ALT_INV_contador[1]~DUPLICATE_q\,
	dataf => \U2|ALT_INV_contador[0]~DUPLICATE_q\,
	combout => \U2|U1|Mux5~0_combout\);

-- Location: LABCELL_X85_Y38_N42
\saida_display~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_display~5_combout\ = ( \U1|contador[3]~DUPLICATE_q\ & ( \U2|U1|Mux5~0_combout\ & ( (\btnChose~input_o\ & ((\U1|contador[1]~DUPLICATE_q\) # (\U1|contador[2]~DUPLICATE_q\))) ) ) ) # ( !\U1|contador[3]~DUPLICATE_q\ & ( \U2|U1|Mux5~0_combout\ & ( 
-- (\btnChose~input_o\ & ((!\U2|contador[0]~DUPLICATE_q\ & (!\U1|contador[2]~DUPLICATE_q\ & \U1|contador[1]~DUPLICATE_q\)) # (\U2|contador[0]~DUPLICATE_q\ & ((!\U1|contador[2]~DUPLICATE_q\) # (\U1|contador[1]~DUPLICATE_q\))))) ) ) ) # ( 
-- \U1|contador[3]~DUPLICATE_q\ & ( !\U2|U1|Mux5~0_combout\ & ( (!\btnChose~input_o\) # ((\U1|contador[1]~DUPLICATE_q\) # (\U1|contador[2]~DUPLICATE_q\)) ) ) ) # ( !\U1|contador[3]~DUPLICATE_q\ & ( !\U2|U1|Mux5~0_combout\ & ( (!\btnChose~input_o\) # 
-- ((!\U2|contador[0]~DUPLICATE_q\ & (!\U1|contador[2]~DUPLICATE_q\ & \U1|contador[1]~DUPLICATE_q\)) # (\U2|contador[0]~DUPLICATE_q\ & ((!\U1|contador[2]~DUPLICATE_q\) # (\U1|contador[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011111101110011111111111100010000001100010000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_contador[0]~DUPLICATE_q\,
	datab => \ALT_INV_btnChose~input_o\,
	datac => \U1|ALT_INV_contador[2]~DUPLICATE_q\,
	datad => \U1|ALT_INV_contador[1]~DUPLICATE_q\,
	datae => \U1|ALT_INV_contador[3]~DUPLICATE_q\,
	dataf => \U2|U1|ALT_INV_Mux5~0_combout\,
	combout => \saida_display~5_combout\);

-- Location: LABCELL_X85_Y38_N3
\saida_display[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_display[1]$latch~combout\ = ( \saida_display~5_combout\ & ( (\btnStop~input_o\ & \saida_display[1]$latch~combout\) ) ) # ( !\saida_display~5_combout\ & ( (!\btnStop~input_o\) # (\saida_display[1]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_btnStop~input_o\,
	datad => \ALT_INV_saida_display[1]$latch~combout\,
	dataf => \ALT_INV_saida_display~5_combout\,
	combout => \saida_display[1]$latch~combout\);

-- Location: FF_X85_Y38_N13
\U2|contador[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U2|Add1~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \U1|U_DIV|tick_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|contador[3]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y38_N39
\U2|U1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux4~0_combout\ = ( \U2|contador[1]~DUPLICATE_q\ & ( (\U2|contador[0]~DUPLICATE_q\ & \U2|contador[3]~DUPLICATE_q\) ) ) # ( !\U2|contador[1]~DUPLICATE_q\ & ( (\U2|contador[0]~DUPLICATE_q\ & !\U2|contador\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_contador[0]~DUPLICATE_q\,
	datac => \U2|ALT_INV_contador\(2),
	datad => \U2|ALT_INV_contador[3]~DUPLICATE_q\,
	dataf => \U2|ALT_INV_contador[1]~DUPLICATE_q\,
	combout => \U2|U1|Mux4~0_combout\);

-- Location: MLABCELL_X87_Y38_N42
\saida_display~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_display~4_combout\ = ( \U2|contador[0]~DUPLICATE_q\ & ( \U2|U1|Mux4~0_combout\ & ( \btnChose~input_o\ ) ) ) # ( !\U2|contador[0]~DUPLICATE_q\ & ( \U2|U1|Mux4~0_combout\ & ( (\btnChose~input_o\ & ((!\U1|contador[1]~DUPLICATE_q\ & 
-- ((\U1|contador[2]~DUPLICATE_q\))) # (\U1|contador[1]~DUPLICATE_q\ & (\U1|contador\(3))))) ) ) ) # ( \U2|contador[0]~DUPLICATE_q\ & ( !\U2|U1|Mux4~0_combout\ ) ) # ( !\U2|contador[0]~DUPLICATE_q\ & ( !\U2|U1|Mux4~0_combout\ & ( (!\btnChose~input_o\) # 
-- ((!\U1|contador[1]~DUPLICATE_q\ & ((\U1|contador[2]~DUPLICATE_q\))) # (\U1|contador[1]~DUPLICATE_q\ & (\U1|contador\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101111111111111111100000001001100010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_contador\(3),
	datab => \ALT_INV_btnChose~input_o\,
	datac => \U1|ALT_INV_contador[1]~DUPLICATE_q\,
	datad => \U1|ALT_INV_contador[2]~DUPLICATE_q\,
	datae => \U2|ALT_INV_contador[0]~DUPLICATE_q\,
	dataf => \U2|U1|ALT_INV_Mux4~0_combout\,
	combout => \saida_display~4_combout\);

-- Location: MLABCELL_X87_Y38_N36
\saida_display[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_display[2]$latch~combout\ = ( \saida_display~4_combout\ & ( (\btnStop~input_o\ & \saida_display[2]$latch~combout\) ) ) # ( !\saida_display~4_combout\ & ( (!\btnStop~input_o\) # (\saida_display[2]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_btnStop~input_o\,
	datad => \ALT_INV_saida_display[2]$latch~combout\,
	dataf => \ALT_INV_saida_display~4_combout\,
	combout => \saida_display[2]$latch~combout\);

-- Location: LABCELL_X88_Y38_N15
\U2|U1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux3~0_combout\ = ( \U2|contador[3]~DUPLICATE_q\ & ( (!\U2|contador[2]~DUPLICATE_q\ & ((\U2|contador[1]~DUPLICATE_q\) # (\U2|contador[0]~DUPLICATE_q\))) # (\U2|contador[2]~DUPLICATE_q\ & (!\U2|contador[0]~DUPLICATE_q\ $ 
-- (\U2|contador[1]~DUPLICATE_q\))) ) ) # ( !\U2|contador[3]~DUPLICATE_q\ & ( (!\U2|contador[2]~DUPLICATE_q\ & !\U2|contador[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000001011010101011110101101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_contador[2]~DUPLICATE_q\,
	datac => \U2|ALT_INV_contador[0]~DUPLICATE_q\,
	datad => \U2|ALT_INV_contador[1]~DUPLICATE_q\,
	dataf => \U2|ALT_INV_contador[3]~DUPLICATE_q\,
	combout => \U2|U1|Mux3~0_combout\);

-- Location: LABCELL_X88_Y38_N18
\saida_display~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_display~3_combout\ = ( \U1|contador\(2) & ( \U2|U1|Mux3~0_combout\ & ( (\btnChose~input_o\ & ((!\U2|contador[0]~DUPLICATE_q\ $ (\U1|contador\(1))) # (\U1|contador\(3)))) ) ) ) # ( !\U1|contador\(2) & ( \U2|U1|Mux3~0_combout\ & ( (\btnChose~input_o\ 
-- & ((!\U1|contador\(3) & (\U2|contador[0]~DUPLICATE_q\ & !\U1|contador\(1))) # (\U1|contador\(3) & ((\U1|contador\(1)))))) ) ) ) # ( \U1|contador\(2) & ( !\U2|U1|Mux3~0_combout\ & ( ((!\btnChose~input_o\) # (!\U2|contador[0]~DUPLICATE_q\ $ 
-- (\U1|contador\(1)))) # (\U1|contador\(3)) ) ) ) # ( !\U1|contador\(2) & ( !\U2|U1|Mux3~0_combout\ & ( (!\btnChose~input_o\) # ((!\U1|contador\(3) & (\U2|contador[0]~DUPLICATE_q\ & !\U1|contador\(1))) # (\U1|contador\(3) & ((\U1|contador\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001011110101111111011111011100000010000001010000110100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_contador\(3),
	datab => \U2|ALT_INV_contador[0]~DUPLICATE_q\,
	datac => \ALT_INV_btnChose~input_o\,
	datad => \U1|ALT_INV_contador\(1),
	datae => \U1|ALT_INV_contador\(2),
	dataf => \U2|U1|ALT_INV_Mux3~0_combout\,
	combout => \saida_display~3_combout\);

-- Location: LABCELL_X88_Y38_N12
\saida_display[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_display[3]$latch~combout\ = ( \saida_display~3_combout\ & ( (\saida_display[3]$latch~combout\ & \btnStop~input_o\) ) ) # ( !\saida_display~3_combout\ & ( (!\btnStop~input_o\) # (\saida_display[3]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_saida_display[3]$latch~combout\,
	datac => \ALT_INV_btnStop~input_o\,
	dataf => \ALT_INV_saida_display~3_combout\,
	combout => \saida_display[3]$latch~combout\);

-- Location: MLABCELL_X87_Y38_N30
\U2|U1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux2~0_combout\ = ( \U2|contador\(3) & ( (\U2|contador\(1) & (!\U2|contador[2]~DUPLICATE_q\ & \U2|contador[0]~DUPLICATE_q\)) ) ) # ( !\U2|contador\(3) & ( (\U2|contador[2]~DUPLICATE_q\) # (\U2|contador\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_contador\(1),
	datac => \U2|ALT_INV_contador[2]~DUPLICATE_q\,
	datad => \U2|ALT_INV_contador[0]~DUPLICATE_q\,
	dataf => \U2|ALT_INV_contador\(3),
	combout => \U2|U1|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y38_N24
\saida_display~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_display~2_combout\ = ( \U2|contador[0]~DUPLICATE_q\ & ( \U2|U1|Mux2~0_combout\ & ( (!\btnChose~input_o\) # ((\U1|contador[3]~DUPLICATE_q\ & ((\U1|contador[1]~DUPLICATE_q\) # (\U1|contador\(2))))) ) ) ) # ( !\U2|contador[0]~DUPLICATE_q\ & ( 
-- \U2|U1|Mux2~0_combout\ & ( (!\btnChose~input_o\) # ((!\U1|contador\(2) & (\U1|contador[1]~DUPLICATE_q\)) # (\U1|contador\(2) & ((\U1|contador[3]~DUPLICATE_q\)))) ) ) ) # ( \U2|contador[0]~DUPLICATE_q\ & ( !\U2|U1|Mux2~0_combout\ & ( (\btnChose~input_o\ & 
-- (\U1|contador[3]~DUPLICATE_q\ & ((\U1|contador[1]~DUPLICATE_q\) # (\U1|contador\(2))))) ) ) ) # ( !\U2|contador[0]~DUPLICATE_q\ & ( !\U2|U1|Mux2~0_combout\ & ( (\btnChose~input_o\ & ((!\U1|contador\(2) & (\U1|contador[1]~DUPLICATE_q\)) # (\U1|contador\(2) 
-- & ((\U1|contador[3]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000000001001111001110110111111100110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_contador\(2),
	datab => \ALT_INV_btnChose~input_o\,
	datac => \U1|ALT_INV_contador[1]~DUPLICATE_q\,
	datad => \U1|ALT_INV_contador[3]~DUPLICATE_q\,
	datae => \U2|ALT_INV_contador[0]~DUPLICATE_q\,
	dataf => \U2|U1|ALT_INV_Mux2~0_combout\,
	combout => \saida_display~2_combout\);

-- Location: MLABCELL_X87_Y38_N15
\saida_display[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_display[4]$latch~combout\ = ( \saida_display~2_combout\ & ( (\btnStop~input_o\ & \saida_display[4]$latch~combout\) ) ) # ( !\saida_display~2_combout\ & ( (!\btnStop~input_o\) # (\saida_display[4]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_btnStop~input_o\,
	datac => \ALT_INV_saida_display[4]$latch~combout\,
	dataf => \ALT_INV_saida_display~2_combout\,
	combout => \saida_display[4]$latch~combout\);

-- Location: MLABCELL_X84_Y38_N51
\U2|U1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux1~0_combout\ = ( \U2|contador[0]~DUPLICATE_q\ & ( \U2|contador\(3) & ( (\U2|contador\(2) & \U2|contador[1]~DUPLICATE_q\) ) ) ) # ( !\U2|contador[0]~DUPLICATE_q\ & ( \U2|contador\(3) & ( (\U2|contador\(2) & !\U2|contador[1]~DUPLICATE_q\) ) ) ) # 
-- ( \U2|contador[0]~DUPLICATE_q\ & ( !\U2|contador\(3) & ( (\U2|contador[1]~DUPLICATE_q\) # (\U2|contador\(2)) ) ) ) # ( !\U2|contador[0]~DUPLICATE_q\ & ( !\U2|contador\(3) & ( (\U2|contador[1]~DUPLICATE_q\) # (\U2|contador\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_contador\(2),
	datad => \U2|ALT_INV_contador[1]~DUPLICATE_q\,
	datae => \U2|ALT_INV_contador[0]~DUPLICATE_q\,
	dataf => \U2|ALT_INV_contador\(3),
	combout => \U2|U1|Mux1~0_combout\);

-- Location: MLABCELL_X84_Y38_N24
\saida_display~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_display~1_combout\ = ( \U1|contador[3]~DUPLICATE_q\ & ( \U2|U1|Mux1~0_combout\ & ( ((!\btnChose~input_o\) # (\U1|contador[2]~DUPLICATE_q\)) # (\U1|contador[1]~DUPLICATE_q\) ) ) ) # ( !\U1|contador[3]~DUPLICATE_q\ & ( \U2|U1|Mux1~0_combout\ & ( 
-- (!\btnChose~input_o\) # ((\U1|contador[2]~DUPLICATE_q\ & (!\U1|contador[1]~DUPLICATE_q\ $ (!\U2|contador\(0))))) ) ) ) # ( \U1|contador[3]~DUPLICATE_q\ & ( !\U2|U1|Mux1~0_combout\ & ( (\btnChose~input_o\ & ((\U1|contador[2]~DUPLICATE_q\) # 
-- (\U1|contador[1]~DUPLICATE_q\))) ) ) ) # ( !\U1|contador[3]~DUPLICATE_q\ & ( !\U2|U1|Mux1~0_combout\ & ( (\btnChose~input_o\ & (\U1|contador[2]~DUPLICATE_q\ & (!\U1|contador[1]~DUPLICATE_q\ $ (!\U2|contador\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000100110001001111001101110011101101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_contador[1]~DUPLICATE_q\,
	datab => \ALT_INV_btnChose~input_o\,
	datac => \U1|ALT_INV_contador[2]~DUPLICATE_q\,
	datad => \U2|ALT_INV_contador\(0),
	datae => \U1|ALT_INV_contador[3]~DUPLICATE_q\,
	dataf => \U2|U1|ALT_INV_Mux1~0_combout\,
	combout => \saida_display~1_combout\);

-- Location: MLABCELL_X84_Y38_N57
\saida_display[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_display[5]$latch~combout\ = ( \btnStop~input_o\ & ( \saida_display~1_combout\ & ( \saida_display[5]$latch~combout\ ) ) ) # ( \btnStop~input_o\ & ( !\saida_display~1_combout\ & ( \saida_display[5]$latch~combout\ ) ) ) # ( !\btnStop~input_o\ & ( 
-- !\saida_display~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_saida_display[5]$latch~combout\,
	datae => \ALT_INV_btnStop~input_o\,
	dataf => \ALT_INV_saida_display~1_combout\,
	combout => \saida_display[5]$latch~combout\);

-- Location: MLABCELL_X87_Y38_N51
\U2|U1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux0~0_combout\ = ( \U2|contador\(3) & ( (!\U2|contador\(1) & (!\U2|contador[2]~DUPLICATE_q\ $ (\U2|contador[0]~DUPLICATE_q\))) ) ) # ( !\U2|contador\(3) & ( (\U2|contador\(1)) # (\U2|contador[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111110100000010100001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_contador[2]~DUPLICATE_q\,
	datac => \U2|ALT_INV_contador\(1),
	datad => \U2|ALT_INV_contador[0]~DUPLICATE_q\,
	dataf => \U2|ALT_INV_contador\(3),
	combout => \U2|U1|Mux0~0_combout\);

-- Location: MLABCELL_X87_Y38_N6
\saida_display~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_display~0_combout\ = ( \U1|contador[3]~DUPLICATE_q\ & ( \U2|U1|Mux0~0_combout\ & ( ((!\btnChose~input_o\) # (\U1|contador[1]~DUPLICATE_q\)) # (\U1|contador\(2)) ) ) ) # ( !\U1|contador[3]~DUPLICATE_q\ & ( \U2|U1|Mux0~0_combout\ & ( 
-- (!\btnChose~input_o\) # ((!\U1|contador[1]~DUPLICATE_q\ & (!\U1|contador\(2) $ (!\U2|contador\(0))))) ) ) ) # ( \U1|contador[3]~DUPLICATE_q\ & ( !\U2|U1|Mux0~0_combout\ & ( (\btnChose~input_o\ & ((\U1|contador[1]~DUPLICATE_q\) # (\U1|contador\(2)))) ) ) ) 
-- # ( !\U1|contador[3]~DUPLICATE_q\ & ( !\U2|U1|Mux0~0_combout\ & ( (\btnChose~input_o\ & (!\U1|contador[1]~DUPLICATE_q\ & (!\U1|contador\(2) $ (!\U2|contador\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100000000100110001001111011100111011001101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_contador\(2),
	datab => \ALT_INV_btnChose~input_o\,
	datac => \U1|ALT_INV_contador[1]~DUPLICATE_q\,
	datad => \U2|ALT_INV_contador\(0),
	datae => \U1|ALT_INV_contador[3]~DUPLICATE_q\,
	dataf => \U2|U1|ALT_INV_Mux0~0_combout\,
	combout => \saida_display~0_combout\);

-- Location: MLABCELL_X87_Y38_N54
\saida_display[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_display[6]$latch~combout\ = ( \saida_display[6]$latch~combout\ & ( \saida_display~0_combout\ & ( \btnStop~input_o\ ) ) ) # ( \saida_display[6]$latch~combout\ & ( !\saida_display~0_combout\ ) ) # ( !\saida_display[6]$latch~combout\ & ( 
-- !\saida_display~0_combout\ & ( !\btnStop~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_btnStop~input_o\,
	datae => \ALT_INV_saida_display[6]$latch~combout\,
	dataf => \ALT_INV_saida_display~0_combout\,
	combout => \saida_display[6]$latch~combout\);

-- Location: LABCELL_X85_Y38_N36
\U1|temp_led[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|temp_led[0]~0_combout\ = ( \U1|contador[1]~DUPLICATE_q\ & ( \U1|temp_led\(0) ) ) # ( !\U1|contador[1]~DUPLICATE_q\ & ( !\U1|temp_led\(0) $ ((((!\U2|contador[0]~DUPLICATE_q\) # (!\U1|contador[3]~DUPLICATE_q\)) # (\U1|contador[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111101000000101111110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_contador[2]~DUPLICATE_q\,
	datab => \U2|ALT_INV_contador[0]~DUPLICATE_q\,
	datac => \U1|ALT_INV_contador[3]~DUPLICATE_q\,
	datad => \U1|ALT_INV_temp_led\(0),
	dataf => \U1|ALT_INV_contador[1]~DUPLICATE_q\,
	combout => \U1|temp_led[0]~0_combout\);

-- Location: FF_X85_Y38_N38
\U1|temp_led[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|temp_led[0]~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \U1|U_DIV|tick_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|temp_led\(0));

-- Location: LABCELL_X85_Y38_N24
\U2|temp_led[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|temp_led[0]~0_combout\ = ( \U2|temp_led\(0) & ( \U2|contador[0]~DUPLICATE_q\ & ( ((!\U1|U_DIV|tick_signal~q\) # ((!\U2|contador\(3)) # (\U2|contador[1]~DUPLICATE_q\))) # (\U2|contador[2]~DUPLICATE_q\) ) ) ) # ( !\U2|temp_led\(0) & ( 
-- \U2|contador[0]~DUPLICATE_q\ & ( (!\U2|contador[2]~DUPLICATE_q\ & (\U1|U_DIV|tick_signal~q\ & (!\U2|contador[1]~DUPLICATE_q\ & \U2|contador\(3)))) ) ) ) # ( \U2|temp_led\(0) & ( !\U2|contador[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000001000001111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_contador[2]~DUPLICATE_q\,
	datab => \U1|U_DIV|ALT_INV_tick_signal~q\,
	datac => \U2|ALT_INV_contador[1]~DUPLICATE_q\,
	datad => \U2|ALT_INV_contador\(3),
	datae => \U2|ALT_INV_temp_led\(0),
	dataf => \U2|ALT_INV_contador[0]~DUPLICATE_q\,
	combout => \U2|temp_led[0]~0_combout\);

-- Location: FF_X85_Y38_N25
\U2|temp_led[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U2|temp_led[0]~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|temp_led\(0));

-- Location: LABCELL_X85_Y38_N18
\led~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led~0_combout\ = ( \U2|temp_led\(0) & ( (\btnChose~input_o\ & \U1|temp_led\(0)) ) ) # ( !\U2|temp_led\(0) & ( (!\btnChose~input_o\) # (\U1|temp_led\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_btnChose~input_o\,
	datad => \U1|ALT_INV_temp_led\(0),
	dataf => \U2|ALT_INV_temp_led\(0),
	combout => \led~0_combout\);

-- Location: LABCELL_X85_Y38_N21
\led[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \led[0]$latch~combout\ = ( \led~0_combout\ & ( (!\btnStop~input_o\) # (\led[0]$latch~combout\) ) ) # ( !\led~0_combout\ & ( (\btnStop~input_o\ & \led[0]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_btnStop~input_o\,
	datad => \ALT_INV_led[0]$latch~combout\,
	dataf => \ALT_INV_led~0_combout\,
	combout => \led[0]$latch~combout\);

-- Location: FF_X85_Y38_N26
\U2|temp_led[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U2|temp_led[0]~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|temp_led[0]~DUPLICATE_q\);

-- Location: FF_X85_Y38_N31
\U2|temp_led[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U2|temp_led[2]~2_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|temp_led\(2));

-- Location: LABCELL_X85_Y38_N39
\U2|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Equal1~0_combout\ = ( !\U2|contador\(1) & ( (\U2|contador[0]~DUPLICATE_q\ & (\U2|contador\(3) & !\U2|contador[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_contador[0]~DUPLICATE_q\,
	datac => \U2|ALT_INV_contador\(3),
	datad => \U2|ALT_INV_contador[2]~DUPLICATE_q\,
	dataf => \U2|ALT_INV_contador\(1),
	combout => \U2|Equal1~0_combout\);

-- Location: LABCELL_X85_Y38_N30
\U2|temp_led[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|temp_led[2]~2_combout\ = ( \U2|Equal1~0_combout\ & ( !\U2|temp_led\(2) $ (((!\U2|temp_led[0]~DUPLICATE_q\) # ((!\U1|U_DIV|tick_signal~q\) # (\U2|temp_led\(1))))) ) ) # ( !\U2|Equal1~0_combout\ & ( \U2|temp_led\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010000111011110001000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_temp_led[0]~DUPLICATE_q\,
	datab => \U1|U_DIV|ALT_INV_tick_signal~q\,
	datac => \U2|ALT_INV_temp_led\(1),
	datad => \U2|ALT_INV_temp_led\(2),
	dataf => \U2|ALT_INV_Equal1~0_combout\,
	combout => \U2|temp_led[2]~2_combout\);

-- Location: FF_X85_Y38_N32
\U2|temp_led[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U2|temp_led[2]~2_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|temp_led[2]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y38_N0
\U2|temp_led[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|temp_led[1]~1_combout\ = ( \U2|Equal1~0_combout\ & ( (!\U1|U_DIV|tick_signal~q\ & (((\U2|temp_led\(1))))) # (\U1|U_DIV|tick_signal~q\ & ((!\U2|temp_led[0]~DUPLICATE_q\ & ((\U2|temp_led\(1)))) # (\U2|temp_led[0]~DUPLICATE_q\ & 
-- (!\U2|temp_led[2]~DUPLICATE_q\ & !\U2|temp_led\(1))))) ) ) # ( !\U2|Equal1~0_combout\ & ( \U2|temp_led\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000100111110100000010011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U_DIV|ALT_INV_tick_signal~q\,
	datab => \U2|ALT_INV_temp_led[2]~DUPLICATE_q\,
	datac => \U2|ALT_INV_temp_led[0]~DUPLICATE_q\,
	datad => \U2|ALT_INV_temp_led\(1),
	dataf => \U2|ALT_INV_Equal1~0_combout\,
	combout => \U2|temp_led[1]~1_combout\);

-- Location: FF_X85_Y38_N2
\U2|temp_led[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U2|temp_led[1]~1_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|temp_led\(1));

-- Location: LABCELL_X85_Y38_N48
\U1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Equal1~0_combout\ = ( !\U1|contador[2]~DUPLICATE_q\ & ( (\U1|contador[3]~DUPLICATE_q\ & (!\U1|contador[1]~DUPLICATE_q\ & \U2|contador\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_contador[3]~DUPLICATE_q\,
	datab => \U1|ALT_INV_contador[1]~DUPLICATE_q\,
	datac => \U2|ALT_INV_contador\(0),
	dataf => \U1|ALT_INV_contador[2]~DUPLICATE_q\,
	combout => \U1|Equal1~0_combout\);

-- Location: FF_X85_Y38_N59
\U1|temp_led[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|temp_led[2]~2_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|temp_led\(2));

-- Location: FF_X85_Y38_N37
\U1|temp_led[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|temp_led[0]~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \U1|U_DIV|tick_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|temp_led[0]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y38_N57
\U1|temp_led[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|temp_led[2]~2_combout\ = ( \U1|temp_led[0]~DUPLICATE_q\ & ( (!\U1|Equal1~0_combout\ & (((\U1|temp_led\(2))))) # (\U1|Equal1~0_combout\ & ((!\U1|U_DIV|tick_signal~q\ & ((\U1|temp_led\(2)))) # (\U1|U_DIV|tick_signal~q\ & (\U1|temp_led\(1) & 
-- !\U1|temp_led\(2))))) ) ) # ( !\U1|temp_led[0]~DUPLICATE_q\ & ( \U1|temp_led\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111011100000000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_Equal1~0_combout\,
	datab => \U1|U_DIV|ALT_INV_tick_signal~q\,
	datac => \U1|ALT_INV_temp_led\(1),
	datad => \U1|ALT_INV_temp_led\(2),
	dataf => \U1|ALT_INV_temp_led[0]~DUPLICATE_q\,
	combout => \U1|temp_led[2]~2_combout\);

-- Location: FF_X85_Y38_N58
\U1|temp_led[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|temp_led[2]~2_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|temp_led[2]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y38_N6
\U1|temp_led[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|temp_led[1]~1_combout\ = ( \U1|temp_led[0]~DUPLICATE_q\ & ( (!\U1|U_DIV|tick_signal~q\ & (((\U1|temp_led\(1))))) # (\U1|U_DIV|tick_signal~q\ & ((!\U1|Equal1~0_combout\ & ((\U1|temp_led\(1)))) # (\U1|Equal1~0_combout\ & (!\U1|temp_led[2]~DUPLICATE_q\ & 
-- !\U1|temp_led\(1))))) ) ) # ( !\U1|temp_led[0]~DUPLICATE_q\ & ( \U1|temp_led\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010000111011100001000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U_DIV|ALT_INV_tick_signal~q\,
	datab => \U1|ALT_INV_Equal1~0_combout\,
	datac => \U1|ALT_INV_temp_led[2]~DUPLICATE_q\,
	datad => \U1|ALT_INV_temp_led\(1),
	dataf => \U1|ALT_INV_temp_led[0]~DUPLICATE_q\,
	combout => \U1|temp_led[1]~1_combout\);

-- Location: FF_X85_Y38_N8
\U1|temp_led[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \U1|temp_led[1]~1_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|temp_led\(1));

-- Location: LABCELL_X85_Y38_N51
\led~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \led~1_combout\ = ( \U1|temp_led\(1) & ( (\U2|temp_led\(1)) # (\btnChose~input_o\) ) ) # ( !\U1|temp_led\(1) & ( (!\btnChose~input_o\ & \U2|temp_led\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_btnChose~input_o\,
	datad => \U2|ALT_INV_temp_led\(1),
	dataf => \U1|ALT_INV_temp_led\(1),
	combout => \led~1_combout\);

-- Location: LABCELL_X85_Y38_N9
\led[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \led[1]$latch~combout\ = ( \led~1_combout\ & ( (!\btnStop~input_o\) # (\led[1]$latch~combout\) ) ) # ( !\led~1_combout\ & ( (\led[1]$latch~combout\ & \btnStop~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_led[1]$latch~combout\,
	datad => \ALT_INV_btnStop~input_o\,
	dataf => \ALT_INV_led~1_combout\,
	combout => \led[1]$latch~combout\);

-- Location: LABCELL_X85_Y38_N33
\led~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \led~2_combout\ = ( \U2|temp_led\(2) & ( (\U1|temp_led\(2) & \btnChose~input_o\) ) ) # ( !\U2|temp_led\(2) & ( (!\btnChose~input_o\) # (\U1|temp_led\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_temp_led\(2),
	datad => \ALT_INV_btnChose~input_o\,
	dataf => \U2|ALT_INV_temp_led\(2),
	combout => \led~2_combout\);

-- Location: LABCELL_X85_Y38_N54
\led[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \led[2]$latch~combout\ = ( \led~2_combout\ & ( (!\btnStop~input_o\) # (\led[2]$latch~combout\) ) ) # ( !\led~2_combout\ & ( (\led[2]$latch~combout\ & \btnStop~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_led[2]$latch~combout\,
	datad => \ALT_INV_btnStop~input_o\,
	dataf => \ALT_INV_led~2_combout\,
	combout => \led[2]$latch~combout\);

-- Location: MLABCELL_X47_Y64_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


