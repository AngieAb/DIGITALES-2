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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "08/18/2018 18:20:43"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Proyecto IS
    PORT (
	Led_p : OUT std_logic;
	Reset : IN std_logic;
	Clock : IN std_logic;
	Start : IN std_logic;
	Jugar : IN std_logic;
	Consultar : IN std_logic;
	Rojo : IN std_logic;
	Amarillo : IN std_logic;
	Azul : IN std_logic;
	Verde : IN std_logic;
	Clock_100k : IN std_logic;
	Clock_1s : IN std_logic;
	En_cont : OUT std_logic;
	cont : OUT std_logic_vector(5 DOWNTO 0);
	Disp_Decenas : OUT std_logic_vector(6 DOWNTO 0);
	Disp_Unidades : OUT std_logic_vector(6 DOWNTO 0);
	ESTADOS : OUT std_logic_vector(4 DOWNTO 0);
	Led_Am : OUT std_logic_vector(4 DOWNTO 0);
	Led_Az : OUT std_logic_vector(4 DOWNTO 0);
	Led_Oport : OUT std_logic_vector(2 DOWNTO 0);
	Led_R : OUT std_logic_vector(4 DOWNTO 0);
	Led_V : OUT std_logic_vector(4 DOWNTO 0);
	Puntos : OUT std_logic_vector(5 DOWNTO 0)
	);
END Proyecto;

-- Design Ports Information
-- Led_p	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En_cont	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[0]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_Decenas[6]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_Decenas[5]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_Decenas[4]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_Decenas[3]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_Decenas[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_Decenas[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_Decenas[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_Unidades[6]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_Unidades[5]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_Unidades[4]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_Unidades[3]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_Unidades[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_Unidades[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_Unidades[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Am[4]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Am[3]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Am[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Am[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Am[0]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Az[4]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Az[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Az[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Az[1]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Az[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Oport[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Oport[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Oport[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_R[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_R[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_R[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_R[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_R[0]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_V[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_V[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_V[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_V[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_V[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Puntos[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Puntos[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Puntos[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Puntos[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Puntos[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Puntos[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rojo	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amarillo	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Azul	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Verde	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Consultar	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jugar	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_1s	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_100k	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Proyecto IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Led_p : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Start : std_logic;
SIGNAL ww_Jugar : std_logic;
SIGNAL ww_Consultar : std_logic;
SIGNAL ww_Rojo : std_logic;
SIGNAL ww_Amarillo : std_logic;
SIGNAL ww_Azul : std_logic;
SIGNAL ww_Verde : std_logic;
SIGNAL ww_Clock_100k : std_logic;
SIGNAL ww_Clock_1s : std_logic;
SIGNAL ww_En_cont : std_logic;
SIGNAL ww_cont : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Disp_Decenas : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Disp_Unidades : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ESTADOS : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Led_Am : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Led_Az : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Led_Oport : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Led_R : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Led_V : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Puntos : std_logic_vector(5 DOWNTO 0);
SIGNAL \Clock_100k~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock_1s~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst18|Q1[4]~14_combout\ : std_logic;
SIGNAL \inst1|B[4]~3_combout\ : std_logic;
SIGNAL \inst26|z~1_combout\ : std_logic;
SIGNAL \inst30|S~2_combout\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1_combout\ : std_logic;
SIGNAL \inst34|a~1_combout\ : std_logic;
SIGNAL \inst2|a~9_combout\ : std_logic;
SIGNAL \Clock_1s~input_o\ : std_logic;
SIGNAL \Clock_100k~input_o\ : std_logic;
SIGNAL \Clock_100k~inputclkctrl_outclk\ : std_logic;
SIGNAL \Clock_1s~inputclkctrl_outclk\ : std_logic;
SIGNAL \Led_p~output_o\ : std_logic;
SIGNAL \En_cont~output_o\ : std_logic;
SIGNAL \cont[5]~output_o\ : std_logic;
SIGNAL \cont[4]~output_o\ : std_logic;
SIGNAL \cont[3]~output_o\ : std_logic;
SIGNAL \cont[2]~output_o\ : std_logic;
SIGNAL \cont[1]~output_o\ : std_logic;
SIGNAL \cont[0]~output_o\ : std_logic;
SIGNAL \Disp_Decenas[6]~output_o\ : std_logic;
SIGNAL \Disp_Decenas[5]~output_o\ : std_logic;
SIGNAL \Disp_Decenas[4]~output_o\ : std_logic;
SIGNAL \Disp_Decenas[3]~output_o\ : std_logic;
SIGNAL \Disp_Decenas[2]~output_o\ : std_logic;
SIGNAL \Disp_Decenas[1]~output_o\ : std_logic;
SIGNAL \Disp_Decenas[0]~output_o\ : std_logic;
SIGNAL \Disp_Unidades[6]~output_o\ : std_logic;
SIGNAL \Disp_Unidades[5]~output_o\ : std_logic;
SIGNAL \Disp_Unidades[4]~output_o\ : std_logic;
SIGNAL \Disp_Unidades[3]~output_o\ : std_logic;
SIGNAL \Disp_Unidades[2]~output_o\ : std_logic;
SIGNAL \Disp_Unidades[1]~output_o\ : std_logic;
SIGNAL \Disp_Unidades[0]~output_o\ : std_logic;
SIGNAL \ESTADOS[4]~output_o\ : std_logic;
SIGNAL \ESTADOS[3]~output_o\ : std_logic;
SIGNAL \ESTADOS[2]~output_o\ : std_logic;
SIGNAL \ESTADOS[1]~output_o\ : std_logic;
SIGNAL \ESTADOS[0]~output_o\ : std_logic;
SIGNAL \Led_Am[4]~output_o\ : std_logic;
SIGNAL \Led_Am[3]~output_o\ : std_logic;
SIGNAL \Led_Am[2]~output_o\ : std_logic;
SIGNAL \Led_Am[1]~output_o\ : std_logic;
SIGNAL \Led_Am[0]~output_o\ : std_logic;
SIGNAL \Led_Az[4]~output_o\ : std_logic;
SIGNAL \Led_Az[3]~output_o\ : std_logic;
SIGNAL \Led_Az[2]~output_o\ : std_logic;
SIGNAL \Led_Az[1]~output_o\ : std_logic;
SIGNAL \Led_Az[0]~output_o\ : std_logic;
SIGNAL \Led_Oport[2]~output_o\ : std_logic;
SIGNAL \Led_Oport[1]~output_o\ : std_logic;
SIGNAL \Led_Oport[0]~output_o\ : std_logic;
SIGNAL \Led_R[4]~output_o\ : std_logic;
SIGNAL \Led_R[3]~output_o\ : std_logic;
SIGNAL \Led_R[2]~output_o\ : std_logic;
SIGNAL \Led_R[1]~output_o\ : std_logic;
SIGNAL \Led_R[0]~output_o\ : std_logic;
SIGNAL \Led_V[4]~output_o\ : std_logic;
SIGNAL \Led_V[3]~output_o\ : std_logic;
SIGNAL \Led_V[2]~output_o\ : std_logic;
SIGNAL \Led_V[1]~output_o\ : std_logic;
SIGNAL \Led_V[0]~output_o\ : std_logic;
SIGNAL \Puntos[5]~output_o\ : std_logic;
SIGNAL \Puntos[4]~output_o\ : std_logic;
SIGNAL \Puntos[3]~output_o\ : std_logic;
SIGNAL \Puntos[2]~output_o\ : std_logic;
SIGNAL \Puntos[1]~output_o\ : std_logic;
SIGNAL \Puntos[0]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst30|a[0]~11_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst30|a[3]~17_combout\ : std_logic;
SIGNAL \inst34|a~2_combout\ : std_logic;
SIGNAL \inst34|a~0_combout\ : std_logic;
SIGNAL \inst34|seg_4~0_combout\ : std_logic;
SIGNAL \inst2|a~10_combout\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \inst|y.t1~0_combout\ : std_logic;
SIGNAL \inst|y.t1~q\ : std_logic;
SIGNAL \inst2|a[0]~6_combout\ : std_logic;
SIGNAL \inst2|a~7_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|a~8_combout\ : std_logic;
SIGNAL \inst2|A1~0_combout\ : std_logic;
SIGNAL \inst2|A1~1_combout\ : std_logic;
SIGNAL \inst2|A1~q\ : std_logic;
SIGNAL \Jugar~input_o\ : std_logic;
SIGNAL \Consultar~input_o\ : std_logic;
SIGNAL \inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst|y.t3~q\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|Selector12~0_combout\ : std_logic;
SIGNAL \inst|Selector12~1_combout\ : std_logic;
SIGNAL \inst|y.t25~q\ : std_logic;
SIGNAL \inst13|So[0]~6\ : std_logic;
SIGNAL \inst13|So[1]~10_combout\ : std_logic;
SIGNAL \inst13|So[0]~7_combout\ : std_logic;
SIGNAL \inst13|So[0]~8_combout\ : std_logic;
SIGNAL \inst13|So[0]~9_combout\ : std_logic;
SIGNAL \inst13|So[1]~11\ : std_logic;
SIGNAL \inst13|So[2]~12_combout\ : std_logic;
SIGNAL \inst13|So[2]~13\ : std_logic;
SIGNAL \inst13|So[3]~14_combout\ : std_logic;
SIGNAL \inst13|So[3]~15\ : std_logic;
SIGNAL \inst13|So[4]~16_combout\ : std_logic;
SIGNAL \inst13|S3~6_combout\ : std_logic;
SIGNAL \inst13|S2[0]~feeder_combout\ : std_logic;
SIGNAL \inst13|Cont_i[0]~7_combout\ : std_logic;
SIGNAL \inst13|Cont_i[3]~14\ : std_logic;
SIGNAL \inst13|Cont_i[4]~15_combout\ : std_logic;
SIGNAL \inst13|Cont_i[4]~16\ : std_logic;
SIGNAL \inst13|Cont_i[5]~17_combout\ : std_logic;
SIGNAL \inst13|Cont_i[1]~9_combout\ : std_logic;
SIGNAL \inst13|Equal3~0_combout\ : std_logic;
SIGNAL \inst13|Cont_i[5]~18\ : std_logic;
SIGNAL \inst13|Cont_i[6]~20_combout\ : std_logic;
SIGNAL \inst13|Equal3~1_combout\ : std_logic;
SIGNAL \inst13|Cont_i[0]~19_combout\ : std_logic;
SIGNAL \inst13|Cont_i[0]~8\ : std_logic;
SIGNAL \inst13|Cont_i[1]~10\ : std_logic;
SIGNAL \inst13|Cont_i[2]~11_combout\ : std_logic;
SIGNAL \inst13|Cont_i[2]~12\ : std_logic;
SIGNAL \inst13|Cont_i[3]~13_combout\ : std_logic;
SIGNAL \inst13|S2[1]~0_combout\ : std_logic;
SIGNAL \Azul~input_o\ : std_logic;
SIGNAL \Amarillo~input_o\ : std_logic;
SIGNAL \Rojo~input_o\ : std_logic;
SIGNAL \inst6~0_combout\ : std_logic;
SIGNAL \inst|y~40_combout\ : std_logic;
SIGNAL \inst|y.t12~q\ : std_logic;
SIGNAL \inst|Selector8~1_combout\ : std_logic;
SIGNAL \inst|y.t16~q\ : std_logic;
SIGNAL \inst|y~36_combout\ : std_logic;
SIGNAL \inst|y.t17~q\ : std_logic;
SIGNAL \inst|y~41_combout\ : std_logic;
SIGNAL \inst|y.t13~q\ : std_logic;
SIGNAL \inst|y~35_combout\ : std_logic;
SIGNAL \inst|y.t19~q\ : std_logic;
SIGNAL \inst|y~42_combout\ : std_logic;
SIGNAL \inst|y.t14~q\ : std_logic;
SIGNAL \inst|WideOr27~0_combout\ : std_logic;
SIGNAL \inst17|a[0]~0_combout\ : std_logic;
SIGNAL \inst17|a~1_combout\ : std_logic;
SIGNAL \inst17|a~2_combout\ : std_logic;
SIGNAL \inst17|a~3_combout\ : std_logic;
SIGNAL \inst17|seg_1~2_combout\ : std_logic;
SIGNAL \inst17|seg_1~3_combout\ : std_logic;
SIGNAL \inst17|seg_1~q\ : std_logic;
SIGNAL \inst16|a[0]~0_combout\ : std_logic;
SIGNAL \inst16|a[0]~2_combout\ : std_logic;
SIGNAL \inst16|a[1]~1_combout\ : std_logic;
SIGNAL \inst16|m~0_combout\ : std_logic;
SIGNAL \inst16|m~q\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|Selector5~1_combout\ : std_logic;
SIGNAL \inst|y.t10~q\ : std_logic;
SIGNAL \inst33|a~1_combout\ : std_logic;
SIGNAL \inst33|a~0_combout\ : std_logic;
SIGNAL \inst33|seg_3~0_combout\ : std_logic;
SIGNAL \inst33|seg_3~q\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|Selector6~1_combout\ : std_logic;
SIGNAL \inst|y.t11~q\ : std_logic;
SIGNAL \inst16|f~0_combout\ : std_logic;
SIGNAL \inst16|f~q\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst|Selector9~1_combout\ : std_logic;
SIGNAL \inst|y.t20~q\ : std_logic;
SIGNAL \inst10|Add0~0_combout\ : std_logic;
SIGNAL \inst16|d~0_combout\ : std_logic;
SIGNAL \inst16|d~q\ : std_logic;
SIGNAL \inst|Selector7~1_combout\ : std_logic;
SIGNAL \inst|y.t15~q\ : std_logic;
SIGNAL \inst10|Q1~2_combout\ : std_logic;
SIGNAL \inst10|Q1~10_combout\ : std_logic;
SIGNAL \inst10|Add0~1\ : std_logic;
SIGNAL \inst10|Add0~3\ : std_logic;
SIGNAL \inst10|Add0~4_combout\ : std_logic;
SIGNAL \inst10|Add1~0_combout\ : std_logic;
SIGNAL \inst10|Add0~2_combout\ : std_logic;
SIGNAL \inst|y~34_combout\ : std_logic;
SIGNAL \inst|y.t18~q\ : std_logic;
SIGNAL \inst|y~38_combout\ : std_logic;
SIGNAL \inst|y.t8~q\ : std_logic;
SIGNAL \inst10|Q1[1]~0_combout\ : std_logic;
SIGNAL \inst10|Add1~3\ : std_logic;
SIGNAL \inst10|Add1~4_combout\ : std_logic;
SIGNAL \inst10|process_0~0_combout\ : std_logic;
SIGNAL \inst10|Add0~5\ : std_logic;
SIGNAL \inst10|Add0~6_combout\ : std_logic;
SIGNAL \inst10|Q1~6_combout\ : std_logic;
SIGNAL \inst10|Q1[1]~5_combout\ : std_logic;
SIGNAL \inst10|Add1~5\ : std_logic;
SIGNAL \inst10|Add1~6_combout\ : std_logic;
SIGNAL \inst10|Add0~7\ : std_logic;
SIGNAL \inst10|Add0~8_combout\ : std_logic;
SIGNAL \inst10|Q1~8_combout\ : std_logic;
SIGNAL \inst10|Q1[1]~1_combout\ : std_logic;
SIGNAL \inst10|Q1[1]~3_combout\ : std_logic;
SIGNAL \inst10|Q1~9_combout\ : std_logic;
SIGNAL \inst10|Add1~1\ : std_logic;
SIGNAL \inst10|Add1~2_combout\ : std_logic;
SIGNAL \inst10|Q1~7_combout\ : std_logic;
SIGNAL \inst20|A_mayorigual_B~0_combout\ : std_logic;
SIGNAL \inst43|Add0~12_combout\ : std_logic;
SIGNAL \inst43|Add0~24_combout\ : std_logic;
SIGNAL \inst|y~37_combout\ : std_logic;
SIGNAL \inst|y.t21~q\ : std_logic;
SIGNAL \inst43|cont[0]~0_combout\ : std_logic;
SIGNAL \inst43|Add0~13\ : std_logic;
SIGNAL \inst43|Add0~14_combout\ : std_logic;
SIGNAL \inst43|Add0~25_combout\ : std_logic;
SIGNAL \inst43|Add0~15\ : std_logic;
SIGNAL \inst43|Add0~17\ : std_logic;
SIGNAL \inst43|Add0~18_combout\ : std_logic;
SIGNAL \inst43|Add0~28_combout\ : std_logic;
SIGNAL \inst43|Add0~19\ : std_logic;
SIGNAL \inst43|Add0~21\ : std_logic;
SIGNAL \inst43|Add0~22_combout\ : std_logic;
SIGNAL \inst43|Add0~26_combout\ : std_logic;
SIGNAL \inst43|Add0~16_combout\ : std_logic;
SIGNAL \inst43|Add0~29_combout\ : std_logic;
SIGNAL \inst42|Mux1~0_combout\ : std_logic;
SIGNAL \inst42|Mux0~0_combout\ : std_logic;
SIGNAL \inst|y.t22~0_combout\ : std_logic;
SIGNAL \inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst|y.t4~q\ : std_logic;
SIGNAL \inst13|S2[1]~1_combout\ : std_logic;
SIGNAL \inst13|S2[1]~2_combout\ : std_logic;
SIGNAL \inst38|S1~4_combout\ : std_logic;
SIGNAL \inst38|S0[0]~0_combout\ : std_logic;
SIGNAL \inst13|So[0]~5_combout\ : std_logic;
SIGNAL \inst13|S3~0_combout\ : std_logic;
SIGNAL \inst13|S2[4]~feeder_combout\ : std_logic;
SIGNAL \inst38|S1~0_combout\ : std_logic;
SIGNAL \inst13|S3~5_combout\ : std_logic;
SIGNAL \inst13|S2[1]~feeder_combout\ : std_logic;
SIGNAL \inst38|S1~3_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst7|Q1~4_combout\ : std_logic;
SIGNAL \inst7|Q1[1]~5_combout\ : std_logic;
SIGNAL \inst7|Q1[1]~9_combout\ : std_logic;
SIGNAL \inst7|Q1~8_combout\ : std_logic;
SIGNAL \Verde~input_o\ : std_logic;
SIGNAL \inst7|Q1~6_combout\ : std_logic;
SIGNAL \inst9|S0~2_combout\ : std_logic;
SIGNAL \inst13|S3~4_combout\ : std_logic;
SIGNAL \inst13|S1[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|S1[4]~1_combout\ : std_logic;
SIGNAL \inst13|S1[4]~0_combout\ : std_logic;
SIGNAL \inst13|S1[4]~2_combout\ : std_logic;
SIGNAL \inst38|S0~3_combout\ : std_logic;
SIGNAL \inst7|Q1~7_combout\ : std_logic;
SIGNAL \inst9|S0~1_combout\ : std_logic;
SIGNAL \inst9|S0~3_combout\ : std_logic;
SIGNAL \inst13|S4[4]~feeder_combout\ : std_logic;
SIGNAL \inst13|S4[4]~0_combout\ : std_logic;
SIGNAL \inst38|S3~0_combout\ : std_logic;
SIGNAL \inst13|S4[1]~feeder_combout\ : std_logic;
SIGNAL \inst38|S3~3_combout\ : std_logic;
SIGNAL \inst13|S4[0]~feeder_combout\ : std_logic;
SIGNAL \inst38|S3~4_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst13|S1[1]~feeder_combout\ : std_logic;
SIGNAL \inst38|S0~4_combout\ : std_logic;
SIGNAL \inst13|S1[0]~feeder_combout\ : std_logic;
SIGNAL \inst38|S0~5_combout\ : std_logic;
SIGNAL \inst13|S1[4]~feeder_combout\ : std_logic;
SIGNAL \inst38|S0~1_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|S0~0_combout\ : std_logic;
SIGNAL \inst9|S0~4_combout\ : std_logic;
SIGNAL \inst|y~39_combout\ : std_logic;
SIGNAL \inst|y.t9~q\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst|Selector4~2_combout\ : std_logic;
SIGNAL \inst|y.t6~q\ : std_logic;
SIGNAL \inst|y~32_combout\ : std_logic;
SIGNAL \inst|y.t7~q\ : std_logic;
SIGNAL \inst|y.t7_1~q\ : std_logic;
SIGNAL \inst|WideOr22~0_combout\ : std_logic;
SIGNAL \inst32|a[0]~2_combout\ : std_logic;
SIGNAL \inst32|a[0]~4_combout\ : std_logic;
SIGNAL \inst32|a~6_combout\ : std_logic;
SIGNAL \inst32|a[0]~3_combout\ : std_logic;
SIGNAL \inst32|a~7_combout\ : std_logic;
SIGNAL \inst32|a~5_combout\ : std_logic;
SIGNAL \inst32|seg_2~0_combout\ : std_logic;
SIGNAL \inst32|seg_2~1_combout\ : std_logic;
SIGNAL \inst32|seg_2~q\ : std_logic;
SIGNAL \inst|y~33_combout\ : std_logic;
SIGNAL \inst|y.t26~q\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|y.t2~q\ : std_logic;
SIGNAL \inst|L_seg~0_combout\ : std_logic;
SIGNAL \inst34|seg_4~q\ : std_logic;
SIGNAL \inst|Selector3~1_combout\ : std_logic;
SIGNAL \inst|y.t5~q\ : std_logic;
SIGNAL \inst30|a[2]~24_combout\ : std_logic;
SIGNAL \inst30|Equal2~0_combout\ : std_logic;
SIGNAL \inst30|a[2]~10_combout\ : std_logic;
SIGNAL \inst30|a[2]~23_combout\ : std_logic;
SIGNAL \inst30|a[0]~12\ : std_logic;
SIGNAL \inst30|a[1]~14\ : std_logic;
SIGNAL \inst30|a[2]~15_combout\ : std_logic;
SIGNAL \inst30|a[2]~16\ : std_logic;
SIGNAL \inst30|a[3]~18\ : std_logic;
SIGNAL \inst30|a[4]~19_combout\ : std_logic;
SIGNAL \inst30|a[4]~20\ : std_logic;
SIGNAL \inst30|a[5]~21_combout\ : std_logic;
SIGNAL \inst30|S~0_combout\ : std_logic;
SIGNAL \inst30|S~1_combout\ : std_logic;
SIGNAL \inst30|S~3_combout\ : std_logic;
SIGNAL \inst30|S~q\ : std_logic;
SIGNAL \inst|En_cont~combout\ : std_logic;
SIGNAL \inst30|a[1]~13_combout\ : std_logic;
SIGNAL \inst|S2~combout\ : std_logic;
SIGNAL \inst18|Q1[0]~6_combout\ : std_logic;
SIGNAL \inst18|Q1[0]~18_combout\ : std_logic;
SIGNAL \inst18|Q1[0]~7\ : std_logic;
SIGNAL \inst18|Q1[1]~8_combout\ : std_logic;
SIGNAL \inst18|Q1[1]~9\ : std_logic;
SIGNAL \inst18|Q1[2]~10_combout\ : std_logic;
SIGNAL \inst18|Q1[2]~11\ : std_logic;
SIGNAL \inst18|Q1[3]~12_combout\ : std_logic;
SIGNAL \inst1|B[3]~1_combout\ : std_logic;
SIGNAL \inst|y.t22~1_combout\ : std_logic;
SIGNAL \inst|y.t22~q\ : std_logic;
SIGNAL \inst10|Add1~7\ : std_logic;
SIGNAL \inst10|Add1~8_combout\ : std_logic;
SIGNAL \inst10|Add0~9\ : std_logic;
SIGNAL \inst10|Add0~10_combout\ : std_logic;
SIGNAL \inst10|Q1~4_combout\ : std_logic;
SIGNAL \inst18|Q1[3]~13\ : std_logic;
SIGNAL \inst18|Q1[4]~15\ : std_logic;
SIGNAL \inst18|Q1[5]~16_combout\ : std_logic;
SIGNAL \inst1|B[5]~0_combout\ : std_logic;
SIGNAL \inst26|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|B[2]~2_combout\ : std_logic;
SIGNAL \inst26|z~2_combout\ : std_logic;
SIGNAL \inst1|B[1]~4_combout\ : std_logic;
SIGNAL \inst26|z~0_combout\ : std_logic;
SIGNAL \inst26|B[4]~1_combout\ : std_logic;
SIGNAL \inst26|B[5]~0_combout\ : std_logic;
SIGNAL \inst24|Mux0~0_combout\ : std_logic;
SIGNAL \inst24|Mux1~0_combout\ : std_logic;
SIGNAL \inst24|Mux2~0_combout\ : std_logic;
SIGNAL \inst24|Mux3~0_combout\ : std_logic;
SIGNAL \inst24|Mux4~0_combout\ : std_logic;
SIGNAL \inst24|Mux5~0_combout\ : std_logic;
SIGNAL \inst24|Mux6~0_combout\ : std_logic;
SIGNAL \inst26|B[3]~4_combout\ : std_logic;
SIGNAL \inst26|B[2]~3_combout\ : std_logic;
SIGNAL \inst26|B[1]~2_combout\ : std_logic;
SIGNAL \inst1|B[0]~5_combout\ : std_logic;
SIGNAL \inst25|Mux0~0_combout\ : std_logic;
SIGNAL \inst25|Mux1~0_combout\ : std_logic;
SIGNAL \inst25|Mux2~0_combout\ : std_logic;
SIGNAL \inst25|Mux3~0_combout\ : std_logic;
SIGNAL \inst25|Mux4~0_combout\ : std_logic;
SIGNAL \inst25|Mux5~0_combout\ : std_logic;
SIGNAL \inst25|Mux6~0_combout\ : std_logic;
SIGNAL \inst|WideOr15~0_combout\ : std_logic;
SIGNAL \inst|WideOr15~1_combout\ : std_logic;
SIGNAL \inst|WideOr15~2_combout\ : std_logic;
SIGNAL \inst|WideOr16~0_combout\ : std_logic;
SIGNAL \inst|WideOr16~1_combout\ : std_logic;
SIGNAL \inst|WideOr16~2_combout\ : std_logic;
SIGNAL \inst|WideOr17~1_combout\ : std_logic;
SIGNAL \inst|WideOr17~0_combout\ : std_logic;
SIGNAL \inst|WideOr17~2_combout\ : std_logic;
SIGNAL \inst|WideOr17~3_combout\ : std_logic;
SIGNAL \inst|WideOr18~1_combout\ : std_logic;
SIGNAL \inst|WideOr18~0_combout\ : std_logic;
SIGNAL \inst|WideOr18~2_combout\ : std_logic;
SIGNAL \inst|WideOr19~0_combout\ : std_logic;
SIGNAL \inst|WideOr19~1_combout\ : std_logic;
SIGNAL \inst|WideOr19~2_combout\ : std_logic;
SIGNAL \inst13|S3[3]~1_combout\ : std_logic;
SIGNAL \inst13|S3[3]~2_combout\ : std_logic;
SIGNAL \inst38|S2~0_combout\ : std_logic;
SIGNAL \inst40|F[4]~0_combout\ : std_logic;
SIGNAL \inst13|S3~3_combout\ : std_logic;
SIGNAL \inst13|S3[3]~feeder_combout\ : std_logic;
SIGNAL \inst38|S2~1_combout\ : std_logic;
SIGNAL \inst40|F[3]~1_combout\ : std_logic;
SIGNAL \inst38|S2~2_combout\ : std_logic;
SIGNAL \inst40|F[2]~2_combout\ : std_logic;
SIGNAL \inst38|S2~3_combout\ : std_logic;
SIGNAL \inst40|F[1]~3_combout\ : std_logic;
SIGNAL \inst13|S3[0]~feeder_combout\ : std_logic;
SIGNAL \inst38|S2~4_combout\ : std_logic;
SIGNAL \inst40|F[0]~4_combout\ : std_logic;
SIGNAL \inst41|F[4]~0_combout\ : std_logic;
SIGNAL \inst13|S4[3]~feeder_combout\ : std_logic;
SIGNAL \inst38|S3~1_combout\ : std_logic;
SIGNAL \inst41|F[3]~1_combout\ : std_logic;
SIGNAL \inst13|S4[2]~feeder_combout\ : std_logic;
SIGNAL \inst38|S3~2_combout\ : std_logic;
SIGNAL \inst41|F[2]~2_combout\ : std_logic;
SIGNAL \inst41|F[1]~3_combout\ : std_logic;
SIGNAL \inst41|F[0]~4_combout\ : std_logic;
SIGNAL \inst42|Mux1~1_combout\ : std_logic;
SIGNAL \inst43|Add0~20_combout\ : std_logic;
SIGNAL \inst43|Add0~27_combout\ : std_logic;
SIGNAL \inst42|Mux2~0_combout\ : std_logic;
SIGNAL \inst42|Mux2~1_combout\ : std_logic;
SIGNAL \inst100|F[4]~0_combout\ : std_logic;
SIGNAL \inst13|S1[3]~feeder_combout\ : std_logic;
SIGNAL \inst38|S0~2_combout\ : std_logic;
SIGNAL \inst100|F[3]~1_combout\ : std_logic;
SIGNAL \inst100|F[2]~2_combout\ : std_logic;
SIGNAL \inst100|F[1]~3_combout\ : std_logic;
SIGNAL \inst100|F[0]~4_combout\ : std_logic;
SIGNAL \inst39|F[4]~0_combout\ : std_logic;
SIGNAL \inst13|S2[3]~feeder_combout\ : std_logic;
SIGNAL \inst38|S1~1_combout\ : std_logic;
SIGNAL \inst39|F[3]~1_combout\ : std_logic;
SIGNAL \inst13|S2[2]~feeder_combout\ : std_logic;
SIGNAL \inst38|S1~2_combout\ : std_logic;
SIGNAL \inst39|F[2]~2_combout\ : std_logic;
SIGNAL \inst39|F[1]~3_combout\ : std_logic;
SIGNAL \inst39|F[0]~4_combout\ : std_logic;
SIGNAL \inst17|a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst43|cont\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst13|S3\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst13|S2\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst34|a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst33|a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|Q1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|Cont_i\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst13|S1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst18|Q1\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst13|So\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst32|a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst10|Q1\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst16|a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|S4\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst30|a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst38|S3\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst38|S2\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst38|S1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst38|S0\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst42|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst25|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

Led_p <= ww_Led_p;
ww_Reset <= Reset;
ww_Clock <= Clock;
ww_Start <= Start;
ww_Jugar <= Jugar;
ww_Consultar <= Consultar;
ww_Rojo <= Rojo;
ww_Amarillo <= Amarillo;
ww_Azul <= Azul;
ww_Verde <= Verde;
ww_Clock_100k <= Clock_100k;
ww_Clock_1s <= Clock_1s;
En_cont <= ww_En_cont;
cont <= ww_cont;
Disp_Decenas <= ww_Disp_Decenas;
Disp_Unidades <= ww_Disp_Unidades;
ESTADOS <= ww_ESTADOS;
Led_Am <= ww_Led_Am;
Led_Az <= ww_Led_Az;
Led_Oport <= ww_Led_Oport;
Led_R <= ww_Led_R;
Led_V <= ww_Led_V;
Puntos <= ww_Puntos;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock_100k~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock_100k~input_o\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

\Clock_1s~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock_1s~input_o\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);
\inst42|ALT_INV_Mux1~1_combout\ <= NOT \inst42|Mux1~1_combout\;
\inst25|ALT_INV_Mux6~0_combout\ <= NOT \inst25|Mux6~0_combout\;

-- Location: FF_X27_Y15_N23
\inst18|Q1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst18|Q1[4]~14_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst|L_seg~0_combout\,
	ena => \inst18|Q1[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Q1\(4));

-- Location: LCCOMB_X27_Y15_N22
\inst18|Q1[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Q1[4]~14_combout\ = ((\inst18|Q1\(4) $ (\inst10|Q1\(4) $ (!\inst18|Q1[3]~13\)))) # (GND)
-- \inst18|Q1[4]~15\ = CARRY((\inst18|Q1\(4) & ((\inst10|Q1\(4)) # (!\inst18|Q1[3]~13\))) # (!\inst18|Q1\(4) & (\inst10|Q1\(4) & !\inst18|Q1[3]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Q1\(4),
	datab => \inst10|Q1\(4),
	datad => VCC,
	cin => \inst18|Q1[3]~13\,
	combout => \inst18|Q1[4]~14_combout\,
	cout => \inst18|Q1[4]~15\);

-- Location: LCCOMB_X27_Y15_N10
\inst1|B[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[4]~3_combout\ = (!\inst|y.t22~q\ & ((\inst|S2~combout\ & ((\inst18|Q1\(4)))) # (!\inst|S2~combout\ & (\inst10|Q1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t22~q\,
	datab => \inst10|Q1\(4),
	datac => \inst18|Q1\(4),
	datad => \inst|S2~combout\,
	combout => \inst1|B[4]~3_combout\);

-- Location: LCCOMB_X28_Y15_N10
\inst26|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|z~1_combout\ = (\inst1|B[4]~3_combout\ & (!\inst1|B[2]~2_combout\ & (\inst1|B[3]~1_combout\ $ (!\inst1|B[5]~0_combout\)))) # (!\inst1|B[4]~3_combout\ & (\inst1|B[2]~2_combout\ & (!\inst1|B[3]~1_combout\ & \inst1|B[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[4]~3_combout\,
	datab => \inst1|B[2]~2_combout\,
	datac => \inst1|B[3]~1_combout\,
	datad => \inst1|B[5]~0_combout\,
	combout => \inst26|z~1_combout\);

-- Location: LCCOMB_X28_Y13_N2
\inst30|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|S~2_combout\ = ((\inst30|a\(1) & (!\inst30|Equal2~0_combout\ & !\inst30|a\(0)))) # (!\inst|En_cont~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|a\(1),
	datab => \inst30|Equal2~0_combout\,
	datac => \inst|En_cont~combout\,
	datad => \inst30|a\(0),
	combout => \inst30|S~2_combout\);

-- Location: LCCOMB_X29_Y14_N6
\inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = (\inst|y.t19~q\) # ((\inst|y.t18~q\) # ((\inst|y.t15~q\ & \inst32|seg_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t15~q\,
	datab => \inst|y.t19~q\,
	datac => \inst|y.t18~q\,
	datad => \inst32|seg_2~q\,
	combout => \inst|Selector8~0_combout\);

-- Location: LCCOMB_X30_Y14_N14
\inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|y.t21~q\) # ((\Jugar~input_o\ & ((\inst|y.t4~q\) # (\inst|y.t3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Jugar~input_o\,
	datab => \inst|y.t4~q\,
	datac => \inst|y.t3~q\,
	datad => \inst|y.t21~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: FF_X30_Y13_N13
\inst2|a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|a~9_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst2|a[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|a\(2));

-- Location: FF_X29_Y14_N13
\inst34|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst34|a~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|a\(1));

-- Location: LCCOMB_X30_Y13_N30
\inst2|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_combout\ = \inst2|a\(2) $ (((\inst2|a\(1) & \inst2|a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|a\(2),
	datab => \inst2|a\(1),
	datad => \inst2|a\(0),
	combout => \inst2|Add0~1_combout\);

-- Location: LCCOMB_X29_Y14_N12
\inst34|a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|a~1_combout\ = (\inst|y.t5~q\ & ((\inst34|a\(1) & ((!\inst34|a\(0)))) # (!\inst34|a\(1) & (\inst34|a\(2) & \inst34|a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|a\(2),
	datab => \inst|y.t5~q\,
	datac => \inst34|a\(1),
	datad => \inst34|a\(0),
	combout => \inst34|a~1_combout\);

-- Location: LCCOMB_X30_Y13_N12
\inst2|a~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|a~9_combout\ = (\inst2|Add0~1_combout\ & (!\inst|y.t2~q\ & (\inst|y.t1~q\ & !\inst2|A1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~1_combout\,
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst2|A1~0_combout\,
	combout => \inst2|a~9_combout\);

-- Location: IOIBUF_X53_Y17_N15
\Clock_1s~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock_1s,
	o => \Clock_1s~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\Clock_100k~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock_100k,
	o => \Clock_100k~input_o\);

-- Location: CLKCTRL_G19
\Clock_100k~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock_100k~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock_100k~inputclkctrl_outclk\);

-- Location: CLKCTRL_G9
\Clock_1s~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock_1s~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock_1s~inputclkctrl_outclk\);

-- Location: IOOBUF_X23_Y34_N16
\Led_p~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|S~q\,
	devoe => ww_devoe,
	o => \Led_p~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\En_cont~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|En_cont~combout\,
	devoe => ww_devoe,
	o => \En_cont~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\cont[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|a\(5),
	devoe => ww_devoe,
	o => \cont[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\cont[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|a\(4),
	devoe => ww_devoe,
	o => \cont[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\cont[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|a\(3),
	devoe => ww_devoe,
	o => \cont[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\cont[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|a\(2),
	devoe => ww_devoe,
	o => \cont[2]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\cont[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|a\(1),
	devoe => ww_devoe,
	o => \cont[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\cont[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|a\(0),
	devoe => ww_devoe,
	o => \cont[0]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\Disp_Decenas[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Disp_Decenas[6]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\Disp_Decenas[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Disp_Decenas[5]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\Disp_Decenas[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Disp_Decenas[4]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\Disp_Decenas[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Disp_Decenas[3]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\Disp_Decenas[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Disp_Decenas[2]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\Disp_Decenas[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Disp_Decenas[1]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\Disp_Decenas[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Disp_Decenas[0]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\Disp_Unidades[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Disp_Unidades[6]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\Disp_Unidades[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Disp_Unidades[5]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\Disp_Unidades[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Disp_Unidades[4]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\Disp_Unidades[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Disp_Unidades[3]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\Disp_Unidades[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Disp_Unidades[2]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\Disp_Unidades[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Disp_Unidades[1]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\Disp_Unidades[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Disp_Unidades[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\ESTADOS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr15~2_combout\,
	devoe => ww_devoe,
	o => \ESTADOS[4]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\ESTADOS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr16~2_combout\,
	devoe => ww_devoe,
	o => \ESTADOS[3]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\ESTADOS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr17~3_combout\,
	devoe => ww_devoe,
	o => \ESTADOS[2]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\ESTADOS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr18~2_combout\,
	devoe => ww_devoe,
	o => \ESTADOS[1]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\ESTADOS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr19~2_combout\,
	devoe => ww_devoe,
	o => \ESTADOS[0]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\Led_Am[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|F[4]~0_combout\,
	devoe => ww_devoe,
	o => \Led_Am[4]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\Led_Am[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|F[3]~1_combout\,
	devoe => ww_devoe,
	o => \Led_Am[3]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\Led_Am[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|F[2]~2_combout\,
	devoe => ww_devoe,
	o => \Led_Am[2]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\Led_Am[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|F[1]~3_combout\,
	devoe => ww_devoe,
	o => \Led_Am[1]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\Led_Am[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|F[0]~4_combout\,
	devoe => ww_devoe,
	o => \Led_Am[0]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\Led_Az[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst41|F[4]~0_combout\,
	devoe => ww_devoe,
	o => \Led_Az[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\Led_Az[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst41|F[3]~1_combout\,
	devoe => ww_devoe,
	o => \Led_Az[3]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\Led_Az[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst41|F[2]~2_combout\,
	devoe => ww_devoe,
	o => \Led_Az[2]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\Led_Az[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst41|F[1]~3_combout\,
	devoe => ww_devoe,
	o => \Led_Az[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\Led_Az[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst41|F[0]~4_combout\,
	devoe => ww_devoe,
	o => \Led_Az[0]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\Led_Oport[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst42|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Led_Oport[2]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\Led_Oport[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst42|ALT_INV_Mux1~1_combout\,
	devoe => ww_devoe,
	o => \Led_Oport[1]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\Led_Oport[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst42|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \Led_Oport[0]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\Led_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst100|F[4]~0_combout\,
	devoe => ww_devoe,
	o => \Led_R[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\Led_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst100|F[3]~1_combout\,
	devoe => ww_devoe,
	o => \Led_R[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\Led_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst100|F[2]~2_combout\,
	devoe => ww_devoe,
	o => \Led_R[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\Led_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst100|F[1]~3_combout\,
	devoe => ww_devoe,
	o => \Led_R[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\Led_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst100|F[0]~4_combout\,
	devoe => ww_devoe,
	o => \Led_R[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\Led_V[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|F[4]~0_combout\,
	devoe => ww_devoe,
	o => \Led_V[4]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\Led_V[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|F[3]~1_combout\,
	devoe => ww_devoe,
	o => \Led_V[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Led_V[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|F[2]~2_combout\,
	devoe => ww_devoe,
	o => \Led_V[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Led_V[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|F[1]~3_combout\,
	devoe => ww_devoe,
	o => \Led_V[1]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\Led_V[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|F[0]~4_combout\,
	devoe => ww_devoe,
	o => \Led_V[0]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\Puntos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Q1\(5),
	devoe => ww_devoe,
	o => \Puntos[5]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\Puntos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Q1\(4),
	devoe => ww_devoe,
	o => \Puntos[4]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\Puntos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Q1\(3),
	devoe => ww_devoe,
	o => \Puntos[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\Puntos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Q1\(2),
	devoe => ww_devoe,
	o => \Puntos[2]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\Puntos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Q1\(1),
	devoe => ww_devoe,
	o => \Puntos[1]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\Puntos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Q1\(0),
	devoe => ww_devoe,
	o => \Puntos[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G18
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X28_Y13_N20
\inst30|a[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|a[0]~11_combout\ = \inst30|a\(0) $ (VCC)
-- \inst30|a[0]~12\ = CARRY(\inst30|a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|a\(0),
	datad => VCC,
	combout => \inst30|a[0]~11_combout\,
	cout => \inst30|a[0]~12\);

-- Location: IOIBUF_X27_Y0_N1
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G17
\Reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X28_Y13_N26
\inst30|a[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|a[3]~17_combout\ = (\inst30|a\(3) & (!\inst30|a[2]~16\)) # (!\inst30|a\(3) & ((\inst30|a[2]~16\) # (GND)))
-- \inst30|a[3]~18\ = CARRY((!\inst30|a[2]~16\) # (!\inst30|a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|a\(3),
	datad => VCC,
	cin => \inst30|a[2]~16\,
	combout => \inst30|a[3]~17_combout\,
	cout => \inst30|a[3]~18\);

-- Location: LCCOMB_X29_Y14_N10
\inst34|a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|a~2_combout\ = (\inst|y.t5~q\ & !\inst34|a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t5~q\,
	datac => \inst34|a\(0),
	combout => \inst34|a~2_combout\);

-- Location: FF_X29_Y14_N11
\inst34|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst34|a~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|a\(0));

-- Location: LCCOMB_X29_Y14_N2
\inst34|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|a~0_combout\ = (\inst|y.t5~q\ & (\inst34|a\(2) $ (((\inst34|a\(1) & \inst34|a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|a\(1),
	datab => \inst|y.t5~q\,
	datac => \inst34|a\(2),
	datad => \inst34|a\(0),
	combout => \inst34|a~0_combout\);

-- Location: FF_X29_Y14_N3
\inst34|a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst34|a~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|a\(2));

-- Location: LCCOMB_X29_Y14_N30
\inst34|seg_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|seg_4~0_combout\ = (!\inst34|a\(1) & (!\inst34|a\(2) & (\inst|y.t5~q\ & \inst34|a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|a\(1),
	datab => \inst34|a\(2),
	datac => \inst|y.t5~q\,
	datad => \inst34|a\(0),
	combout => \inst34|seg_4~0_combout\);

-- Location: LCCOMB_X30_Y13_N18
\inst2|a~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|a~10_combout\ = (\inst|y.t1~q\ & (!\inst|y.t2~q\ & (!\inst2|a\(0) & !\inst2|A1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst|y.t2~q\,
	datac => \inst2|a\(0),
	datad => \inst2|A1~0_combout\,
	combout => \inst2|a~10_combout\);

-- Location: IOIBUF_X53_Y21_N22
\Start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: LCCOMB_X30_Y13_N28
\inst|y.t1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y.t1~0_combout\ = (\inst|y.t1~q\) # (\Start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.t1~q\,
	datad => \Start~input_o\,
	combout => \inst|y.t1~0_combout\);

-- Location: FF_X30_Y13_N29
\inst|y.t1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y.t1~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t1~q\);

-- Location: LCCOMB_X30_Y13_N0
\inst2|a[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|a[0]~6_combout\ = ((\inst|y.t26~q\) # (\inst|y.t2~q\)) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t1~q\,
	datac => \inst|y.t26~q\,
	datad => \inst|y.t2~q\,
	combout => \inst2|a[0]~6_combout\);

-- Location: FF_X30_Y13_N19
\inst2|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|a~10_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst2|a[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|a\(0));

-- Location: LCCOMB_X30_Y13_N26
\inst2|a~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|a~7_combout\ = (!\inst|L_seg~0_combout\ & (!\inst2|A1~0_combout\ & (\inst2|a\(0) $ (\inst2|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|L_seg~0_combout\,
	datab => \inst2|a\(0),
	datac => \inst2|a\(1),
	datad => \inst2|A1~0_combout\,
	combout => \inst2|a~7_combout\);

-- Location: FF_X30_Y13_N27
\inst2|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|a~7_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst2|a[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|a\(1));

-- Location: LCCOMB_X30_Y13_N22
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|a\(3) $ (((\inst2|a\(2) & (\inst2|a\(0) & \inst2|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|a\(2),
	datab => \inst2|a\(0),
	datac => \inst2|a\(1),
	datad => \inst2|a\(3),
	combout => \inst2|Add0~0_combout\);

-- Location: LCCOMB_X30_Y13_N24
\inst2|a~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|a~8_combout\ = (\inst|y.t1~q\ & (!\inst|y.t2~q\ & (\inst2|Add0~0_combout\ & !\inst2|A1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst|y.t2~q\,
	datac => \inst2|Add0~0_combout\,
	datad => \inst2|A1~0_combout\,
	combout => \inst2|a~8_combout\);

-- Location: FF_X30_Y13_N25
\inst2|a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|a~8_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst2|a[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|a\(3));

-- Location: LCCOMB_X30_Y13_N20
\inst2|A1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|A1~0_combout\ = (!\inst2|a\(2) & (!\inst2|a\(0) & (\inst2|a\(1) & \inst2|a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|a\(2),
	datab => \inst2|a\(0),
	datac => \inst2|a\(1),
	datad => \inst2|a\(3),
	combout => \inst2|A1~0_combout\);

-- Location: LCCOMB_X30_Y13_N4
\inst2|A1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|A1~1_combout\ = (\inst2|A1~q\) # ((\inst|y.t26~q\ & \inst2|A1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t26~q\,
	datac => \inst2|A1~q\,
	datad => \inst2|A1~0_combout\,
	combout => \inst2|A1~1_combout\);

-- Location: FF_X30_Y13_N5
\inst2|A1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|A1~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst|L_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|A1~q\);

-- Location: IOIBUF_X27_Y0_N8
\Jugar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Jugar,
	o => \Jugar~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\Consultar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Consultar,
	o => \Consultar~input_o\);

-- Location: LCCOMB_X30_Y13_N2
\inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~1_combout\ = (\inst|y.t2~q\ & (((\inst|Selector1~0_combout\ & !\Consultar~input_o\)) # (!\Start~input_o\))) # (!\inst|y.t2~q\ & (\inst|Selector1~0_combout\ & (!\Consultar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datab => \inst|Selector1~0_combout\,
	datac => \Consultar~input_o\,
	datad => \Start~input_o\,
	combout => \inst|Selector1~1_combout\);

-- Location: FF_X30_Y13_N3
\inst|y.t3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Selector1~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t3~q\);

-- Location: LCCOMB_X30_Y13_N16
\inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (!\Jugar~input_o\ & \inst|y.t3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Jugar~input_o\,
	datad => \inst|y.t3~q\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCCOMB_X30_Y13_N14
\inst|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector12~0_combout\ = (\Consultar~input_o\ & ((\inst|Selector1~0_combout\) # ((!\inst2|A1~q\ & \inst|y.t26~q\)))) # (!\Consultar~input_o\ & (!\inst2|A1~q\ & (\inst|y.t26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Consultar~input_o\,
	datab => \inst2|A1~q\,
	datac => \inst|y.t26~q\,
	datad => \inst|Selector1~0_combout\,
	combout => \inst|Selector12~0_combout\);

-- Location: LCCOMB_X29_Y13_N8
\inst|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector12~1_combout\ = (\inst|Selector12~0_combout\) # ((!\inst32|seg_2~q\ & \inst|y.t25~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|seg_2~q\,
	datac => \inst|y.t25~q\,
	datad => \inst|Selector12~0_combout\,
	combout => \inst|Selector12~1_combout\);

-- Location: FF_X29_Y13_N9
\inst|y.t25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Selector12~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t25~q\);

-- Location: LCCOMB_X32_Y14_N12
\inst13|So[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|So[0]~5_combout\ = \inst13|So\(0) $ (VCC)
-- \inst13|So[0]~6\ = CARRY(\inst13|So\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|So\(0),
	datad => VCC,
	combout => \inst13|So[0]~5_combout\,
	cout => \inst13|So[0]~6\);

-- Location: LCCOMB_X32_Y14_N14
\inst13|So[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|So[1]~10_combout\ = (\inst13|So\(1) & (!\inst13|So[0]~6\)) # (!\inst13|So\(1) & ((\inst13|So[0]~6\) # (GND)))
-- \inst13|So[1]~11\ = CARRY((!\inst13|So[0]~6\) # (!\inst13|So\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|So\(1),
	datad => VCC,
	cin => \inst13|So[0]~6\,
	combout => \inst13|So[1]~10_combout\,
	cout => \inst13|So[1]~11\);

-- Location: LCCOMB_X32_Y14_N6
\inst13|So[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|So[0]~7_combout\ = (((!\inst13|So\(2)) # (!\inst13|So\(1))) # (!\inst13|So\(3))) # (!\inst13|So\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|So\(0),
	datab => \inst13|So\(3),
	datac => \inst13|So\(1),
	datad => \inst13|So\(2),
	combout => \inst13|So[0]~7_combout\);

-- Location: LCCOMB_X32_Y14_N26
\inst13|So[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|So[0]~8_combout\ = ((\inst13|So\(4) & !\inst13|So[0]~7_combout\)) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|So\(4),
	datac => \inst|y.t1~q\,
	datad => \inst13|So[0]~7_combout\,
	combout => \inst13|So[0]~8_combout\);

-- Location: LCCOMB_X31_Y12_N26
\inst13|So[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|So[0]~9_combout\ = (\inst|y.t4~q\) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t4~q\,
	datac => \inst|y.t1~q\,
	combout => \inst13|So[0]~9_combout\);

-- Location: FF_X32_Y14_N15
\inst13|So[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|So[1]~10_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst13|So[0]~8_combout\,
	ena => \inst13|So[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|So\(1));

-- Location: LCCOMB_X32_Y14_N16
\inst13|So[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|So[2]~12_combout\ = (\inst13|So\(2) & (\inst13|So[1]~11\ $ (GND))) # (!\inst13|So\(2) & (!\inst13|So[1]~11\ & VCC))
-- \inst13|So[2]~13\ = CARRY((\inst13|So\(2) & !\inst13|So[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|So\(2),
	datad => VCC,
	cin => \inst13|So[1]~11\,
	combout => \inst13|So[2]~12_combout\,
	cout => \inst13|So[2]~13\);

-- Location: FF_X32_Y14_N17
\inst13|So[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|So[2]~12_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst13|So[0]~8_combout\,
	ena => \inst13|So[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|So\(2));

-- Location: LCCOMB_X32_Y14_N18
\inst13|So[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|So[3]~14_combout\ = (\inst13|So\(3) & (!\inst13|So[2]~13\)) # (!\inst13|So\(3) & ((\inst13|So[2]~13\) # (GND)))
-- \inst13|So[3]~15\ = CARRY((!\inst13|So[2]~13\) # (!\inst13|So\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|So\(3),
	datad => VCC,
	cin => \inst13|So[2]~13\,
	combout => \inst13|So[3]~14_combout\,
	cout => \inst13|So[3]~15\);

-- Location: FF_X32_Y14_N19
\inst13|So[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|So[3]~14_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst13|So[0]~8_combout\,
	ena => \inst13|So[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|So\(3));

-- Location: LCCOMB_X32_Y14_N20
\inst13|So[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|So[4]~16_combout\ = \inst13|So[3]~15\ $ (!\inst13|So\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst13|So\(4),
	cin => \inst13|So[3]~15\,
	combout => \inst13|So[4]~16_combout\);

-- Location: FF_X32_Y14_N21
\inst13|So[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|So[4]~16_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst13|So[0]~8_combout\,
	ena => \inst13|So[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|So\(4));

-- Location: LCCOMB_X32_Y12_N14
\inst13|S3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3~6_combout\ = (\inst13|So\(4) & \inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|So\(4),
	datad => \inst|y.t1~q\,
	combout => \inst13|S3~6_combout\);

-- Location: LCCOMB_X32_Y12_N12
\inst13|S2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S2[0]~feeder_combout\ = \inst13|S3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|S3~6_combout\,
	combout => \inst13|S2[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y12_N10
\inst13|Cont_i[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Cont_i[0]~7_combout\ = \inst13|Cont_i\(0) $ (VCC)
-- \inst13|Cont_i[0]~8\ = CARRY(\inst13|Cont_i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Cont_i\(0),
	datad => VCC,
	combout => \inst13|Cont_i[0]~7_combout\,
	cout => \inst13|Cont_i[0]~8\);

-- Location: LCCOMB_X30_Y12_N16
\inst13|Cont_i[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Cont_i[3]~13_combout\ = (\inst13|Cont_i\(3) & (!\inst13|Cont_i[2]~12\)) # (!\inst13|Cont_i\(3) & ((\inst13|Cont_i[2]~12\) # (GND)))
-- \inst13|Cont_i[3]~14\ = CARRY((!\inst13|Cont_i[2]~12\) # (!\inst13|Cont_i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(3),
	datad => VCC,
	cin => \inst13|Cont_i[2]~12\,
	combout => \inst13|Cont_i[3]~13_combout\,
	cout => \inst13|Cont_i[3]~14\);

-- Location: LCCOMB_X30_Y12_N18
\inst13|Cont_i[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Cont_i[4]~15_combout\ = (\inst13|Cont_i\(4) & (\inst13|Cont_i[3]~14\ $ (GND))) # (!\inst13|Cont_i\(4) & (!\inst13|Cont_i[3]~14\ & VCC))
-- \inst13|Cont_i[4]~16\ = CARRY((\inst13|Cont_i\(4) & !\inst13|Cont_i[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Cont_i\(4),
	datad => VCC,
	cin => \inst13|Cont_i[3]~14\,
	combout => \inst13|Cont_i[4]~15_combout\,
	cout => \inst13|Cont_i[4]~16\);

-- Location: FF_X30_Y12_N19
\inst13|Cont_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|Cont_i[4]~15_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst13|Cont_i[0]~19_combout\,
	ena => \inst13|So[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|Cont_i\(4));

-- Location: LCCOMB_X30_Y12_N20
\inst13|Cont_i[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Cont_i[5]~17_combout\ = (\inst13|Cont_i\(5) & (!\inst13|Cont_i[4]~16\)) # (!\inst13|Cont_i\(5) & ((\inst13|Cont_i[4]~16\) # (GND)))
-- \inst13|Cont_i[5]~18\ = CARRY((!\inst13|Cont_i[4]~16\) # (!\inst13|Cont_i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(5),
	datad => VCC,
	cin => \inst13|Cont_i[4]~16\,
	combout => \inst13|Cont_i[5]~17_combout\,
	cout => \inst13|Cont_i[5]~18\);

-- Location: FF_X30_Y12_N21
\inst13|Cont_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|Cont_i[5]~17_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst13|Cont_i[0]~19_combout\,
	ena => \inst13|So[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|Cont_i\(5));

-- Location: LCCOMB_X30_Y12_N12
\inst13|Cont_i[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Cont_i[1]~9_combout\ = (\inst13|Cont_i\(1) & (!\inst13|Cont_i[0]~8\)) # (!\inst13|Cont_i\(1) & ((\inst13|Cont_i[0]~8\) # (GND)))
-- \inst13|Cont_i[1]~10\ = CARRY((!\inst13|Cont_i[0]~8\) # (!\inst13|Cont_i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(1),
	datad => VCC,
	cin => \inst13|Cont_i[0]~8\,
	combout => \inst13|Cont_i[1]~9_combout\,
	cout => \inst13|Cont_i[1]~10\);

-- Location: FF_X30_Y12_N13
\inst13|Cont_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|Cont_i[1]~9_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst13|Cont_i[0]~19_combout\,
	ena => \inst13|So[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|Cont_i\(1));

-- Location: LCCOMB_X30_Y12_N8
\inst13|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal3~0_combout\ = (\inst13|Cont_i\(0)) # ((\inst13|Cont_i\(3)) # ((\inst13|Cont_i\(1)) # (!\inst13|Cont_i\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(0),
	datab => \inst13|Cont_i\(3),
	datac => \inst13|Cont_i\(5),
	datad => \inst13|Cont_i\(1),
	combout => \inst13|Equal3~0_combout\);

-- Location: LCCOMB_X30_Y12_N22
\inst13|Cont_i[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Cont_i[6]~20_combout\ = \inst13|Cont_i\(6) $ (!\inst13|Cont_i[5]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(6),
	cin => \inst13|Cont_i[5]~18\,
	combout => \inst13|Cont_i[6]~20_combout\);

-- Location: FF_X30_Y12_N23
\inst13|Cont_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|Cont_i[6]~20_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst13|Cont_i[0]~19_combout\,
	ena => \inst13|So[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|Cont_i\(6));

-- Location: LCCOMB_X28_Y12_N18
\inst13|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal3~1_combout\ = (\inst13|Cont_i\(4)) # ((!\inst13|Cont_i\(6)) # (!\inst13|Cont_i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(4),
	datac => \inst13|Cont_i\(2),
	datad => \inst13|Cont_i\(6),
	combout => \inst13|Equal3~1_combout\);

-- Location: LCCOMB_X30_Y12_N28
\inst13|Cont_i[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Cont_i[0]~19_combout\ = ((!\inst13|Equal3~0_combout\ & !\inst13|Equal3~1_combout\)) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datac => \inst13|Equal3~0_combout\,
	datad => \inst13|Equal3~1_combout\,
	combout => \inst13|Cont_i[0]~19_combout\);

-- Location: FF_X30_Y12_N11
\inst13|Cont_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|Cont_i[0]~7_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst13|Cont_i[0]~19_combout\,
	ena => \inst13|So[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|Cont_i\(0));

-- Location: LCCOMB_X30_Y12_N14
\inst13|Cont_i[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Cont_i[2]~11_combout\ = (\inst13|Cont_i\(2) & (\inst13|Cont_i[1]~10\ $ (GND))) # (!\inst13|Cont_i\(2) & (!\inst13|Cont_i[1]~10\ & VCC))
-- \inst13|Cont_i[2]~12\ = CARRY((\inst13|Cont_i\(2) & !\inst13|Cont_i[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Cont_i\(2),
	datad => VCC,
	cin => \inst13|Cont_i[1]~10\,
	combout => \inst13|Cont_i[2]~11_combout\,
	cout => \inst13|Cont_i[2]~12\);

-- Location: FF_X30_Y12_N15
\inst13|Cont_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|Cont_i[2]~11_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst13|Cont_i[0]~19_combout\,
	ena => \inst13|So[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|Cont_i\(2));

-- Location: FF_X30_Y12_N17
\inst13|Cont_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|Cont_i[3]~13_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst13|Cont_i[0]~19_combout\,
	ena => \inst13|So[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|Cont_i\(3));

-- Location: LCCOMB_X30_Y12_N6
\inst13|S2[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S2[1]~0_combout\ = ((\inst13|Cont_i\(3)) # ((\inst13|Cont_i\(0)) # (!\inst13|Cont_i\(5)))) # (!\inst13|Cont_i\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(1),
	datab => \inst13|Cont_i\(3),
	datac => \inst13|Cont_i\(0),
	datad => \inst13|Cont_i\(5),
	combout => \inst13|S2[1]~0_combout\);

-- Location: IOIBUF_X36_Y0_N8
\Azul~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Azul,
	o => \Azul~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\Amarillo~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Amarillo,
	o => \Amarillo~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\Rojo~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rojo,
	o => \Rojo~input_o\);

-- Location: LCCOMB_X32_Y14_N0
\inst6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6~0_combout\ = (\Verde~input_o\) # ((\Azul~input_o\) # ((\Amarillo~input_o\) # (\Rojo~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Verde~input_o\,
	datab => \Azul~input_o\,
	datac => \Amarillo~input_o\,
	datad => \Rojo~input_o\,
	combout => \inst6~0_combout\);

-- Location: LCCOMB_X29_Y14_N26
\inst|y~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~40_combout\ = (\inst|y.t11~q\ & (!\inst17|seg_1~q\ & \inst6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t11~q\,
	datac => \inst17|seg_1~q\,
	datad => \inst6~0_combout\,
	combout => \inst|y~40_combout\);

-- Location: FF_X29_Y14_N27
\inst|y.t12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~40_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t12~q\);

-- Location: LCCOMB_X29_Y13_N22
\inst|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector8~1_combout\ = (\inst|Selector8~0_combout\) # ((!\inst6~0_combout\ & (\inst|y.t16~q\ & !\inst17|seg_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector8~0_combout\,
	datab => \inst6~0_combout\,
	datac => \inst|y.t16~q\,
	datad => \inst17|seg_1~q\,
	combout => \inst|Selector8~1_combout\);

-- Location: FF_X29_Y13_N23
\inst|y.t16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Selector8~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t16~q\);

-- Location: LCCOMB_X29_Y14_N20
\inst|y~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~36_combout\ = (\inst|y.t16~q\ & (!\inst17|seg_1~q\ & \inst6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t16~q\,
	datac => \inst17|seg_1~q\,
	datad => \inst6~0_combout\,
	combout => \inst|y~36_combout\);

-- Location: FF_X29_Y14_N21
\inst|y.t17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~36_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t17~q\);

-- Location: LCCOMB_X31_Y14_N20
\inst|y~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~41_combout\ = (\inst|y.t12~q\ & \inst9|S0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t12~q\,
	datad => \inst9|S0~4_combout\,
	combout => \inst|y~41_combout\);

-- Location: FF_X31_Y14_N21
\inst|y.t13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~41_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t13~q\);

-- Location: LCCOMB_X31_Y14_N30
\inst|y~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~35_combout\ = (\inst|y.t17~q\ & !\inst9|S0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.t17~q\,
	datad => \inst9|S0~4_combout\,
	combout => \inst|y~35_combout\);

-- Location: FF_X31_Y14_N31
\inst|y.t19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~35_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t19~q\);

-- Location: LCCOMB_X31_Y14_N2
\inst|y~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~42_combout\ = (\inst|y.t12~q\ & !\inst9|S0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t12~q\,
	datad => \inst9|S0~4_combout\,
	combout => \inst|y~42_combout\);

-- Location: FF_X31_Y14_N3
\inst|y.t14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~42_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t14~q\);

-- Location: LCCOMB_X31_Y14_N0
\inst|WideOr27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr27~0_combout\ = (!\inst|y.t18~q\ & (!\inst|y.t13~q\ & (!\inst|y.t19~q\ & !\inst|y.t14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t18~q\,
	datab => \inst|y.t13~q\,
	datac => \inst|y.t19~q\,
	datad => \inst|y.t14~q\,
	combout => \inst|WideOr27~0_combout\);

-- Location: LCCOMB_X31_Y14_N18
\inst17|a[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|a[0]~0_combout\ = (!\inst|L_seg~0_combout\ & (!\inst17|seg_1~2_combout\ & ((!\inst|WideOr27~0_combout\) # (!\inst7|Q1[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Q1[1]~5_combout\,
	datab => \inst|WideOr27~0_combout\,
	datac => \inst|L_seg~0_combout\,
	datad => \inst17|seg_1~2_combout\,
	combout => \inst17|a[0]~0_combout\);

-- Location: LCCOMB_X31_Y14_N22
\inst17|a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|a~1_combout\ = (!\inst17|a\(0) & \inst17|a[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|a\(0),
	datad => \inst17|a[0]~0_combout\,
	combout => \inst17|a~1_combout\);

-- Location: FF_X31_Y14_N23
\inst17|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst17|a~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|a\(0));

-- Location: LCCOMB_X31_Y14_N8
\inst17|a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|a~2_combout\ = (\inst17|a[0]~0_combout\ & (\inst17|a\(2) $ (((\inst17|a\(1) & \inst17|a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|a\(1),
	datab => \inst17|a\(0),
	datac => \inst17|a\(2),
	datad => \inst17|a[0]~0_combout\,
	combout => \inst17|a~2_combout\);

-- Location: FF_X31_Y14_N9
\inst17|a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst17|a~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|a\(2));

-- Location: LCCOMB_X31_Y14_N6
\inst17|a~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|a~3_combout\ = (\inst17|a[0]~0_combout\ & (\inst17|a\(0) $ (\inst17|a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|a\(0),
	datac => \inst17|a\(1),
	datad => \inst17|a[0]~0_combout\,
	combout => \inst17|a~3_combout\);

-- Location: FF_X31_Y14_N7
\inst17|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst17|a~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|a\(1));

-- Location: LCCOMB_X31_Y14_N24
\inst17|seg_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_1~2_combout\ = (\inst17|a\(0) & (!\inst17|a\(2) & !\inst17|a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|a\(0),
	datac => \inst17|a\(2),
	datad => \inst17|a\(1),
	combout => \inst17|seg_1~2_combout\);

-- Location: LCCOMB_X31_Y14_N16
\inst17|seg_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_1~3_combout\ = (\inst17|seg_1~2_combout\ & (((\inst|y.t12~q\) # (\inst|y.t17~q\)) # (!\inst|WideOr27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr27~0_combout\,
	datab => \inst|y.t12~q\,
	datac => \inst|y.t17~q\,
	datad => \inst17|seg_1~2_combout\,
	combout => \inst17|seg_1~3_combout\);

-- Location: FF_X31_Y14_N17
\inst17|seg_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst17|seg_1~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst|L_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seg_1~q\);

-- Location: LCCOMB_X28_Y14_N2
\inst16|a[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|a[0]~0_combout\ = (!\inst|y.t14~q\ & (!\inst|y.t19~q\ & !\inst|y.t9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t14~q\,
	datac => \inst|y.t19~q\,
	datad => \inst|y.t9~q\,
	combout => \inst16|a[0]~0_combout\);

-- Location: LCCOMB_X30_Y14_N6
\inst16|a[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|a[0]~2_combout\ = (!\inst|L_seg~0_combout\ & ((\inst16|a\(0) & (!\inst16|a\(1) & \inst16|a[0]~0_combout\)) # (!\inst16|a\(0) & ((!\inst16|a[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|L_seg~0_combout\,
	datab => \inst16|a\(1),
	datac => \inst16|a\(0),
	datad => \inst16|a[0]~0_combout\,
	combout => \inst16|a[0]~2_combout\);

-- Location: FF_X30_Y14_N7
\inst16|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|a[0]~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|a\(0));

-- Location: LCCOMB_X30_Y14_N16
\inst16|a[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|a[1]~1_combout\ = (!\inst|L_seg~0_combout\ & ((\inst16|a\(0) & (!\inst16|a\(1) & !\inst16|a[0]~0_combout\)) # (!\inst16|a\(0) & (\inst16|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|L_seg~0_combout\,
	datab => \inst16|a\(0),
	datac => \inst16|a\(1),
	datad => \inst16|a[0]~0_combout\,
	combout => \inst16|a[1]~1_combout\);

-- Location: FF_X30_Y14_N17
\inst16|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|a[1]~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|a\(1));

-- Location: LCCOMB_X30_Y14_N20
\inst16|m~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|m~0_combout\ = (\inst16|m~q\) # ((!\inst16|a\(1) & \inst16|a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|a\(1),
	datac => \inst16|m~q\,
	datad => \inst16|a\(0),
	combout => \inst16|m~0_combout\);

-- Location: FF_X30_Y14_N21
\inst16|m\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|m~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst|L_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|m~q\);

-- Location: LCCOMB_X30_Y14_N8
\inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (!\Jugar~input_o\ & \inst|y.t4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Jugar~input_o\,
	datad => \inst|y.t4~q\,
	combout => \inst|Selector3~0_combout\);

-- Location: LCCOMB_X31_Y14_N26
\inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (!\inst33|seg_3~q\ & \inst|y.t10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|seg_3~q\,
	datad => \inst|y.t10~q\,
	combout => \inst|Selector5~0_combout\);

-- Location: LCCOMB_X30_Y14_N24
\inst|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector5~1_combout\ = (\inst|Selector5~0_combout\) # ((!\inst16|f~q\ & (\inst16|m~q\ & \inst|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|f~q\,
	datab => \inst16|m~q\,
	datac => \inst|Selector3~0_combout\,
	datad => \inst|Selector5~0_combout\,
	combout => \inst|Selector5~1_combout\);

-- Location: FF_X30_Y14_N25
\inst|y.t10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Selector5~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t10~q\);

-- Location: LCCOMB_X31_Y14_N28
\inst33|a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|a~1_combout\ = (!\inst33|a\(0) & \inst|y.t10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|a\(0),
	datad => \inst|y.t10~q\,
	combout => \inst33|a~1_combout\);

-- Location: FF_X31_Y14_N29
\inst33|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst33|a~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|a\(0));

-- Location: LCCOMB_X31_Y14_N10
\inst33|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|a~0_combout\ = (\inst|y.t10~q\ & (\inst33|a\(1) $ (\inst33|a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t10~q\,
	datac => \inst33|a\(1),
	datad => \inst33|a\(0),
	combout => \inst33|a~0_combout\);

-- Location: FF_X31_Y14_N11
\inst33|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst33|a~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|a\(1));

-- Location: LCCOMB_X31_Y14_N14
\inst33|seg_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|seg_3~0_combout\ = (\inst33|a\(0) & (\inst|y.t10~q\ & \inst33|a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|a\(0),
	datac => \inst|y.t10~q\,
	datad => \inst33|a\(1),
	combout => \inst33|seg_3~0_combout\);

-- Location: FF_X31_Y14_N15
\inst33|seg_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst33|seg_3~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst|L_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|seg_3~q\);

-- Location: LCCOMB_X31_Y14_N4
\inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst|y.t13~q\) # ((\inst|y.t14~q\) # ((\inst33|seg_3~q\ & \inst|y.t10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t13~q\,
	datab => \inst|y.t14~q\,
	datac => \inst33|seg_3~q\,
	datad => \inst|y.t10~q\,
	combout => \inst|Selector6~0_combout\);

-- Location: LCCOMB_X30_Y14_N28
\inst|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector6~1_combout\ = (\inst|Selector6~0_combout\) # ((!\inst6~0_combout\ & (!\inst17|seg_1~q\ & \inst|y.t11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6~0_combout\,
	datab => \inst17|seg_1~q\,
	datac => \inst|y.t11~q\,
	datad => \inst|Selector6~0_combout\,
	combout => \inst|Selector6~1_combout\);

-- Location: FF_X30_Y14_N29
\inst|y.t11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Selector6~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t11~q\);

-- Location: LCCOMB_X30_Y14_N22
\inst16|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|f~0_combout\ = (\inst16|f~q\) # ((!\inst16|a\(1) & !\inst16|a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|a\(1),
	datac => \inst16|f~q\,
	datad => \inst16|a\(0),
	combout => \inst16|f~0_combout\);

-- Location: FF_X30_Y14_N23
\inst16|f\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|f~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst|L_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|f~q\);

-- Location: LCCOMB_X30_Y14_N10
\inst|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (!\Jugar~input_o\ & (\inst|y.t4~q\ & (!\inst16|f~q\ & !\inst16|m~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Jugar~input_o\,
	datab => \inst|y.t4~q\,
	datac => \inst16|f~q\,
	datad => \inst16|m~q\,
	combout => \inst|Selector7~0_combout\);

-- Location: LCCOMB_X29_Y14_N0
\inst|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector9~0_combout\ = (\inst16|d~q\ & (\inst32|seg_2~q\ & ((\inst|y.t6~q\)))) # (!\inst16|d~q\ & ((\inst|Selector7~0_combout\) # ((\inst32|seg_2~q\ & \inst|y.t6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|d~q\,
	datab => \inst32|seg_2~q\,
	datac => \inst|Selector7~0_combout\,
	datad => \inst|y.t6~q\,
	combout => \inst|Selector9~0_combout\);

-- Location: LCCOMB_X29_Y14_N22
\inst|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector9~1_combout\ = (\inst|Selector9~0_combout\) # ((\inst17|seg_1~q\ & ((\inst|y.t11~q\) # (\inst|y.t16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_1~q\,
	datab => \inst|y.t11~q\,
	datac => \inst|y.t16~q\,
	datad => \inst|Selector9~0_combout\,
	combout => \inst|Selector9~1_combout\);

-- Location: FF_X29_Y14_N23
\inst|y.t20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Selector9~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t20~q\);

-- Location: LCCOMB_X30_Y15_N14
\inst10|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~0_combout\ = \inst10|Q1\(0) $ (VCC)
-- \inst10|Add0~1\ = CARRY(\inst10|Q1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Q1\(0),
	datad => VCC,
	combout => \inst10|Add0~0_combout\,
	cout => \inst10|Add0~1\);

-- Location: LCCOMB_X30_Y14_N4
\inst16|d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|d~0_combout\ = (\inst16|d~q\) # ((\inst16|a\(1) & !\inst16|a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|a\(1),
	datac => \inst16|d~q\,
	datad => \inst16|a\(0),
	combout => \inst16|d~0_combout\);

-- Location: FF_X30_Y14_N5
\inst16|d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|d~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst|L_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|d~q\);

-- Location: LCCOMB_X30_Y14_N2
\inst|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector7~1_combout\ = (\inst|Selector7~0_combout\ & ((\inst16|d~q\) # ((\inst|y.t15~q\ & !\inst32|seg_2~q\)))) # (!\inst|Selector7~0_combout\ & (((\inst|y.t15~q\ & !\inst32|seg_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector7~0_combout\,
	datab => \inst16|d~q\,
	datac => \inst|y.t15~q\,
	datad => \inst32|seg_2~q\,
	combout => \inst|Selector7~1_combout\);

-- Location: FF_X30_Y14_N3
\inst|y.t15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Selector7~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t15~q\);

-- Location: LCCOMB_X31_Y15_N28
\inst10|Q1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1~2_combout\ = (!\inst|y.t2~q\ & (!\inst|y.t10~q\ & (!\inst|y.t15~q\ & \inst|y.t1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datab => \inst|y.t10~q\,
	datac => \inst|y.t15~q\,
	datad => \inst|y.t1~q\,
	combout => \inst10|Q1~2_combout\);

-- Location: LCCOMB_X30_Y15_N2
\inst10|Q1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1~10_combout\ = (\inst10|Q1~2_combout\ & ((\inst10|process_0~0_combout\ & (\inst10|Add0~0_combout\)) # (!\inst10|process_0~0_combout\ & ((\inst10|Q1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|process_0~0_combout\,
	datab => \inst10|Add0~0_combout\,
	datac => \inst10|Q1\(0),
	datad => \inst10|Q1~2_combout\,
	combout => \inst10|Q1~10_combout\);

-- Location: FF_X30_Y15_N3
\inst10|Q1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst10|Q1~10_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Q1\(0));

-- Location: LCCOMB_X30_Y15_N16
\inst10|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~2_combout\ = (\inst10|Q1\(1) & (\inst10|Add0~1\ & VCC)) # (!\inst10|Q1\(1) & (!\inst10|Add0~1\))
-- \inst10|Add0~3\ = CARRY((!\inst10|Q1\(1) & !\inst10|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(1),
	datad => VCC,
	cin => \inst10|Add0~1\,
	combout => \inst10|Add0~2_combout\,
	cout => \inst10|Add0~3\);

-- Location: LCCOMB_X30_Y15_N18
\inst10|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~4_combout\ = (\inst10|Q1\(2) & (\inst10|Add0~3\ $ (GND))) # (!\inst10|Q1\(2) & (!\inst10|Add0~3\ & VCC))
-- \inst10|Add0~5\ = CARRY((\inst10|Q1\(2) & !\inst10|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Q1\(2),
	datad => VCC,
	cin => \inst10|Add0~3\,
	combout => \inst10|Add0~4_combout\,
	cout => \inst10|Add0~5\);

-- Location: LCCOMB_X31_Y15_N12
\inst10|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add1~0_combout\ = \inst10|Q1\(1) $ (VCC)
-- \inst10|Add1~1\ = CARRY(\inst10|Q1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Q1\(1),
	datad => VCC,
	combout => \inst10|Add1~0_combout\,
	cout => \inst10|Add1~1\);

-- Location: LCCOMB_X31_Y14_N12
\inst|y~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~34_combout\ = (\inst|y.t17~q\ & \inst9|S0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.t17~q\,
	datad => \inst9|S0~4_combout\,
	combout => \inst|y~34_combout\);

-- Location: FF_X31_Y14_N13
\inst|y.t18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~34_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t18~q\);

-- Location: LCCOMB_X29_Y13_N18
\inst|y~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~38_combout\ = (\inst|y.t7_1~q\ & (\inst30|S~q\ & \inst9|S0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t7_1~q\,
	datac => \inst30|S~q\,
	datad => \inst9|S0~4_combout\,
	combout => \inst|y~38_combout\);

-- Location: FF_X29_Y13_N19
\inst|y.t8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~38_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t8~q\);

-- Location: LCCOMB_X30_Y15_N28
\inst10|Q1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1[1]~0_combout\ = (!\inst|y.t13~q\ & (!\inst10|Q1\(0) & (!\inst|y.t18~q\ & !\inst|y.t8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t13~q\,
	datab => \inst10|Q1\(0),
	datac => \inst|y.t18~q\,
	datad => \inst|y.t8~q\,
	combout => \inst10|Q1[1]~0_combout\);

-- Location: LCCOMB_X31_Y15_N14
\inst10|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add1~2_combout\ = (\inst10|Q1\(2) & (\inst10|Add1~1\ & VCC)) # (!\inst10|Q1\(2) & (!\inst10|Add1~1\))
-- \inst10|Add1~3\ = CARRY((!\inst10|Q1\(2) & !\inst10|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(2),
	datad => VCC,
	cin => \inst10|Add1~1\,
	combout => \inst10|Add1~2_combout\,
	cout => \inst10|Add1~3\);

-- Location: LCCOMB_X31_Y15_N16
\inst10|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add1~4_combout\ = (\inst10|Q1\(3) & ((GND) # (!\inst10|Add1~3\))) # (!\inst10|Q1\(3) & (\inst10|Add1~3\ $ (GND)))
-- \inst10|Add1~5\ = CARRY((\inst10|Q1\(3)) # (!\inst10|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Q1\(3),
	datad => VCC,
	cin => \inst10|Add1~3\,
	combout => \inst10|Add1~4_combout\,
	cout => \inst10|Add1~5\);

-- Location: LCCOMB_X30_Y15_N26
\inst10|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|process_0~0_combout\ = (\inst|y.t13~q\) # ((\inst|y.t18~q\) # (\inst|y.t8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t13~q\,
	datac => \inst|y.t18~q\,
	datad => \inst|y.t8~q\,
	combout => \inst10|process_0~0_combout\);

-- Location: LCCOMB_X30_Y15_N20
\inst10|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~6_combout\ = (\inst10|Q1\(3) & (!\inst10|Add0~5\)) # (!\inst10|Q1\(3) & ((\inst10|Add0~5\) # (GND)))
-- \inst10|Add0~7\ = CARRY((!\inst10|Add0~5\) # (!\inst10|Q1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Q1\(3),
	datad => VCC,
	cin => \inst10|Add0~5\,
	combout => \inst10|Add0~6_combout\,
	cout => \inst10|Add0~7\);

-- Location: LCCOMB_X31_Y15_N8
\inst10|Q1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1~6_combout\ = (!\inst10|Q1[1]~3_combout\ & ((\inst10|process_0~0_combout\ & ((\inst10|Add0~6_combout\))) # (!\inst10|process_0~0_combout\ & (\inst10|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1[1]~3_combout\,
	datab => \inst10|Add1~4_combout\,
	datac => \inst10|process_0~0_combout\,
	datad => \inst10|Add0~6_combout\,
	combout => \inst10|Q1~6_combout\);

-- Location: LCCOMB_X31_Y15_N6
\inst10|Q1[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1[1]~5_combout\ = (\inst|y.t9~q\) # (((\inst|y.t8~q\) # (!\inst10|Q1~2_combout\)) # (!\inst|WideOr27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t9~q\,
	datab => \inst|WideOr27~0_combout\,
	datac => \inst|y.t8~q\,
	datad => \inst10|Q1~2_combout\,
	combout => \inst10|Q1[1]~5_combout\);

-- Location: FF_X31_Y15_N9
\inst10|Q1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst10|Q1~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst10|Q1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Q1\(3));

-- Location: LCCOMB_X31_Y15_N18
\inst10|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add1~6_combout\ = (\inst10|Q1\(4) & (\inst10|Add1~5\ & VCC)) # (!\inst10|Q1\(4) & (!\inst10|Add1~5\))
-- \inst10|Add1~7\ = CARRY((!\inst10|Q1\(4) & !\inst10|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Q1\(4),
	datad => VCC,
	cin => \inst10|Add1~5\,
	combout => \inst10|Add1~6_combout\,
	cout => \inst10|Add1~7\);

-- Location: LCCOMB_X30_Y15_N22
\inst10|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~8_combout\ = (\inst10|Q1\(4) & (\inst10|Add0~7\ $ (GND))) # (!\inst10|Q1\(4) & (!\inst10|Add0~7\ & VCC))
-- \inst10|Add0~9\ = CARRY((\inst10|Q1\(4) & !\inst10|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(4),
	datad => VCC,
	cin => \inst10|Add0~7\,
	combout => \inst10|Add0~8_combout\,
	cout => \inst10|Add0~9\);

-- Location: LCCOMB_X31_Y15_N4
\inst10|Q1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1~8_combout\ = (!\inst10|Q1[1]~3_combout\ & ((\inst10|process_0~0_combout\ & ((\inst10|Add0~8_combout\))) # (!\inst10|process_0~0_combout\ & (\inst10|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1[1]~3_combout\,
	datab => \inst10|Add1~6_combout\,
	datac => \inst10|process_0~0_combout\,
	datad => \inst10|Add0~8_combout\,
	combout => \inst10|Q1~8_combout\);

-- Location: FF_X31_Y15_N5
\inst10|Q1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst10|Q1~8_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst10|Q1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Q1\(4));

-- Location: LCCOMB_X30_Y15_N6
\inst10|Q1[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1[1]~1_combout\ = (!\inst10|Q1\(5) & (!\inst10|Q1\(2) & (!\inst10|Q1\(3) & !\inst10|Q1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(5),
	datab => \inst10|Q1\(2),
	datac => \inst10|Q1\(3),
	datad => \inst10|Q1\(4),
	combout => \inst10|Q1[1]~1_combout\);

-- Location: LCCOMB_X30_Y15_N8
\inst10|Q1[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1[1]~3_combout\ = ((!\inst10|Q1\(1) & (\inst10|Q1[1]~0_combout\ & \inst10|Q1[1]~1_combout\))) # (!\inst10|Q1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(1),
	datab => \inst10|Q1[1]~0_combout\,
	datac => \inst10|Q1[1]~1_combout\,
	datad => \inst10|Q1~2_combout\,
	combout => \inst10|Q1[1]~3_combout\);

-- Location: LCCOMB_X31_Y15_N2
\inst10|Q1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1~9_combout\ = (!\inst10|Q1[1]~3_combout\ & ((\inst10|process_0~0_combout\ & ((\inst10|Add0~2_combout\))) # (!\inst10|process_0~0_combout\ & (\inst10|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|process_0~0_combout\,
	datab => \inst10|Add1~0_combout\,
	datac => \inst10|Add0~2_combout\,
	datad => \inst10|Q1[1]~3_combout\,
	combout => \inst10|Q1~9_combout\);

-- Location: FF_X31_Y15_N3
\inst10|Q1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst10|Q1~9_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst10|Q1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Q1\(1));

-- Location: LCCOMB_X31_Y15_N22
\inst10|Q1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1~7_combout\ = (!\inst10|Q1[1]~3_combout\ & ((\inst10|process_0~0_combout\ & (\inst10|Add0~4_combout\)) # (!\inst10|process_0~0_combout\ & ((\inst10|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|process_0~0_combout\,
	datab => \inst10|Add0~4_combout\,
	datac => \inst10|Add1~2_combout\,
	datad => \inst10|Q1[1]~3_combout\,
	combout => \inst10|Q1~7_combout\);

-- Location: FF_X31_Y15_N23
\inst10|Q1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst10|Q1~7_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst10|Q1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Q1\(2));

-- Location: LCCOMB_X30_Y15_N30
\inst20|A_mayorigual_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|A_mayorigual_B~0_combout\ = (\inst10|Q1\(5)) # ((\inst10|Q1\(4)) # ((\inst10|Q1\(2) & \inst10|Q1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(5),
	datab => \inst10|Q1\(2),
	datac => \inst10|Q1\(3),
	datad => \inst10|Q1\(4),
	combout => \inst20|A_mayorigual_B~0_combout\);

-- Location: LCCOMB_X29_Y15_N4
\inst43|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~12_combout\ = \inst43|cont\(0) $ (GND)
-- \inst43|Add0~13\ = CARRY(!\inst43|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst43|cont\(0),
	datad => VCC,
	combout => \inst43|Add0~12_combout\,
	cout => \inst43|Add0~13\);

-- Location: LCCOMB_X29_Y15_N16
\inst43|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~24_combout\ = (!\inst|y.t2~q\ & (!\inst43|Add0~12_combout\ & (\inst42|Mux0~0_combout\ & \inst|y.t1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datab => \inst43|Add0~12_combout\,
	datac => \inst42|Mux0~0_combout\,
	datad => \inst|y.t1~q\,
	combout => \inst43|Add0~24_combout\);

-- Location: LCCOMB_X30_Y14_N18
\inst|y~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~37_combout\ = (\inst|y.t20~q\ & (\inst20|A_mayorigual_B~0_combout\ & \inst|y.t22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t20~q\,
	datac => \inst20|A_mayorigual_B~0_combout\,
	datad => \inst|y.t22~0_combout\,
	combout => \inst|y~37_combout\);

-- Location: FF_X30_Y14_N19
\inst|y.t21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~37_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t21~q\);

-- Location: LCCOMB_X29_Y15_N18
\inst43|cont[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|cont[0]~0_combout\ = ((\inst|y.t21~q\) # (\inst|y.t2~q\)) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datac => \inst|y.t21~q\,
	datad => \inst|y.t2~q\,
	combout => \inst43|cont[0]~0_combout\);

-- Location: FF_X29_Y15_N17
\inst43|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst43|Add0~24_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst43|cont[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|cont\(0));

-- Location: LCCOMB_X29_Y15_N6
\inst43|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~14_combout\ = (\inst43|cont\(1) & (!\inst43|Add0~13\)) # (!\inst43|cont\(1) & (\inst43|Add0~13\ & VCC))
-- \inst43|Add0~15\ = CARRY((\inst43|cont\(1) & !\inst43|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst43|cont\(1),
	datad => VCC,
	cin => \inst43|Add0~13\,
	combout => \inst43|Add0~14_combout\,
	cout => \inst43|Add0~15\);

-- Location: LCCOMB_X29_Y15_N2
\inst43|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~25_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & (\inst42|Mux0~0_combout\ & !\inst43|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datab => \inst|y.t1~q\,
	datac => \inst42|Mux0~0_combout\,
	datad => \inst43|Add0~14_combout\,
	combout => \inst43|Add0~25_combout\);

-- Location: FF_X29_Y15_N3
\inst43|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst43|Add0~25_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst43|cont[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|cont\(1));

-- Location: LCCOMB_X29_Y15_N8
\inst43|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~16_combout\ = (\inst43|cont\(2) & ((GND) # (!\inst43|Add0~15\))) # (!\inst43|cont\(2) & (\inst43|Add0~15\ $ (GND)))
-- \inst43|Add0~17\ = CARRY((\inst43|cont\(2)) # (!\inst43|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|cont\(2),
	datad => VCC,
	cin => \inst43|Add0~15\,
	combout => \inst43|Add0~16_combout\,
	cout => \inst43|Add0~17\);

-- Location: LCCOMB_X29_Y15_N10
\inst43|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~18_combout\ = (\inst43|cont\(3) & (\inst43|Add0~17\ & VCC)) # (!\inst43|cont\(3) & (!\inst43|Add0~17\))
-- \inst43|Add0~19\ = CARRY((!\inst43|cont\(3) & !\inst43|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst43|cont\(3),
	datad => VCC,
	cin => \inst43|Add0~17\,
	combout => \inst43|Add0~18_combout\,
	cout => \inst43|Add0~19\);

-- Location: LCCOMB_X29_Y15_N28
\inst43|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~28_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & (\inst42|Mux0~0_combout\ & \inst43|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datab => \inst|y.t1~q\,
	datac => \inst42|Mux0~0_combout\,
	datad => \inst43|Add0~18_combout\,
	combout => \inst43|Add0~28_combout\);

-- Location: FF_X29_Y15_N29
\inst43|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst43|Add0~28_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst43|cont[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|cont\(3));

-- Location: LCCOMB_X29_Y15_N12
\inst43|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~20_combout\ = (\inst43|cont\(4) & ((GND) # (!\inst43|Add0~19\))) # (!\inst43|cont\(4) & (\inst43|Add0~19\ $ (GND)))
-- \inst43|Add0~21\ = CARRY((\inst43|cont\(4)) # (!\inst43|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|cont\(4),
	datad => VCC,
	cin => \inst43|Add0~19\,
	combout => \inst43|Add0~20_combout\,
	cout => \inst43|Add0~21\);

-- Location: LCCOMB_X29_Y15_N14
\inst43|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~22_combout\ = \inst43|Add0~21\ $ (!\inst43|cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst43|cont\(5),
	cin => \inst43|Add0~21\,
	combout => \inst43|Add0~22_combout\);

-- Location: LCCOMB_X29_Y15_N20
\inst43|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~26_combout\ = (\inst42|Mux0~0_combout\ & (!\inst|y.t2~q\ & (\inst43|Add0~22_combout\ & \inst|y.t1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst42|Mux0~0_combout\,
	datab => \inst|y.t2~q\,
	datac => \inst43|Add0~22_combout\,
	datad => \inst|y.t1~q\,
	combout => \inst43|Add0~26_combout\);

-- Location: FF_X29_Y15_N21
\inst43|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst43|Add0~26_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst43|cont[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|cont\(5));

-- Location: LCCOMB_X29_Y15_N22
\inst43|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~29_combout\ = (!\inst|y.t2~q\ & (\inst43|Add0~16_combout\ & (\inst42|Mux0~0_combout\ & \inst|y.t1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datab => \inst43|Add0~16_combout\,
	datac => \inst42|Mux0~0_combout\,
	datad => \inst|y.t1~q\,
	combout => \inst43|Add0~29_combout\);

-- Location: FF_X29_Y15_N23
\inst43|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst43|Add0~29_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst43|cont[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|cont\(2));

-- Location: LCCOMB_X29_Y15_N24
\inst42|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst42|Mux1~0_combout\ = (!\inst43|cont\(4) & (!\inst43|cont\(5) & (!\inst43|cont\(2) & !\inst43|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|cont\(4),
	datab => \inst43|cont\(5),
	datac => \inst43|cont\(2),
	datad => \inst43|cont\(3),
	combout => \inst42|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y15_N30
\inst42|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst42|Mux0~0_combout\ = ((!\inst42|Mux1~0_combout\) # (!\inst43|cont\(1))) # (!\inst43|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst43|cont\(0),
	datac => \inst43|cont\(1),
	datad => \inst42|Mux1~0_combout\,
	combout => \inst42|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y14_N12
\inst|y.t22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y.t22~0_combout\ = (\inst42|Mux0~0_combout\ & ((!\inst16|a\(0)) # (!\inst16|a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|a\(1),
	datac => \inst42|Mux0~0_combout\,
	datad => \inst16|a\(0),
	combout => \inst|y.t22~0_combout\);

-- Location: LCCOMB_X30_Y14_N30
\inst|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~1_combout\ = (\inst|Selector2~0_combout\) # ((\inst|y.t20~q\ & (!\inst20|A_mayorigual_B~0_combout\ & \inst|y.t22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector2~0_combout\,
	datab => \inst|y.t20~q\,
	datac => \inst20|A_mayorigual_B~0_combout\,
	datad => \inst|y.t22~0_combout\,
	combout => \inst|Selector2~1_combout\);

-- Location: FF_X30_Y14_N31
\inst|y.t4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Selector2~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t4~q\);

-- Location: LCCOMB_X31_Y12_N6
\inst13|S2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S2[1]~1_combout\ = (\inst13|Cont_i\(2)) # ((\inst13|Cont_i\(6)) # ((!\inst13|Cont_i\(4)) # (!\inst|y.t4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(2),
	datab => \inst13|Cont_i\(6),
	datac => \inst|y.t4~q\,
	datad => \inst13|Cont_i\(4),
	combout => \inst13|S2[1]~1_combout\);

-- Location: LCCOMB_X31_Y12_N4
\inst13|S2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S2[1]~2_combout\ = ((!\inst13|S2[1]~0_combout\ & !\inst13|S2[1]~1_combout\)) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t1~q\,
	datac => \inst13|S2[1]~0_combout\,
	datad => \inst13|S2[1]~1_combout\,
	combout => \inst13|S2[1]~2_combout\);

-- Location: FF_X32_Y12_N13
\inst13|S2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S2[0]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S2\(0));

-- Location: LCCOMB_X32_Y12_N0
\inst38|S1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S1~4_combout\ = (\inst|y.t1~q\ & (!\inst|y.t2~q\ & \inst13|S2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datac => \inst|y.t2~q\,
	datad => \inst13|S2\(0),
	combout => \inst38|S1~4_combout\);

-- Location: LCCOMB_X29_Y12_N14
\inst38|S0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S0[0]~0_combout\ = (\inst|y.t5~q\) # ((\inst|y.t15~q\) # ((\inst|y.t10~q\) # (\inst|L_seg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t5~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t10~q\,
	datad => \inst|L_seg~0_combout\,
	combout => \inst38|S0[0]~0_combout\);

-- Location: FF_X32_Y12_N1
\inst38|S1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S1~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S1\(0));

-- Location: FF_X32_Y14_N13
\inst13|So[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|So[0]~5_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst13|So[0]~8_combout\,
	ena => \inst13|So[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|So\(0));

-- Location: LCCOMB_X31_Y12_N18
\inst13|S3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3~0_combout\ = (\inst|y.t1~q\ & \inst13|So\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t1~q\,
	datad => \inst13|So\(0),
	combout => \inst13|S3~0_combout\);

-- Location: LCCOMB_X30_Y12_N4
\inst13|S2[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S2[4]~feeder_combout\ = \inst13|S3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|S3~0_combout\,
	combout => \inst13|S2[4]~feeder_combout\);

-- Location: FF_X30_Y12_N5
\inst13|S2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S2[4]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S2\(4));

-- Location: LCCOMB_X29_Y12_N6
\inst38|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S1~0_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \inst13|S2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst13|S2\(4),
	combout => \inst38|S1~0_combout\);

-- Location: FF_X29_Y12_N7
\inst38|S1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S1~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S1\(4));

-- Location: LCCOMB_X31_Y12_N2
\inst13|S3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3~5_combout\ = (\inst13|So\(3) & \inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|So\(3),
	datab => \inst|y.t1~q\,
	combout => \inst13|S3~5_combout\);

-- Location: LCCOMB_X30_Y12_N24
\inst13|S2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S2[1]~feeder_combout\ = \inst13|S3~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|S3~5_combout\,
	combout => \inst13|S2[1]~feeder_combout\);

-- Location: FF_X30_Y12_N25
\inst13|S2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S2[1]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S2\(1));

-- Location: LCCOMB_X29_Y12_N22
\inst38|S1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S1~3_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \inst13|S2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst13|S2\(1),
	combout => \inst38|S1~3_combout\);

-- Location: FF_X29_Y12_N23
\inst38|S1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S1~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S1\(1));

-- Location: LCCOMB_X32_Y12_N24
\inst4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst38|S1\(3) & ((\inst38|S1\(1)) # ((!\inst38|S1\(0) & \inst38|S1\(4))))) # (!\inst38|S1\(3) & (\inst38|S1\(0) & (!\inst38|S1\(4) & \inst38|S1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|S1\(3),
	datab => \inst38|S1\(0),
	datac => \inst38|S1\(4),
	datad => \inst38|S1\(1),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y14_N30
\inst7|Q1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Q1~4_combout\ = (\Rojo~input_o\ & (!\inst|y.t2~q\ & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rojo~input_o\,
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	combout => \inst7|Q1~4_combout\);

-- Location: LCCOMB_X29_Y14_N8
\inst7|Q1[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Q1[1]~5_combout\ = (!\inst|y.t12~q\ & !\inst|y.t17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.t12~q\,
	datad => \inst|y.t17~q\,
	combout => \inst7|Q1[1]~5_combout\);

-- Location: LCCOMB_X32_Y14_N24
\inst7|Q1[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Q1[1]~9_combout\ = ((\inst|y.t2~q\) # ((\inst|y.t7~q\) # (!\inst7|Q1[1]~5_combout\))) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst|y.t2~q\,
	datac => \inst7|Q1[1]~5_combout\,
	datad => \inst|y.t7~q\,
	combout => \inst7|Q1[1]~9_combout\);

-- Location: FF_X32_Y14_N31
\inst7|Q1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst7|Q1~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst7|Q1[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Q1\(0));

-- Location: LCCOMB_X32_Y14_N28
\inst7|Q1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Q1~8_combout\ = (\inst|y.t1~q\ & (!\inst|y.t2~q\ & \Amarillo~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst|y.t2~q\,
	datac => \Amarillo~input_o\,
	combout => \inst7|Q1~8_combout\);

-- Location: FF_X32_Y14_N29
\inst7|Q1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst7|Q1~8_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst7|Q1[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Q1\(2));

-- Location: IOIBUF_X40_Y0_N15
\Verde~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Verde,
	o => \Verde~input_o\);

-- Location: LCCOMB_X32_Y14_N8
\inst7|Q1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Q1~6_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \Verde~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \Verde~input_o\,
	combout => \inst7|Q1~6_combout\);

-- Location: FF_X32_Y14_N9
\inst7|Q1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst7|Q1~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst7|Q1[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Q1\(1));

-- Location: LCCOMB_X32_Y12_N22
\inst9|S0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|S0~2_combout\ = (\inst7|Q1\(2) & ((!\inst7|Q1\(1)))) # (!\inst7|Q1\(2) & (\inst38|S1\(2) & \inst7|Q1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|S1\(2),
	datac => \inst7|Q1\(2),
	datad => \inst7|Q1\(1),
	combout => \inst9|S0~2_combout\);

-- Location: LCCOMB_X31_Y12_N12
\inst13|S3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3~4_combout\ = (\inst|y.t1~q\ & \inst13|So\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.t1~q\,
	datad => \inst13|So\(2),
	combout => \inst13|S3~4_combout\);

-- Location: LCCOMB_X29_Y12_N28
\inst13|S1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S1[2]~feeder_combout\ = \inst13|S3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|S3~4_combout\,
	combout => \inst13|S1[2]~feeder_combout\);

-- Location: LCCOMB_X30_Y12_N0
\inst13|S1[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S1[4]~1_combout\ = ((\inst13|Cont_i\(6)) # (\inst13|Cont_i\(1))) # (!\inst13|Cont_i\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Cont_i\(4),
	datac => \inst13|Cont_i\(6),
	datad => \inst13|Cont_i\(1),
	combout => \inst13|S1[4]~1_combout\);

-- Location: LCCOMB_X30_Y12_N30
\inst13|S1[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S1[4]~0_combout\ = (\inst13|Cont_i\(0) & (\inst13|Cont_i\(3) & (!\inst13|Cont_i\(2) & \inst|y.t4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(0),
	datab => \inst13|Cont_i\(3),
	datac => \inst13|Cont_i\(2),
	datad => \inst|y.t4~q\,
	combout => \inst13|S1[4]~0_combout\);

-- Location: LCCOMB_X29_Y12_N30
\inst13|S1[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S1[4]~2_combout\ = ((!\inst13|S1[4]~1_combout\ & (\inst13|S1[4]~0_combout\ & !\inst13|Cont_i\(5)))) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst13|S1[4]~1_combout\,
	datac => \inst13|S1[4]~0_combout\,
	datad => \inst13|Cont_i\(5),
	combout => \inst13|S1[4]~2_combout\);

-- Location: FF_X29_Y12_N29
\inst13|S1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S1[2]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S1\(2));

-- Location: LCCOMB_X29_Y12_N4
\inst38|S0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S0~3_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \inst13|S1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst13|S1\(2),
	combout => \inst38|S0~3_combout\);

-- Location: FF_X29_Y12_N5
\inst38|S0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S0~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S0\(2));

-- Location: LCCOMB_X32_Y14_N22
\inst7|Q1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Q1~7_combout\ = (\Azul~input_o\ & (!\inst|y.t2~q\ & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Azul~input_o\,
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	combout => \inst7|Q1~7_combout\);

-- Location: FF_X32_Y14_N23
\inst7|Q1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst7|Q1~7_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst7|Q1[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Q1\(3));

-- Location: LCCOMB_X32_Y12_N20
\inst9|S0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|S0~1_combout\ = (\inst7|Q1\(3) & ((!\inst7|Q1\(0)))) # (!\inst7|Q1\(3) & (\inst38|S0\(2) & \inst7|Q1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|S0\(2),
	datac => \inst7|Q1\(3),
	datad => \inst7|Q1\(0),
	combout => \inst9|S0~1_combout\);

-- Location: LCCOMB_X32_Y12_N4
\inst9|S0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|S0~3_combout\ = (\inst9|S0~2_combout\ & (((!\inst7|Q1\(0) & !\inst9|S0~1_combout\)))) # (!\inst9|S0~2_combout\ & (!\inst7|Q1\(1) & ((\inst9|S0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Q1\(1),
	datab => \inst7|Q1\(0),
	datac => \inst9|S0~2_combout\,
	datad => \inst9|S0~1_combout\,
	combout => \inst9|S0~3_combout\);

-- Location: LCCOMB_X28_Y12_N24
\inst13|S4[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S4[4]~feeder_combout\ = \inst13|S3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|S3~0_combout\,
	combout => \inst13|S4[4]~feeder_combout\);

-- Location: LCCOMB_X28_Y12_N4
\inst13|S4[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S4[4]~0_combout\ = ((\inst|y.t4~q\ & (!\inst13|Equal3~0_combout\ & !\inst13|Equal3~1_combout\))) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t4~q\,
	datab => \inst|y.t1~q\,
	datac => \inst13|Equal3~0_combout\,
	datad => \inst13|Equal3~1_combout\,
	combout => \inst13|S4[4]~0_combout\);

-- Location: FF_X28_Y12_N25
\inst13|S4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S4[4]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S4[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S4\(4));

-- Location: LCCOMB_X28_Y12_N8
\inst38|S3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S3~0_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \inst13|S4\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst13|S4\(4),
	combout => \inst38|S3~0_combout\);

-- Location: FF_X28_Y12_N9
\inst38|S3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S3~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S3\(4));

-- Location: LCCOMB_X28_Y12_N10
\inst13|S4[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S4[1]~feeder_combout\ = \inst13|S3~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|S3~5_combout\,
	combout => \inst13|S4[1]~feeder_combout\);

-- Location: FF_X28_Y12_N11
\inst13|S4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S4[1]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S4[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S4\(1));

-- Location: LCCOMB_X28_Y12_N22
\inst38|S3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S3~3_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \inst13|S4\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst13|S4\(1),
	combout => \inst38|S3~3_combout\);

-- Location: FF_X28_Y12_N23
\inst38|S3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S3~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S3\(1));

-- Location: LCCOMB_X28_Y12_N28
\inst13|S4[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S4[0]~feeder_combout\ = \inst13|S3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|S3~6_combout\,
	combout => \inst13|S4[0]~feeder_combout\);

-- Location: FF_X28_Y12_N29
\inst13|S4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S4[0]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S4[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S4\(0));

-- Location: LCCOMB_X28_Y12_N16
\inst38|S3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S3~4_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \inst13|S4\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst13|S4\(0),
	combout => \inst38|S3~4_combout\);

-- Location: FF_X28_Y12_N17
\inst38|S3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S3~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S3\(0));

-- Location: LCCOMB_X28_Y12_N6
\inst4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst38|S3\(3) & ((\inst38|S3\(1)) # ((\inst38|S3\(4) & !\inst38|S3\(0))))) # (!\inst38|S3\(3) & (!\inst38|S3\(4) & (\inst38|S3\(1) & \inst38|S3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|S3\(3),
	datab => \inst38|S3\(4),
	datac => \inst38|S3\(1),
	datad => \inst38|S3\(0),
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y12_N10
\inst13|S1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S1[1]~feeder_combout\ = \inst13|S3~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|S3~5_combout\,
	combout => \inst13|S1[1]~feeder_combout\);

-- Location: FF_X29_Y12_N11
\inst13|S1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S1[1]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S1\(1));

-- Location: LCCOMB_X29_Y12_N18
\inst38|S0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S0~4_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \inst13|S1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst13|S1\(1),
	combout => \inst38|S0~4_combout\);

-- Location: FF_X29_Y12_N19
\inst38|S0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S0~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S0\(1));

-- Location: LCCOMB_X29_Y12_N12
\inst13|S1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S1[0]~feeder_combout\ = \inst13|S3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|S3~6_combout\,
	combout => \inst13|S1[0]~feeder_combout\);

-- Location: FF_X29_Y12_N13
\inst13|S1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S1[0]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S1\(0));

-- Location: LCCOMB_X29_Y12_N8
\inst38|S0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S0~5_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \inst13|S1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst13|S1\(0),
	combout => \inst38|S0~5_combout\);

-- Location: FF_X29_Y12_N9
\inst38|S0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S0~5_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S0\(0));

-- Location: LCCOMB_X29_Y12_N24
\inst13|S1[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S1[4]~feeder_combout\ = \inst13|S3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|S3~0_combout\,
	combout => \inst13|S1[4]~feeder_combout\);

-- Location: FF_X29_Y12_N25
\inst13|S1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S1[4]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S1\(4));

-- Location: LCCOMB_X29_Y12_N0
\inst38|S0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S0~1_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \inst13|S1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst13|S1\(4),
	combout => \inst38|S0~1_combout\);

-- Location: FF_X29_Y12_N1
\inst38|S0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S0~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S0\(4));

-- Location: LCCOMB_X29_Y12_N16
\inst4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst38|S0\(3) & ((\inst38|S0\(1)) # ((!\inst38|S0\(0) & \inst38|S0\(4))))) # (!\inst38|S0\(3) & (\inst38|S0\(1) & (\inst38|S0\(0) & !\inst38|S0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|S0\(3),
	datab => \inst38|S0\(1),
	datac => \inst38|S0\(0),
	datad => \inst38|S0\(4),
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y12_N6
\inst9|S0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|S0~0_combout\ = (\inst7|Q1\(0) & (((\inst4|Mux0~0_combout\)))) # (!\inst7|Q1\(0) & (\inst38|S3\(2) & (\inst4|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|S3\(2),
	datab => \inst7|Q1\(0),
	datac => \inst4|Mux3~0_combout\,
	datad => \inst4|Mux0~0_combout\,
	combout => \inst9|S0~0_combout\);

-- Location: LCCOMB_X32_Y12_N2
\inst9|S0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|S0~4_combout\ = (\inst9|S0~3_combout\ & ((\inst7|Q1\(1) & (\inst4|Mux1~0_combout\)) # (!\inst7|Q1\(1) & ((\inst9|S0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Q1\(1),
	datab => \inst4|Mux1~0_combout\,
	datac => \inst9|S0~3_combout\,
	datad => \inst9|S0~0_combout\,
	combout => \inst9|S0~4_combout\);

-- Location: LCCOMB_X29_Y13_N28
\inst|y~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~39_combout\ = (\inst|y.t7_1~q\ & (\inst30|S~q\ & !\inst9|S0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t7_1~q\,
	datac => \inst30|S~q\,
	datad => \inst9|S0~4_combout\,
	combout => \inst|y~39_combout\);

-- Location: FF_X29_Y13_N29
\inst|y.t9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~39_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t9~q\);

-- Location: LCCOMB_X29_Y13_N6
\inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst|y.t8~q\) # ((\inst34|seg_4~q\ & \inst|y.t5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t8~q\,
	datac => \inst34|seg_4~q\,
	datad => \inst|y.t5~q\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCCOMB_X29_Y13_N16
\inst|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~1_combout\ = (\inst|y.t9~q\) # ((\inst|Selector4~0_combout\) # ((!\inst30|S~q\ & \inst|y.t7_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|S~q\,
	datab => \inst|y.t9~q\,
	datac => \inst|y.t7_1~q\,
	datad => \inst|Selector4~0_combout\,
	combout => \inst|Selector4~1_combout\);

-- Location: LCCOMB_X29_Y13_N12
\inst|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~2_combout\ = (\inst|Selector4~1_combout\) # ((!\inst6~0_combout\ & (!\inst32|seg_2~q\ & \inst|y.t6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6~0_combout\,
	datab => \inst32|seg_2~q\,
	datac => \inst|y.t6~q\,
	datad => \inst|Selector4~1_combout\,
	combout => \inst|Selector4~2_combout\);

-- Location: FF_X29_Y13_N13
\inst|y.t6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Selector4~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t6~q\);

-- Location: LCCOMB_X29_Y13_N14
\inst|y~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~32_combout\ = (\inst6~0_combout\ & (\inst|y.t6~q\ & !\inst32|seg_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6~0_combout\,
	datab => \inst|y.t6~q\,
	datac => \inst32|seg_2~q\,
	combout => \inst|y~32_combout\);

-- Location: FF_X29_Y13_N15
\inst|y.t7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~32_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t7~q\);

-- Location: FF_X29_Y13_N31
\inst|y.t7_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst|y.t7~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t7_1~q\);

-- Location: LCCOMB_X29_Y13_N0
\inst|WideOr22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr22~0_combout\ = (\inst|y.t6~q\) # ((\inst|y.t9~q\) # ((\inst|y.t7~q\) # (\inst|y.t8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t6~q\,
	datab => \inst|y.t9~q\,
	datac => \inst|y.t7~q\,
	datad => \inst|y.t8~q\,
	combout => \inst|WideOr22~0_combout\);

-- Location: LCCOMB_X29_Y13_N30
\inst32|a[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|a[0]~2_combout\ = (\inst|y.t16~q\) # ((\inst|y.t25~q\) # ((\inst|y.t7_1~q\) # (\inst|WideOr22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t16~q\,
	datab => \inst|y.t25~q\,
	datac => \inst|y.t7_1~q\,
	datad => \inst|WideOr22~0_combout\,
	combout => \inst32|a[0]~2_combout\);

-- Location: LCCOMB_X29_Y13_N10
\inst32|a[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|a[0]~4_combout\ = (!\inst|L_seg~0_combout\ & (\inst32|a[0]~2_combout\ & ((\inst32|a\(0)) # (\inst32|a[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|L_seg~0_combout\,
	datab => \inst32|a\(0),
	datac => \inst32|a[0]~2_combout\,
	datad => \inst32|a[0]~3_combout\,
	combout => \inst32|a[0]~4_combout\);

-- Location: LCCOMB_X29_Y13_N24
\inst32|a~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|a~6_combout\ = (\inst32|a[0]~4_combout\ & (\inst32|a\(2) $ (((\inst32|a\(0) & \inst32|a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|a\(0),
	datab => \inst32|a\(1),
	datac => \inst32|a\(2),
	datad => \inst32|a[0]~4_combout\,
	combout => \inst32|a~6_combout\);

-- Location: FF_X29_Y13_N25
\inst32|a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst32|a~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|a\(2));

-- Location: LCCOMB_X29_Y13_N2
\inst32|a[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|a[0]~3_combout\ = (\inst32|a\(2)) # (!\inst32|a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst32|a\(1),
	datad => \inst32|a\(2),
	combout => \inst32|a[0]~3_combout\);

-- Location: LCCOMB_X29_Y13_N4
\inst32|a~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|a~7_combout\ = (\inst32|a[0]~2_combout\ & (!\inst|L_seg~0_combout\ & (!\inst32|a\(0) & \inst32|a[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|a[0]~2_combout\,
	datab => \inst|L_seg~0_combout\,
	datac => \inst32|a\(0),
	datad => \inst32|a[0]~3_combout\,
	combout => \inst32|a~7_combout\);

-- Location: FF_X29_Y13_N5
\inst32|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst32|a~7_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|a\(0));

-- Location: LCCOMB_X29_Y13_N26
\inst32|a~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|a~5_combout\ = (\inst32|a[0]~4_combout\ & (\inst32|a\(0) $ (\inst32|a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|a\(0),
	datac => \inst32|a\(1),
	datad => \inst32|a[0]~4_combout\,
	combout => \inst32|a~5_combout\);

-- Location: FF_X29_Y13_N27
\inst32|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst32|a~5_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|a\(1));

-- Location: LCCOMB_X29_Y14_N18
\inst32|seg_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|seg_2~0_combout\ = (\inst|y.t7_1~q\) # ((\inst|y.t25~q\) # ((\inst|y.t16~q\) # (\inst|WideOr22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t7_1~q\,
	datab => \inst|y.t25~q\,
	datac => \inst|y.t16~q\,
	datad => \inst|WideOr22~0_combout\,
	combout => \inst32|seg_2~0_combout\);

-- Location: LCCOMB_X29_Y14_N24
\inst32|seg_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|seg_2~1_combout\ = (!\inst32|a\(0) & (\inst32|a\(1) & (!\inst32|a\(2) & \inst32|seg_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|a\(0),
	datab => \inst32|a\(1),
	datac => \inst32|a\(2),
	datad => \inst32|seg_2~0_combout\,
	combout => \inst32|seg_2~1_combout\);

-- Location: FF_X29_Y14_N25
\inst32|seg_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst32|seg_2~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst|L_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|seg_2~q\);

-- Location: LCCOMB_X30_Y14_N26
\inst|y~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~33_combout\ = (\inst32|seg_2~q\ & \inst|y.t25~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|seg_2~q\,
	datac => \inst|y.t25~q\,
	combout => \inst|y~33_combout\);

-- Location: FF_X30_Y14_N27
\inst|y.t26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~33_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t26~q\);

-- Location: LCCOMB_X30_Y13_N8
\inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\Start~input_o\ & ((\inst|L_seg~0_combout\) # ((\inst|y.t26~q\ & \inst2|A1~q\)))) # (!\Start~input_o\ & (\inst|y.t26~q\ & ((\inst2|A1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datab => \inst|y.t26~q\,
	datac => \inst|L_seg~0_combout\,
	datad => \inst2|A1~q\,
	combout => \inst|Selector0~0_combout\);

-- Location: FF_X30_Y13_N9
\inst|y.t2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Selector0~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t2~q\);

-- Location: LCCOMB_X30_Y13_N6
\inst|L_seg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|L_seg~0_combout\ = (\inst|y.t2~q\) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.t2~q\,
	datad => \inst|y.t1~q\,
	combout => \inst|L_seg~0_combout\);

-- Location: FF_X29_Y14_N31
\inst34|seg_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst34|seg_4~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst|L_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|seg_4~q\);

-- Location: LCCOMB_X30_Y13_N10
\inst|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector3~1_combout\ = (\inst16|f~q\ & ((\inst|Selector3~0_combout\) # ((!\inst34|seg_4~q\ & \inst|y.t5~q\)))) # (!\inst16|f~q\ & (!\inst34|seg_4~q\ & (\inst|y.t5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|f~q\,
	datab => \inst34|seg_4~q\,
	datac => \inst|y.t5~q\,
	datad => \inst|Selector3~0_combout\,
	combout => \inst|Selector3~1_combout\);

-- Location: FF_X30_Y13_N11
\inst|y.t5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Selector3~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t5~q\);

-- Location: LCCOMB_X28_Y13_N18
\inst30|a[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|a[2]~24_combout\ = (\inst|y.t7_1~q\) # ((\inst|y.t5~q\) # ((\inst|y.t7~q\) # (\inst|L_seg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t7_1~q\,
	datab => \inst|y.t5~q\,
	datac => \inst|y.t7~q\,
	datad => \inst|L_seg~0_combout\,
	combout => \inst30|a[2]~24_combout\);

-- Location: FF_X28_Y13_N27
\inst30|a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst30|a[3]~17_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst30|a[2]~23_combout\,
	ena => \inst30|a[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|a\(3));

-- Location: LCCOMB_X28_Y13_N16
\inst30|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Equal2~0_combout\ = (((\inst30|a\(3)) # (\inst30|a\(2))) # (!\inst30|a\(4))) # (!\inst30|a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|a\(5),
	datab => \inst30|a\(4),
	datac => \inst30|a\(3),
	datad => \inst30|a\(2),
	combout => \inst30|Equal2~0_combout\);

-- Location: LCCOMB_X28_Y13_N14
\inst30|a[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|a[2]~10_combout\ = (!\inst|y.t5~q\ & (!\inst|y.t2~q\ & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t5~q\,
	datac => \inst|y.t2~q\,
	datad => \inst|y.t1~q\,
	combout => \inst30|a[2]~10_combout\);

-- Location: LCCOMB_X28_Y13_N0
\inst30|a[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|a[2]~23_combout\ = ((\inst30|a\(1) & (!\inst30|Equal2~0_combout\ & !\inst30|a\(0)))) # (!\inst30|a[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|a\(1),
	datab => \inst30|Equal2~0_combout\,
	datac => \inst30|a[2]~10_combout\,
	datad => \inst30|a\(0),
	combout => \inst30|a[2]~23_combout\);

-- Location: FF_X28_Y13_N21
\inst30|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst30|a[0]~11_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst30|a[2]~23_combout\,
	ena => \inst30|a[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|a\(0));

-- Location: LCCOMB_X28_Y13_N22
\inst30|a[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|a[1]~13_combout\ = (\inst30|a\(1) & (!\inst30|a[0]~12\)) # (!\inst30|a\(1) & ((\inst30|a[0]~12\) # (GND)))
-- \inst30|a[1]~14\ = CARRY((!\inst30|a[0]~12\) # (!\inst30|a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|a\(1),
	datad => VCC,
	cin => \inst30|a[0]~12\,
	combout => \inst30|a[1]~13_combout\,
	cout => \inst30|a[1]~14\);

-- Location: LCCOMB_X28_Y13_N24
\inst30|a[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|a[2]~15_combout\ = (\inst30|a\(2) & (\inst30|a[1]~14\ $ (GND))) # (!\inst30|a\(2) & (!\inst30|a[1]~14\ & VCC))
-- \inst30|a[2]~16\ = CARRY((\inst30|a\(2) & !\inst30|a[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst30|a\(2),
	datad => VCC,
	cin => \inst30|a[1]~14\,
	combout => \inst30|a[2]~15_combout\,
	cout => \inst30|a[2]~16\);

-- Location: FF_X28_Y13_N25
\inst30|a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst30|a[2]~15_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst30|a[2]~23_combout\,
	ena => \inst30|a[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|a\(2));

-- Location: LCCOMB_X28_Y13_N28
\inst30|a[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|a[4]~19_combout\ = (\inst30|a\(4) & (\inst30|a[3]~18\ $ (GND))) # (!\inst30|a\(4) & (!\inst30|a[3]~18\ & VCC))
-- \inst30|a[4]~20\ = CARRY((\inst30|a\(4) & !\inst30|a[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst30|a\(4),
	datad => VCC,
	cin => \inst30|a[3]~18\,
	combout => \inst30|a[4]~19_combout\,
	cout => \inst30|a[4]~20\);

-- Location: FF_X28_Y13_N29
\inst30|a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst30|a[4]~19_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst30|a[2]~23_combout\,
	ena => \inst30|a[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|a\(4));

-- Location: LCCOMB_X28_Y13_N30
\inst30|a[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|a[5]~21_combout\ = \inst30|a\(5) $ (\inst30|a[4]~20\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|a\(5),
	cin => \inst30|a[4]~20\,
	combout => \inst30|a[5]~21_combout\);

-- Location: FF_X28_Y13_N31
\inst30|a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst30|a[5]~21_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst30|a[2]~23_combout\,
	ena => \inst30|a[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|a\(5));

-- Location: LCCOMB_X28_Y13_N12
\inst30|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|S~0_combout\ = (!\inst30|a\(3) & (!\inst30|a\(2) & ((\inst|y.t7_1~q\) # (\inst|y.t7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|a\(3),
	datab => \inst30|a\(2),
	datac => \inst|y.t7_1~q\,
	datad => \inst|y.t7~q\,
	combout => \inst30|S~0_combout\);

-- Location: LCCOMB_X28_Y13_N6
\inst30|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|S~1_combout\ = (!\inst30|a\(1) & (!\inst30|a\(4) & (!\inst30|a\(5) & \inst30|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|a\(1),
	datab => \inst30|a\(4),
	datac => \inst30|a\(5),
	datad => \inst30|S~0_combout\,
	combout => \inst30|S~1_combout\);

-- Location: LCCOMB_X29_Y13_N20
\inst30|S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|S~3_combout\ = (\inst30|a[2]~10_combout\ & ((\inst30|S~1_combout\) # ((\inst30|S~2_combout\ & \inst30|S~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|S~2_combout\,
	datab => \inst30|S~1_combout\,
	datac => \inst30|S~q\,
	datad => \inst30|a[2]~10_combout\,
	combout => \inst30|S~3_combout\);

-- Location: FF_X29_Y13_N21
\inst30|S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst30|S~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|S~q\);

-- Location: LCCOMB_X28_Y13_N8
\inst|En_cont\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|En_cont~combout\ = (\inst|y.t7_1~q\) # (\inst|y.t7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.t7_1~q\,
	datad => \inst|y.t7~q\,
	combout => \inst|En_cont~combout\);

-- Location: FF_X28_Y13_N23
\inst30|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst30|a[1]~13_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst30|a[2]~23_combout\,
	ena => \inst30|a[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|a\(1));

-- Location: LCCOMB_X28_Y14_N0
\inst|S2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|S2~combout\ = (\inst|y.t25~q\) # (\inst|y.t26~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.t25~q\,
	datad => \inst|y.t26~q\,
	combout => \inst|S2~combout\);

-- Location: LCCOMB_X27_Y15_N14
\inst18|Q1[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Q1[0]~6_combout\ = (\inst10|Q1\(0) & (\inst18|Q1\(0) $ (VCC))) # (!\inst10|Q1\(0) & (\inst18|Q1\(0) & VCC))
-- \inst18|Q1[0]~7\ = CARRY((\inst10|Q1\(0) & \inst18|Q1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(0),
	datab => \inst18|Q1\(0),
	datad => VCC,
	combout => \inst18|Q1[0]~6_combout\,
	cout => \inst18|Q1[0]~7\);

-- Location: LCCOMB_X27_Y15_N0
\inst18|Q1[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Q1[0]~18_combout\ = (\inst|y.t22~q\) # (((\inst|y.t2~q\) # (\inst|y.t21~q\)) # (!\inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t22~q\,
	datab => \inst|y.t1~q\,
	datac => \inst|y.t2~q\,
	datad => \inst|y.t21~q\,
	combout => \inst18|Q1[0]~18_combout\);

-- Location: FF_X27_Y15_N15
\inst18|Q1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst18|Q1[0]~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst|L_seg~0_combout\,
	ena => \inst18|Q1[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Q1\(0));

-- Location: LCCOMB_X27_Y15_N16
\inst18|Q1[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Q1[1]~8_combout\ = (\inst10|Q1\(1) & ((\inst18|Q1\(1) & (\inst18|Q1[0]~7\ & VCC)) # (!\inst18|Q1\(1) & (!\inst18|Q1[0]~7\)))) # (!\inst10|Q1\(1) & ((\inst18|Q1\(1) & (!\inst18|Q1[0]~7\)) # (!\inst18|Q1\(1) & ((\inst18|Q1[0]~7\) # (GND)))))
-- \inst18|Q1[1]~9\ = CARRY((\inst10|Q1\(1) & (!\inst18|Q1\(1) & !\inst18|Q1[0]~7\)) # (!\inst10|Q1\(1) & ((!\inst18|Q1[0]~7\) # (!\inst18|Q1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(1),
	datab => \inst18|Q1\(1),
	datad => VCC,
	cin => \inst18|Q1[0]~7\,
	combout => \inst18|Q1[1]~8_combout\,
	cout => \inst18|Q1[1]~9\);

-- Location: FF_X27_Y15_N17
\inst18|Q1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst18|Q1[1]~8_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst|L_seg~0_combout\,
	ena => \inst18|Q1[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Q1\(1));

-- Location: LCCOMB_X27_Y15_N18
\inst18|Q1[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Q1[2]~10_combout\ = ((\inst10|Q1\(2) $ (\inst18|Q1\(2) $ (!\inst18|Q1[1]~9\)))) # (GND)
-- \inst18|Q1[2]~11\ = CARRY((\inst10|Q1\(2) & ((\inst18|Q1\(2)) # (!\inst18|Q1[1]~9\))) # (!\inst10|Q1\(2) & (\inst18|Q1\(2) & !\inst18|Q1[1]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(2),
	datab => \inst18|Q1\(2),
	datad => VCC,
	cin => \inst18|Q1[1]~9\,
	combout => \inst18|Q1[2]~10_combout\,
	cout => \inst18|Q1[2]~11\);

-- Location: FF_X27_Y15_N19
\inst18|Q1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst18|Q1[2]~10_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst|L_seg~0_combout\,
	ena => \inst18|Q1[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Q1\(2));

-- Location: LCCOMB_X27_Y15_N20
\inst18|Q1[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Q1[3]~12_combout\ = (\inst10|Q1\(3) & ((\inst18|Q1\(3) & (\inst18|Q1[2]~11\ & VCC)) # (!\inst18|Q1\(3) & (!\inst18|Q1[2]~11\)))) # (!\inst10|Q1\(3) & ((\inst18|Q1\(3) & (!\inst18|Q1[2]~11\)) # (!\inst18|Q1\(3) & ((\inst18|Q1[2]~11\) # (GND)))))
-- \inst18|Q1[3]~13\ = CARRY((\inst10|Q1\(3) & (!\inst18|Q1\(3) & !\inst18|Q1[2]~11\)) # (!\inst10|Q1\(3) & ((!\inst18|Q1[2]~11\) # (!\inst18|Q1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(3),
	datab => \inst18|Q1\(3),
	datad => VCC,
	cin => \inst18|Q1[2]~11\,
	combout => \inst18|Q1[3]~12_combout\,
	cout => \inst18|Q1[3]~13\);

-- Location: FF_X27_Y15_N21
\inst18|Q1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst18|Q1[3]~12_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst|L_seg~0_combout\,
	ena => \inst18|Q1[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Q1\(3));

-- Location: LCCOMB_X27_Y15_N6
\inst1|B[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[3]~1_combout\ = (!\inst|y.t22~q\ & ((\inst|S2~combout\ & ((\inst18|Q1\(3)))) # (!\inst|S2~combout\ & (\inst10|Q1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t22~q\,
	datab => \inst|S2~combout\,
	datac => \inst10|Q1\(3),
	datad => \inst18|Q1\(3),
	combout => \inst1|B[3]~1_combout\);

-- Location: LCCOMB_X30_Y14_N0
\inst|y.t22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y.t22~1_combout\ = (\inst|y.t22~q\) # ((\inst|y.t20~q\ & !\inst|y.t22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t20~q\,
	datac => \inst|y.t22~q\,
	datad => \inst|y.t22~0_combout\,
	combout => \inst|y.t22~1_combout\);

-- Location: FF_X30_Y14_N1
\inst|y.t22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y.t22~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t22~q\);

-- Location: LCCOMB_X31_Y15_N20
\inst10|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add1~8_combout\ = \inst10|Add1~7\ $ (\inst10|Q1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst10|Q1\(5),
	cin => \inst10|Add1~7\,
	combout => \inst10|Add1~8_combout\);

-- Location: LCCOMB_X30_Y15_N24
\inst10|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~10_combout\ = \inst10|Add0~9\ $ (\inst10|Q1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst10|Q1\(5),
	cin => \inst10|Add0~9\,
	combout => \inst10|Add0~10_combout\);

-- Location: LCCOMB_X30_Y15_N12
\inst10|Q1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1~4_combout\ = (!\inst10|Q1[1]~3_combout\ & ((\inst10|process_0~0_combout\ & ((\inst10|Add0~10_combout\))) # (!\inst10|process_0~0_combout\ & (\inst10|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|process_0~0_combout\,
	datab => \inst10|Q1[1]~3_combout\,
	datac => \inst10|Add1~8_combout\,
	datad => \inst10|Add0~10_combout\,
	combout => \inst10|Q1~4_combout\);

-- Location: FF_X30_Y15_N13
\inst10|Q1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst10|Q1~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst10|Q1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Q1\(5));

-- Location: LCCOMB_X27_Y15_N24
\inst18|Q1[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Q1[5]~16_combout\ = \inst18|Q1\(5) $ (\inst18|Q1[4]~15\ $ (\inst10|Q1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Q1\(5),
	datad => \inst10|Q1\(5),
	cin => \inst18|Q1[4]~15\,
	combout => \inst18|Q1[5]~16_combout\);

-- Location: FF_X27_Y15_N25
\inst18|Q1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst18|Q1[5]~16_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst|L_seg~0_combout\,
	ena => \inst18|Q1[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Q1\(5));

-- Location: LCCOMB_X27_Y15_N8
\inst1|B[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[5]~0_combout\ = (!\inst|y.t22~q\ & ((\inst|S2~combout\ & ((\inst18|Q1\(5)))) # (!\inst|S2~combout\ & (\inst10|Q1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(5),
	datab => \inst|S2~combout\,
	datac => \inst|y.t22~q\,
	datad => \inst18|Q1\(5),
	combout => \inst1|B[5]~0_combout\);

-- Location: LCCOMB_X28_Y15_N6
\inst26|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|LessThan0~0_combout\ = (\inst1|B[5]~0_combout\ & ((\inst1|B[4]~3_combout\) # (\inst1|B[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[4]~3_combout\,
	datac => \inst1|B[3]~1_combout\,
	datad => \inst1|B[5]~0_combout\,
	combout => \inst26|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y15_N28
\inst1|B[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[2]~2_combout\ = (!\inst|y.t22~q\ & ((\inst|S2~combout\ & ((\inst18|Q1\(2)))) # (!\inst|S2~combout\ & (\inst10|Q1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(2),
	datab => \inst|S2~combout\,
	datac => \inst|y.t22~q\,
	datad => \inst18|Q1\(2),
	combout => \inst1|B[2]~2_combout\);

-- Location: LCCOMB_X28_Y15_N20
\inst26|z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|z~2_combout\ = (\inst1|B[4]~3_combout\ & ((\inst1|B[2]~2_combout\ & (!\inst1|B[3]~1_combout\ & \inst1|B[5]~0_combout\)) # (!\inst1|B[2]~2_combout\ & (\inst1|B[3]~1_combout\ & !\inst1|B[5]~0_combout\)))) # (!\inst1|B[4]~3_combout\ & 
-- (\inst1|B[2]~2_combout\ $ (((!\inst1|B[3]~1_combout\ & \inst1|B[5]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[4]~3_combout\,
	datab => \inst1|B[2]~2_combout\,
	datac => \inst1|B[3]~1_combout\,
	datad => \inst1|B[5]~0_combout\,
	combout => \inst26|z~2_combout\);

-- Location: LCCOMB_X27_Y15_N4
\inst1|B[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[1]~4_combout\ = (!\inst|y.t22~q\ & ((\inst|S2~combout\ & (\inst18|Q1\(1))) # (!\inst|S2~combout\ & ((\inst10|Q1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t22~q\,
	datab => \inst18|Q1\(1),
	datac => \inst10|Q1\(1),
	datad => \inst|S2~combout\,
	combout => \inst1|B[1]~4_combout\);

-- Location: LCCOMB_X28_Y15_N0
\inst26|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|z~0_combout\ = (\inst1|B[3]~1_combout\ & (!\inst1|B[5]~0_combout\ & ((\inst1|B[2]~2_combout\) # (!\inst1|B[4]~3_combout\)))) # (!\inst1|B[3]~1_combout\ & (\inst1|B[5]~0_combout\ & ((\inst1|B[4]~3_combout\) # (!\inst1|B[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[4]~3_combout\,
	datab => \inst1|B[2]~2_combout\,
	datac => \inst1|B[3]~1_combout\,
	datad => \inst1|B[5]~0_combout\,
	combout => \inst26|z~0_combout\);

-- Location: LCCOMB_X28_Y15_N2
\inst26|B[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|B[4]~1_combout\ = \inst26|z~1_combout\ $ ((((!\inst26|z~2_combout\ & !\inst1|B[1]~4_combout\)) # (!\inst26|z~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|z~1_combout\,
	datab => \inst26|z~2_combout\,
	datac => \inst1|B[1]~4_combout\,
	datad => \inst26|z~0_combout\,
	combout => \inst26|B[4]~1_combout\);

-- Location: LCCOMB_X28_Y15_N28
\inst26|B[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|B[5]~0_combout\ = (\inst1|B[4]~3_combout\ & ((\inst1|B[2]~2_combout\ & (!\inst1|B[3]~1_combout\ & \inst1|B[5]~0_combout\)) # (!\inst1|B[2]~2_combout\ & ((\inst1|B[5]~0_combout\) # (!\inst1|B[3]~1_combout\))))) # (!\inst1|B[4]~3_combout\ & 
-- (((\inst1|B[3]~1_combout\) # (!\inst1|B[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[4]~3_combout\,
	datab => \inst1|B[2]~2_combout\,
	datac => \inst1|B[3]~1_combout\,
	datad => \inst1|B[5]~0_combout\,
	combout => \inst26|B[5]~0_combout\);

-- Location: LCCOMB_X49_Y12_N20
\inst24|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux0~0_combout\ = (\inst26|B[5]~0_combout\ & (\inst26|LessThan0~0_combout\ $ (!\inst26|B[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst26|LessThan0~0_combout\,
	datac => \inst26|B[4]~1_combout\,
	datad => \inst26|B[5]~0_combout\,
	combout => \inst24|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y12_N6
\inst24|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux1~0_combout\ = (\inst26|LessThan0~0_combout\ & (\inst26|B[4]~1_combout\ $ (\inst26|B[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst26|LessThan0~0_combout\,
	datac => \inst26|B[4]~1_combout\,
	datad => \inst26|B[5]~0_combout\,
	combout => \inst24|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y12_N4
\inst24|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux2~0_combout\ = (!\inst26|LessThan0~0_combout\ & (\inst26|B[4]~1_combout\ & !\inst26|B[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst26|LessThan0~0_combout\,
	datac => \inst26|B[4]~1_combout\,
	datad => \inst26|B[5]~0_combout\,
	combout => \inst24|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y12_N22
\inst24|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux3~0_combout\ = (\inst26|LessThan0~0_combout\ & (\inst26|B[4]~1_combout\ $ (!\inst26|B[5]~0_combout\))) # (!\inst26|LessThan0~0_combout\ & (!\inst26|B[4]~1_combout\ & \inst26|B[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst26|LessThan0~0_combout\,
	datac => \inst26|B[4]~1_combout\,
	datad => \inst26|B[5]~0_combout\,
	combout => \inst24|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y12_N24
\inst24|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux4~0_combout\ = ((\inst26|LessThan0~0_combout\ & \inst26|B[5]~0_combout\)) # (!\inst26|B[4]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst26|LessThan0~0_combout\,
	datac => \inst26|B[4]~1_combout\,
	datad => \inst26|B[5]~0_combout\,
	combout => \inst24|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y12_N18
\inst24|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux5~0_combout\ = (\inst26|LessThan0~0_combout\ & (!\inst26|B[4]~1_combout\ & !\inst26|B[5]~0_combout\)) # (!\inst26|LessThan0~0_combout\ & ((!\inst26|B[5]~0_combout\) # (!\inst26|B[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst26|LessThan0~0_combout\,
	datac => \inst26|B[4]~1_combout\,
	datad => \inst26|B[5]~0_combout\,
	combout => \inst24|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y12_N12
\inst24|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux6~0_combout\ = (\inst26|LessThan0~0_combout\ & (!\inst26|B[4]~1_combout\ & !\inst26|B[5]~0_combout\)) # (!\inst26|LessThan0~0_combout\ & ((\inst26|B[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst26|LessThan0~0_combout\,
	datac => \inst26|B[4]~1_combout\,
	datad => \inst26|B[5]~0_combout\,
	combout => \inst24|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y15_N12
\inst26|B[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|B[3]~4_combout\ = (\inst26|z~0_combout\ & (((!\inst26|z~2_combout\ & !\inst1|B[1]~4_combout\)))) # (!\inst26|z~0_combout\ & (\inst26|z~1_combout\ & ((\inst26|z~2_combout\) # (\inst1|B[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|z~1_combout\,
	datab => \inst26|z~2_combout\,
	datac => \inst1|B[1]~4_combout\,
	datad => \inst26|z~0_combout\,
	combout => \inst26|B[3]~4_combout\);

-- Location: LCCOMB_X28_Y15_N18
\inst26|B[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|B[2]~3_combout\ = (\inst26|z~1_combout\ & (\inst26|z~2_combout\ $ ((!\inst1|B[1]~4_combout\)))) # (!\inst26|z~1_combout\ & (\inst26|z~2_combout\ & ((\inst1|B[1]~4_combout\) # (!\inst26|z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|z~1_combout\,
	datab => \inst26|z~2_combout\,
	datac => \inst1|B[1]~4_combout\,
	datad => \inst26|z~0_combout\,
	combout => \inst26|B[2]~3_combout\);

-- Location: LCCOMB_X28_Y15_N8
\inst26|B[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|B[1]~2_combout\ = (\inst26|z~1_combout\ & (((!\inst1|B[1]~4_combout\)))) # (!\inst26|z~1_combout\ & ((\inst1|B[1]~4_combout\ & ((!\inst26|z~0_combout\))) # (!\inst1|B[1]~4_combout\ & (\inst26|z~2_combout\ & \inst26|z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|z~1_combout\,
	datab => \inst26|z~2_combout\,
	datac => \inst1|B[1]~4_combout\,
	datad => \inst26|z~0_combout\,
	combout => \inst26|B[1]~2_combout\);

-- Location: LCCOMB_X27_Y15_N2
\inst1|B[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[0]~5_combout\ = (!\inst|y.t22~q\ & ((\inst|S2~combout\ & (\inst18|Q1\(0))) # (!\inst|S2~combout\ & ((\inst10|Q1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t22~q\,
	datab => \inst18|Q1\(0),
	datac => \inst10|Q1\(0),
	datad => \inst|S2~combout\,
	combout => \inst1|B[0]~5_combout\);

-- Location: LCCOMB_X28_Y15_N14
\inst25|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux0~0_combout\ = (\inst26|B[1]~2_combout\ & (\inst26|B[3]~4_combout\)) # (!\inst26|B[1]~2_combout\ & (\inst26|B[2]~3_combout\ $ (((!\inst26|B[3]~4_combout\ & \inst1|B[0]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|B[3]~4_combout\,
	datab => \inst26|B[2]~3_combout\,
	datac => \inst26|B[1]~2_combout\,
	datad => \inst1|B[0]~5_combout\,
	combout => \inst25|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y15_N24
\inst25|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux1~0_combout\ = (\inst26|B[3]~4_combout\ & ((\inst26|B[2]~3_combout\) # ((\inst26|B[1]~2_combout\)))) # (!\inst26|B[3]~4_combout\ & (\inst26|B[2]~3_combout\ & (\inst26|B[1]~2_combout\ $ (\inst1|B[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|B[3]~4_combout\,
	datab => \inst26|B[2]~3_combout\,
	datac => \inst26|B[1]~2_combout\,
	datad => \inst1|B[0]~5_combout\,
	combout => \inst25|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y15_N30
\inst25|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux2~0_combout\ = (\inst26|B[2]~3_combout\ & (\inst26|B[3]~4_combout\)) # (!\inst26|B[2]~3_combout\ & (\inst26|B[1]~2_combout\ & ((\inst26|B[3]~4_combout\) # (!\inst1|B[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|B[3]~4_combout\,
	datab => \inst26|B[2]~3_combout\,
	datac => \inst26|B[1]~2_combout\,
	datad => \inst1|B[0]~5_combout\,
	combout => \inst25|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y15_N4
\inst25|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux3~0_combout\ = (\inst26|B[2]~3_combout\ & ((\inst26|B[3]~4_combout\) # (\inst26|B[1]~2_combout\ $ (!\inst1|B[0]~5_combout\)))) # (!\inst26|B[2]~3_combout\ & ((\inst26|B[1]~2_combout\ & (\inst26|B[3]~4_combout\)) # (!\inst26|B[1]~2_combout\ & 
-- ((\inst1|B[0]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|B[3]~4_combout\,
	datab => \inst26|B[2]~3_combout\,
	datac => \inst26|B[1]~2_combout\,
	datad => \inst1|B[0]~5_combout\,
	combout => \inst25|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y15_N26
\inst25|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux4~0_combout\ = (\inst1|B[0]~5_combout\) # ((\inst26|B[1]~2_combout\ & (\inst26|B[3]~4_combout\)) # (!\inst26|B[1]~2_combout\ & ((\inst26|B[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|B[3]~4_combout\,
	datab => \inst26|B[2]~3_combout\,
	datac => \inst26|B[1]~2_combout\,
	datad => \inst1|B[0]~5_combout\,
	combout => \inst25|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y15_N16
\inst25|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux5~0_combout\ = (\inst26|B[2]~3_combout\ & ((\inst26|B[3]~4_combout\) # ((\inst26|B[1]~2_combout\ & \inst1|B[0]~5_combout\)))) # (!\inst26|B[2]~3_combout\ & ((\inst26|B[1]~2_combout\) # ((!\inst26|B[3]~4_combout\ & \inst1|B[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|B[3]~4_combout\,
	datab => \inst26|B[2]~3_combout\,
	datac => \inst26|B[1]~2_combout\,
	datad => \inst1|B[0]~5_combout\,
	combout => \inst25|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y15_N22
\inst25|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux6~0_combout\ = (\inst26|B[2]~3_combout\ & (!\inst26|B[3]~4_combout\ & ((!\inst1|B[0]~5_combout\) # (!\inst26|B[1]~2_combout\)))) # (!\inst26|B[2]~3_combout\ & (\inst26|B[3]~4_combout\ $ ((\inst26|B[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|B[3]~4_combout\,
	datab => \inst26|B[2]~3_combout\,
	datac => \inst26|B[1]~2_combout\,
	datad => \inst1|B[0]~5_combout\,
	combout => \inst25|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y14_N28
\inst|WideOr15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr15~0_combout\ = (\inst|y.t25~q\) # ((\inst|y.t16~q\) # ((\inst|y.t18~q\) # (\inst|y.t19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t25~q\,
	datab => \inst|y.t16~q\,
	datac => \inst|y.t18~q\,
	datad => \inst|y.t19~q\,
	combout => \inst|WideOr15~0_combout\);

-- Location: LCCOMB_X28_Y14_N30
\inst|WideOr15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr15~1_combout\ = (\inst|y.t20~q\) # ((\inst|y.t21~q\) # ((\inst|y.t22~q\) # (\inst|y.t17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t20~q\,
	datab => \inst|y.t21~q\,
	datac => \inst|y.t22~q\,
	datad => \inst|y.t17~q\,
	combout => \inst|WideOr15~1_combout\);

-- Location: LCCOMB_X28_Y14_N28
\inst|WideOr15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr15~2_combout\ = (\inst|WideOr15~0_combout\) # ((\inst|WideOr15~1_combout\) # (\inst|y.t26~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr15~0_combout\,
	datac => \inst|WideOr15~1_combout\,
	datad => \inst|y.t26~q\,
	combout => \inst|WideOr15~2_combout\);

-- Location: LCCOMB_X28_Y14_N26
\inst|WideOr16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr16~0_combout\ = (\inst|y.t13~q\) # ((\inst|y.t9~q\) # ((\inst|y.t8~q\) # (\inst|y.t12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t13~q\,
	datab => \inst|y.t9~q\,
	datac => \inst|y.t8~q\,
	datad => \inst|y.t12~q\,
	combout => \inst|WideOr16~0_combout\);

-- Location: LCCOMB_X29_Y14_N16
\inst|WideOr16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr16~1_combout\ = (!\inst|y.t15~q\ & (!\inst|y.t11~q\ & (!\inst|y.t14~q\ & !\inst|y.t10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t15~q\,
	datab => \inst|y.t11~q\,
	datac => \inst|y.t14~q\,
	datad => \inst|y.t10~q\,
	combout => \inst|WideOr16~1_combout\);

-- Location: LCCOMB_X28_Y14_N8
\inst|WideOr16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr16~2_combout\ = (\inst|WideOr16~0_combout\) # (((\inst|y.t25~q\) # (\inst|y.t26~q\)) # (!\inst|WideOr16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr16~0_combout\,
	datab => \inst|WideOr16~1_combout\,
	datac => \inst|y.t25~q\,
	datad => \inst|y.t26~q\,
	combout => \inst|WideOr16~2_combout\);

-- Location: LCCOMB_X28_Y14_N12
\inst|WideOr17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr17~1_combout\ = (\inst|y.t14~q\) # (\inst|y.t12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.t14~q\,
	datad => \inst|y.t12~q\,
	combout => \inst|WideOr17~1_combout\);

-- Location: LCCOMB_X28_Y14_N18
\inst|WideOr17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr17~0_combout\ = (\inst|y.t20~q\) # ((\inst|y.t6~q\) # ((\inst|y.t22~q\) # (\inst|y.t4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t20~q\,
	datab => \inst|y.t6~q\,
	datac => \inst|y.t22~q\,
	datad => \inst|y.t4~q\,
	combout => \inst|WideOr17~0_combout\);

-- Location: LCCOMB_X28_Y14_N6
\inst|WideOr17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr17~2_combout\ = (!\inst|y.t15~q\ & (!\inst|y.t5~q\ & (!\inst|y.t13~q\ & !\inst|y.t7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t15~q\,
	datab => \inst|y.t5~q\,
	datac => \inst|y.t13~q\,
	datad => \inst|y.t7~q\,
	combout => \inst|WideOr17~2_combout\);

-- Location: LCCOMB_X28_Y14_N24
\inst|WideOr17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr17~3_combout\ = (\inst|WideOr17~1_combout\) # ((\inst|WideOr17~0_combout\) # ((\inst|y.t21~q\) # (!\inst|WideOr17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr17~1_combout\,
	datab => \inst|WideOr17~0_combout\,
	datac => \inst|y.t21~q\,
	datad => \inst|WideOr17~2_combout\,
	combout => \inst|WideOr17~3_combout\);

-- Location: LCCOMB_X28_Y14_N22
\inst|WideOr18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr18~1_combout\ = (\inst|y.t3~q\) # ((\inst|y.t22~q\) # (\inst|y.t2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t3~q\,
	datab => \inst|y.t22~q\,
	datad => \inst|y.t2~q\,
	combout => \inst|WideOr18~1_combout\);

-- Location: LCCOMB_X29_Y14_N14
\inst|WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr18~0_combout\ = (\inst|y.t7~q\) # ((\inst|y.t19~q\) # ((\inst|y.t18~q\) # (\inst|y.t6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t7~q\,
	datab => \inst|y.t19~q\,
	datac => \inst|y.t18~q\,
	datad => \inst|y.t6~q\,
	combout => \inst|WideOr18~0_combout\);

-- Location: LCCOMB_X28_Y14_N20
\inst|WideOr18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr18~2_combout\ = (\inst|WideOr18~1_combout\) # (((\inst|WideOr18~0_combout\) # (\inst|y.t26~q\)) # (!\inst|WideOr16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr18~1_combout\,
	datab => \inst|WideOr16~1_combout\,
	datac => \inst|WideOr18~0_combout\,
	datad => \inst|y.t26~q\,
	combout => \inst|WideOr18~2_combout\);

-- Location: LCCOMB_X28_Y14_N14
\inst|WideOr19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr19~0_combout\ = (\inst|y.t3~q\) # (((\inst|y.t19~q\) # (\inst|y.t9~q\)) # (!\inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t3~q\,
	datab => \inst|y.t1~q\,
	datac => \inst|y.t19~q\,
	datad => \inst|y.t9~q\,
	combout => \inst|WideOr19~0_combout\);

-- Location: LCCOMB_X29_Y14_N4
\inst|WideOr19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr19~1_combout\ = (\inst|y.t25~q\) # ((\inst|y.t17~q\) # (\inst|y.t11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t25~q\,
	datab => \inst|y.t17~q\,
	datad => \inst|y.t11~q\,
	combout => \inst|WideOr19~1_combout\);

-- Location: LCCOMB_X28_Y14_N16
\inst|WideOr19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr19~2_combout\ = ((\inst|y.t21~q\) # ((\inst|WideOr19~0_combout\) # (\inst|WideOr19~1_combout\))) # (!\inst|WideOr17~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr17~2_combout\,
	datab => \inst|y.t21~q\,
	datac => \inst|WideOr19~0_combout\,
	datad => \inst|WideOr19~1_combout\,
	combout => \inst|WideOr19~2_combout\);

-- Location: LCCOMB_X31_Y12_N0
\inst13|S3[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3[3]~1_combout\ = ((\inst13|Cont_i\(4)) # (!\inst13|Cont_i\(6))) # (!\inst13|Cont_i\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(1),
	datab => \inst13|Cont_i\(4),
	datad => \inst13|Cont_i\(6),
	combout => \inst13|S3[3]~1_combout\);

-- Location: LCCOMB_X31_Y12_N22
\inst13|S3[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3[3]~2_combout\ = ((!\inst13|Cont_i\(5) & (!\inst13|S3[3]~1_combout\ & \inst13|S1[4]~0_combout\))) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(5),
	datab => \inst13|S3[3]~1_combout\,
	datac => \inst|y.t1~q\,
	datad => \inst13|S1[4]~0_combout\,
	combout => \inst13|S3[3]~2_combout\);

-- Location: FF_X31_Y12_N3
\inst13|S3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	asdata => \inst13|S3~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst13|S3[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S3\(4));

-- Location: LCCOMB_X31_Y12_N24
\inst38|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S2~0_combout\ = (\inst|y.t1~q\ & (!\inst|y.t2~q\ & \inst13|S3\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t1~q\,
	datac => \inst|y.t2~q\,
	datad => \inst13|S3\(4),
	combout => \inst38|S2~0_combout\);

-- Location: FF_X31_Y12_N25
\inst38|S2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S2~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S2\(4));

-- Location: LCCOMB_X32_Y12_N28
\inst40|F[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|F[4]~0_combout\ = (\inst38|S2\(4) & ((\inst|y.t5~q\) # ((\inst|y.t15~q\) # (\inst|y.t10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t5~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t10~q\,
	datad => \inst38|S2\(4),
	combout => \inst40|F[4]~0_combout\);

-- Location: LCCOMB_X31_Y12_N28
\inst13|S3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3~3_combout\ = (\inst|y.t1~q\ & \inst13|So\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t1~q\,
	datad => \inst13|So\(1),
	combout => \inst13|S3~3_combout\);

-- Location: LCCOMB_X31_Y12_N16
\inst13|S3[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3[3]~feeder_combout\ = \inst13|S3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|S3~3_combout\,
	combout => \inst13|S3[3]~feeder_combout\);

-- Location: FF_X31_Y12_N17
\inst13|S3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S3[3]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S3[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S3\(3));

-- Location: LCCOMB_X31_Y12_N14
\inst38|S2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S2~1_combout\ = (\inst|y.t1~q\ & (!\inst|y.t2~q\ & \inst13|S3\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t1~q\,
	datac => \inst|y.t2~q\,
	datad => \inst13|S3\(3),
	combout => \inst38|S2~1_combout\);

-- Location: FF_X31_Y12_N15
\inst38|S2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S2~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S2\(3));

-- Location: LCCOMB_X34_Y12_N16
\inst40|F[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|F[3]~1_combout\ = (\inst38|S2\(3) & ((\inst|y.t15~q\) # ((\inst|y.t5~q\) # (\inst|y.t10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t15~q\,
	datab => \inst|y.t5~q\,
	datac => \inst|y.t10~q\,
	datad => \inst38|S2\(3),
	combout => \inst40|F[3]~1_combout\);

-- Location: FF_X31_Y12_N19
\inst13|S3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	asdata => \inst13|S3~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst13|S3[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S3\(2));

-- Location: LCCOMB_X31_Y12_N20
\inst38|S2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S2~2_combout\ = (\inst|y.t1~q\ & (!\inst|y.t2~q\ & \inst13|S3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t1~q\,
	datac => \inst|y.t2~q\,
	datad => \inst13|S3\(2),
	combout => \inst38|S2~2_combout\);

-- Location: FF_X31_Y12_N21
\inst38|S2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S2~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S2\(2));

-- Location: LCCOMB_X34_Y12_N6
\inst40|F[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|F[2]~2_combout\ = (\inst38|S2\(2) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t5~q\,
	datad => \inst38|S2\(2),
	combout => \inst40|F[2]~2_combout\);

-- Location: FF_X31_Y12_N29
\inst13|S3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	asdata => \inst13|S3~5_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst13|S3[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S3\(1));

-- Location: LCCOMB_X31_Y12_N30
\inst38|S2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S2~3_combout\ = (\inst|y.t1~q\ & (!\inst|y.t2~q\ & \inst13|S3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t1~q\,
	datac => \inst|y.t2~q\,
	datad => \inst13|S3\(1),
	combout => \inst38|S2~3_combout\);

-- Location: FF_X31_Y12_N31
\inst38|S2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S2~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S2\(1));

-- Location: LCCOMB_X34_Y12_N20
\inst40|F[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|F[1]~3_combout\ = (\inst38|S2\(1) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t5~q\,
	datad => \inst38|S2\(1),
	combout => \inst40|F[1]~3_combout\);

-- Location: LCCOMB_X31_Y12_N10
\inst13|S3[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3[0]~feeder_combout\ = \inst13|S3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|S3~6_combout\,
	combout => \inst13|S3[0]~feeder_combout\);

-- Location: FF_X31_Y12_N11
\inst13|S3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S3[0]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S3[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S3\(0));

-- Location: LCCOMB_X31_Y12_N8
\inst38|S2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S2~4_combout\ = (\inst|y.t1~q\ & (!\inst|y.t2~q\ & \inst13|S3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t1~q\,
	datac => \inst|y.t2~q\,
	datad => \inst13|S3\(0),
	combout => \inst38|S2~4_combout\);

-- Location: FF_X31_Y12_N9
\inst38|S2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S2~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S2\(0));

-- Location: LCCOMB_X34_Y12_N10
\inst40|F[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|F[0]~4_combout\ = (\inst38|S2\(0) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t5~q\,
	datad => \inst38|S2\(0),
	combout => \inst40|F[0]~4_combout\);

-- Location: LCCOMB_X32_Y12_N30
\inst41|F[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|F[4]~0_combout\ = (\inst38|S3\(4) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst38|S3\(4),
	datad => \inst|y.t5~q\,
	combout => \inst41|F[4]~0_combout\);

-- Location: LCCOMB_X28_Y12_N2
\inst13|S4[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S4[3]~feeder_combout\ = \inst13|S3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|S3~3_combout\,
	combout => \inst13|S4[3]~feeder_combout\);

-- Location: FF_X28_Y12_N3
\inst13|S4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S4[3]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S4[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S4\(3));

-- Location: LCCOMB_X28_Y12_N26
\inst38|S3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S3~1_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \inst13|S4\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst13|S4\(3),
	combout => \inst38|S3~1_combout\);

-- Location: FF_X28_Y12_N27
\inst38|S3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S3~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S3\(3));

-- Location: LCCOMB_X34_Y12_N12
\inst41|F[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|F[3]~1_combout\ = (\inst38|S3\(3) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t5~q\,
	datad => \inst38|S3\(3),
	combout => \inst41|F[3]~1_combout\);

-- Location: LCCOMB_X28_Y12_N20
\inst13|S4[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S4[2]~feeder_combout\ = \inst13|S3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|S3~4_combout\,
	combout => \inst13|S4[2]~feeder_combout\);

-- Location: FF_X28_Y12_N21
\inst13|S4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S4[2]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S4[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S4\(2));

-- Location: LCCOMB_X28_Y12_N12
\inst38|S3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S3~2_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \inst13|S4\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst13|S4\(2),
	combout => \inst38|S3~2_combout\);

-- Location: FF_X28_Y12_N13
\inst38|S3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S3~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S3\(2));

-- Location: LCCOMB_X32_Y12_N8
\inst41|F[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|F[2]~2_combout\ = (\inst38|S3\(2) & ((\inst|y.t5~q\) # ((\inst|y.t15~q\) # (\inst|y.t10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t5~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t10~q\,
	datad => \inst38|S3\(2),
	combout => \inst41|F[2]~2_combout\);

-- Location: LCCOMB_X34_Y12_N30
\inst41|F[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|F[1]~3_combout\ = (\inst38|S3\(1) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t5~q\,
	datad => \inst38|S3\(1),
	combout => \inst41|F[1]~3_combout\);

-- Location: LCCOMB_X34_Y12_N8
\inst41|F[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|F[0]~4_combout\ = (\inst38|S3\(0) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t5~q\,
	datad => \inst38|S3\(0),
	combout => \inst41|F[0]~4_combout\);

-- Location: LCCOMB_X25_Y15_N0
\inst42|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst42|Mux1~1_combout\ = (\inst42|Mux1~0_combout\ & \inst43|cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst42|Mux1~0_combout\,
	datad => \inst43|cont\(1),
	combout => \inst42|Mux1~1_combout\);

-- Location: LCCOMB_X29_Y15_N26
\inst43|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~27_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & (\inst42|Mux0~0_combout\ & \inst43|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datab => \inst|y.t1~q\,
	datac => \inst42|Mux0~0_combout\,
	datad => \inst43|Add0~20_combout\,
	combout => \inst43|Add0~27_combout\);

-- Location: FF_X29_Y15_N27
\inst43|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst43|Add0~27_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst43|cont[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|cont\(4));

-- Location: LCCOMB_X29_Y15_N0
\inst42|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst42|Mux2~0_combout\ = (\inst43|cont\(3)) # ((\inst43|cont\(2)) # ((!\inst43|cont\(0) & !\inst43|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|cont\(3),
	datab => \inst43|cont\(0),
	datac => \inst43|cont\(2),
	datad => \inst43|cont\(1),
	combout => \inst42|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y15_N0
\inst42|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst42|Mux2~1_combout\ = (\inst43|cont\(4)) # ((\inst42|Mux2~0_combout\) # (\inst43|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|cont\(4),
	datac => \inst42|Mux2~0_combout\,
	datad => \inst43|cont\(5),
	combout => \inst42|Mux2~1_combout\);

-- Location: LCCOMB_X34_Y12_N2
\inst100|F[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst100|F[4]~0_combout\ = (\inst38|S0\(4) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t5~q\,
	datad => \inst38|S0\(4),
	combout => \inst100|F[4]~0_combout\);

-- Location: LCCOMB_X29_Y12_N2
\inst13|S1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S1[3]~feeder_combout\ = \inst13|S3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|S3~3_combout\,
	combout => \inst13|S1[3]~feeder_combout\);

-- Location: FF_X29_Y12_N3
\inst13|S1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S1[3]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S1\(3));

-- Location: LCCOMB_X29_Y12_N26
\inst38|S0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S0~2_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \inst13|S1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst13|S1\(3),
	combout => \inst38|S0~2_combout\);

-- Location: FF_X29_Y12_N27
\inst38|S0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S0~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S0\(3));

-- Location: LCCOMB_X34_Y12_N4
\inst100|F[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst100|F[3]~1_combout\ = (\inst38|S0\(3) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t5~q\,
	datad => \inst38|S0\(3),
	combout => \inst100|F[3]~1_combout\);

-- Location: LCCOMB_X32_Y12_N26
\inst100|F[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst100|F[2]~2_combout\ = (\inst38|S0\(2) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst38|S0\(2),
	datad => \inst|y.t5~q\,
	combout => \inst100|F[2]~2_combout\);

-- Location: LCCOMB_X34_Y12_N26
\inst100|F[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst100|F[1]~3_combout\ = (\inst38|S0\(1) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t5~q\,
	datad => \inst38|S0\(1),
	combout => \inst100|F[1]~3_combout\);

-- Location: LCCOMB_X34_Y12_N0
\inst100|F[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst100|F[0]~4_combout\ = (\inst38|S0\(0) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t5~q\,
	datad => \inst38|S0\(0),
	combout => \inst100|F[0]~4_combout\);

-- Location: LCCOMB_X34_Y12_N14
\inst39|F[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|F[4]~0_combout\ = (\inst38|S1\(4) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t5~q\,
	datad => \inst38|S1\(4),
	combout => \inst39|F[4]~0_combout\);

-- Location: LCCOMB_X34_Y12_N28
\inst13|S2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S2[3]~feeder_combout\ = \inst13|S3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|S3~3_combout\,
	combout => \inst13|S2[3]~feeder_combout\);

-- Location: FF_X34_Y12_N29
\inst13|S2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S2[3]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S2\(3));

-- Location: LCCOMB_X34_Y12_N24
\inst38|S1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S1~1_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \inst13|S2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst13|S2\(3),
	combout => \inst38|S1~1_combout\);

-- Location: FF_X34_Y12_N25
\inst38|S1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S1~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S1\(3));

-- Location: LCCOMB_X34_Y12_N22
\inst39|F[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|F[3]~1_combout\ = (\inst38|S1\(3) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t5~q\,
	datad => \inst38|S1\(3),
	combout => \inst39|F[3]~1_combout\);

-- Location: LCCOMB_X30_Y12_N2
\inst13|S2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S2[2]~feeder_combout\ = \inst13|S3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|S3~4_combout\,
	combout => \inst13|S2[2]~feeder_combout\);

-- Location: FF_X30_Y12_N3
\inst13|S2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S2[2]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S2\(2));

-- Location: LCCOMB_X29_Y12_N20
\inst38|S1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S1~2_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \inst13|S2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst13|S2\(2),
	combout => \inst38|S1~2_combout\);

-- Location: FF_X29_Y12_N21
\inst38|S1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S1~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S1\(2));

-- Location: LCCOMB_X32_Y12_N16
\inst39|F[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|F[2]~2_combout\ = (\inst38|S1\(2) & ((\inst|y.t15~q\) # ((\inst|y.t10~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|S1\(2),
	datab => \inst|y.t15~q\,
	datac => \inst|y.t10~q\,
	datad => \inst|y.t5~q\,
	combout => \inst39|F[2]~2_combout\);

-- Location: LCCOMB_X32_Y12_N18
\inst39|F[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|F[1]~3_combout\ = (\inst38|S1\(1) & ((\inst|y.t5~q\) # ((\inst|y.t15~q\) # (\inst|y.t10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t5~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t10~q\,
	datad => \inst38|S1\(1),
	combout => \inst39|F[1]~3_combout\);

-- Location: LCCOMB_X32_Y12_N10
\inst39|F[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|F[0]~4_combout\ = (\inst38|S1\(0) & ((\inst|y.t5~q\) # ((\inst|y.t15~q\) # (\inst|y.t10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t5~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t10~q\,
	datad => \inst38|S1\(0),
	combout => \inst39|F[0]~4_combout\);

ww_Led_p <= \Led_p~output_o\;

ww_En_cont <= \En_cont~output_o\;

ww_cont(5) <= \cont[5]~output_o\;

ww_cont(4) <= \cont[4]~output_o\;

ww_cont(3) <= \cont[3]~output_o\;

ww_cont(2) <= \cont[2]~output_o\;

ww_cont(1) <= \cont[1]~output_o\;

ww_cont(0) <= \cont[0]~output_o\;

ww_Disp_Decenas(6) <= \Disp_Decenas[6]~output_o\;

ww_Disp_Decenas(5) <= \Disp_Decenas[5]~output_o\;

ww_Disp_Decenas(4) <= \Disp_Decenas[4]~output_o\;

ww_Disp_Decenas(3) <= \Disp_Decenas[3]~output_o\;

ww_Disp_Decenas(2) <= \Disp_Decenas[2]~output_o\;

ww_Disp_Decenas(1) <= \Disp_Decenas[1]~output_o\;

ww_Disp_Decenas(0) <= \Disp_Decenas[0]~output_o\;

ww_Disp_Unidades(6) <= \Disp_Unidades[6]~output_o\;

ww_Disp_Unidades(5) <= \Disp_Unidades[5]~output_o\;

ww_Disp_Unidades(4) <= \Disp_Unidades[4]~output_o\;

ww_Disp_Unidades(3) <= \Disp_Unidades[3]~output_o\;

ww_Disp_Unidades(2) <= \Disp_Unidades[2]~output_o\;

ww_Disp_Unidades(1) <= \Disp_Unidades[1]~output_o\;

ww_Disp_Unidades(0) <= \Disp_Unidades[0]~output_o\;

ww_ESTADOS(4) <= \ESTADOS[4]~output_o\;

ww_ESTADOS(3) <= \ESTADOS[3]~output_o\;

ww_ESTADOS(2) <= \ESTADOS[2]~output_o\;

ww_ESTADOS(1) <= \ESTADOS[1]~output_o\;

ww_ESTADOS(0) <= \ESTADOS[0]~output_o\;

ww_Led_Am(4) <= \Led_Am[4]~output_o\;

ww_Led_Am(3) <= \Led_Am[3]~output_o\;

ww_Led_Am(2) <= \Led_Am[2]~output_o\;

ww_Led_Am(1) <= \Led_Am[1]~output_o\;

ww_Led_Am(0) <= \Led_Am[0]~output_o\;

ww_Led_Az(4) <= \Led_Az[4]~output_o\;

ww_Led_Az(3) <= \Led_Az[3]~output_o\;

ww_Led_Az(2) <= \Led_Az[2]~output_o\;

ww_Led_Az(1) <= \Led_Az[1]~output_o\;

ww_Led_Az(0) <= \Led_Az[0]~output_o\;

ww_Led_Oport(2) <= \Led_Oport[2]~output_o\;

ww_Led_Oport(1) <= \Led_Oport[1]~output_o\;

ww_Led_Oport(0) <= \Led_Oport[0]~output_o\;

ww_Led_R(4) <= \Led_R[4]~output_o\;

ww_Led_R(3) <= \Led_R[3]~output_o\;

ww_Led_R(2) <= \Led_R[2]~output_o\;

ww_Led_R(1) <= \Led_R[1]~output_o\;

ww_Led_R(0) <= \Led_R[0]~output_o\;

ww_Led_V(4) <= \Led_V[4]~output_o\;

ww_Led_V(3) <= \Led_V[3]~output_o\;

ww_Led_V(2) <= \Led_V[2]~output_o\;

ww_Led_V(1) <= \Led_V[1]~output_o\;

ww_Led_V(0) <= \Led_V[0]~output_o\;

ww_Puntos(5) <= \Puntos[5]~output_o\;

ww_Puntos(4) <= \Puntos[4]~output_o\;

ww_Puntos(3) <= \Puntos[3]~output_o\;

ww_Puntos(2) <= \Puntos[2]~output_o\;

ww_Puntos(1) <= \Puntos[1]~output_o\;

ww_Puntos(0) <= \Puntos[0]~output_o\;
END structure;


