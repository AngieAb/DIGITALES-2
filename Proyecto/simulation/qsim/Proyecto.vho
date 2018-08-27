-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Standard Edition"

-- DATE "08/20/2018 17:48:51"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Proyecto IS
    PORT (
	Led_p : OUT std_logic;
	Rojo : IN std_logic;
	Amarillo : IN std_logic;
	Azul : IN std_logic;
	Verde : IN std_logic;
	En_cont : OUT std_logic;
	Clock : IN std_logic;
	Reset : IN std_logic;
	Start : IN std_logic;
	Jugar : IN std_logic;
	Consultar : IN std_logic;
	Clock_100k : IN std_logic;
	Clock_1s : IN std_logic;
	facil : OUT std_logic;
	medio : OUT std_logic;
	dificil : OUT std_logic;
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
-- En_cont	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- facil	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- medio	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dificil	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- Puntos[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Puntos[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Puntos[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Puntos[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Puntos[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Puntos[0]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rojo	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amarillo	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Azul	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Verde	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_Rojo : std_logic;
SIGNAL ww_Amarillo : std_logic;
SIGNAL ww_Azul : std_logic;
SIGNAL ww_Verde : std_logic;
SIGNAL ww_En_cont : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Start : std_logic;
SIGNAL ww_Jugar : std_logic;
SIGNAL ww_Consultar : std_logic;
SIGNAL ww_Clock_100k : std_logic;
SIGNAL ww_Clock_1s : std_logic;
SIGNAL ww_facil : std_logic;
SIGNAL ww_medio : std_logic;
SIGNAL ww_dificil : std_logic;
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
SIGNAL \Led_p~output_o\ : std_logic;
SIGNAL \En_cont~output_o\ : std_logic;
SIGNAL \facil~output_o\ : std_logic;
SIGNAL \medio~output_o\ : std_logic;
SIGNAL \dificil~output_o\ : std_logic;
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
SIGNAL \Verde~input_o\ : std_logic;
SIGNAL \Amarillo~input_o\ : std_logic;
SIGNAL \Azul~input_o\ : std_logic;
SIGNAL \Rojo~input_o\ : std_logic;
SIGNAL \inst6~0_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Clock_1s~input_o\ : std_logic;
SIGNAL \Clock_1s~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst34|a~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst34|a~2_combout\ : std_logic;
SIGNAL \inst34|a~1_combout\ : std_logic;
SIGNAL \inst34|seg_4~0_combout\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \inst|y.t1~0_combout\ : std_logic;
SIGNAL \inst|y.t1~q\ : std_logic;
SIGNAL \Jugar~input_o\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \Consultar~input_o\ : std_logic;
SIGNAL \inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst|y.t3~q\ : std_logic;
SIGNAL \inst|y.t7_1~feeder_combout\ : std_logic;
SIGNAL \inst|y.t7_1~q\ : std_logic;
SIGNAL \inst7|Q1~0_combout\ : std_logic;
SIGNAL \inst|y~39_combout\ : std_logic;
SIGNAL \inst|y.t17~q\ : std_logic;
SIGNAL \inst|y.t17_1~q\ : std_logic;
SIGNAL \inst7|Q1~3_combout\ : std_logic;
SIGNAL \inst7|Q1~4_combout\ : std_logic;
SIGNAL \Clock_100k~input_o\ : std_logic;
SIGNAL \Clock_100k~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst13|So[0]~5_combout\ : std_logic;
SIGNAL \inst13|So[2]~13\ : std_logic;
SIGNAL \inst13|So[3]~14_combout\ : std_logic;
SIGNAL \inst43|Add0~12_combout\ : std_logic;
SIGNAL \inst43|Add0~24_combout\ : std_logic;
SIGNAL \inst|y.t12_1~q\ : std_logic;
SIGNAL \inst|y~50_combout\ : std_logic;
SIGNAL \inst|y.t14~q\ : std_logic;
SIGNAL \inst43|cont[0]~0_combout\ : std_logic;
SIGNAL \inst43|Add0~13\ : std_logic;
SIGNAL \inst43|Add0~14_combout\ : std_logic;
SIGNAL \inst43|Add0~25_combout\ : std_logic;
SIGNAL \inst43|Add0~15\ : std_logic;
SIGNAL \inst43|Add0~16_combout\ : std_logic;
SIGNAL \inst43|Add0~29_combout\ : std_logic;
SIGNAL \inst43|Add0~17\ : std_logic;
SIGNAL \inst43|Add0~18_combout\ : std_logic;
SIGNAL \inst43|Add0~28_combout\ : std_logic;
SIGNAL \inst43|Add0~19\ : std_logic;
SIGNAL \inst43|Add0~20_combout\ : std_logic;
SIGNAL \inst43|Add0~27_combout\ : std_logic;
SIGNAL \inst43|Add0~21\ : std_logic;
SIGNAL \inst43|Add0~22_combout\ : std_logic;
SIGNAL \inst43|Add0~26_combout\ : std_logic;
SIGNAL \inst42|Mux1~0_combout\ : std_logic;
SIGNAL \inst42|Mux0~0_combout\ : std_logic;
SIGNAL \inst10|Add1~0_combout\ : std_logic;
SIGNAL \inst|y~45_combout\ : std_logic;
SIGNAL \inst|y.t18~q\ : std_logic;
SIGNAL \inst|y~49_combout\ : std_logic;
SIGNAL \inst|y.t13~q\ : std_logic;
SIGNAL \inst10|process_0~0_combout\ : std_logic;
SIGNAL \inst16|d~1_combout\ : std_logic;
SIGNAL \inst16|d~0_combout\ : std_logic;
SIGNAL \inst16|d~q\ : std_logic;
SIGNAL \inst16|m~0_combout\ : std_logic;
SIGNAL \inst16|m~q\ : std_logic;
SIGNAL \inst16|f~0_combout\ : std_logic;
SIGNAL \inst16|f~q\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst|Selector8~1_combout\ : std_logic;
SIGNAL \inst|y.t15~q\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst33|a~1_combout\ : std_logic;
SIGNAL \inst33|a~0_combout\ : std_logic;
SIGNAL \inst33|seg_3~0_combout\ : std_logic;
SIGNAL \inst33|seg_3~q\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|Selector6~1_combout\ : std_logic;
SIGNAL \inst|y.t10~q\ : std_logic;
SIGNAL \inst10|Q1~0_combout\ : std_logic;
SIGNAL \inst10|Add0~0_combout\ : std_logic;
SIGNAL \inst10|Q1~10_combout\ : std_logic;
SIGNAL \inst10|Add0~1\ : std_logic;
SIGNAL \inst10|Add0~2_combout\ : std_logic;
SIGNAL \inst10|Q1~9_combout\ : std_logic;
SIGNAL \inst|WideOr28~0_combout\ : std_logic;
SIGNAL \inst10|Q1[1]~5_combout\ : std_logic;
SIGNAL \inst10|Add0~3\ : std_logic;
SIGNAL \inst10|Add0~4_combout\ : std_logic;
SIGNAL \inst10|Add1~1\ : std_logic;
SIGNAL \inst10|Add1~2_combout\ : std_logic;
SIGNAL \inst10|Q1~7_combout\ : std_logic;
SIGNAL \inst10|Add1~3\ : std_logic;
SIGNAL \inst10|Add1~4_combout\ : std_logic;
SIGNAL \inst10|Add0~5\ : std_logic;
SIGNAL \inst10|Add0~6_combout\ : std_logic;
SIGNAL \inst10|Q1~6_combout\ : std_logic;
SIGNAL \inst10|Add0~7\ : std_logic;
SIGNAL \inst10|Add0~9\ : std_logic;
SIGNAL \inst10|Add0~10_combout\ : std_logic;
SIGNAL \inst10|Add1~5\ : std_logic;
SIGNAL \inst10|Add1~7\ : std_logic;
SIGNAL \inst10|Add1~8_combout\ : std_logic;
SIGNAL \inst10|Q1~4_combout\ : std_logic;
SIGNAL \inst10|Q1[1]~2_combout\ : std_logic;
SIGNAL \inst10|Q1[1]~1_combout\ : std_logic;
SIGNAL \inst10|Q1[1]~3_combout\ : std_logic;
SIGNAL \inst10|Add0~8_combout\ : std_logic;
SIGNAL \inst10|Add1~6_combout\ : std_logic;
SIGNAL \inst10|Q1~8_combout\ : std_logic;
SIGNAL \inst20|A_mayorigual_B~0_combout\ : std_logic;
SIGNAL \inst|Selector10~1_combout\ : std_logic;
SIGNAL \inst|Selector10~0_combout\ : std_logic;
SIGNAL \inst|Selector10~2_combout\ : std_logic;
SIGNAL \inst|y.t20~q\ : std_logic;
SIGNAL \inst|y~44_combout\ : std_logic;
SIGNAL \inst|y.t21~q\ : std_logic;
SIGNAL \inst16|a[0]~4_combout\ : std_logic;
SIGNAL \inst16|a[1]~3_combout\ : std_logic;
SIGNAL \inst16|Equal1~0_combout\ : std_logic;
SIGNAL \inst|y~51_combout\ : std_logic;
SIGNAL \inst|y.t21_1~feeder_combout\ : std_logic;
SIGNAL \inst|y.t21_1~q\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst|y.t4~q\ : std_logic;
SIGNAL \inst13|So[4]~9_combout\ : std_logic;
SIGNAL \inst13|So[3]~15\ : std_logic;
SIGNAL \inst13|So[4]~16_combout\ : std_logic;
SIGNAL \inst13|So[4]~7_combout\ : std_logic;
SIGNAL \inst13|So[4]~8_combout\ : std_logic;
SIGNAL \inst13|So[0]~6\ : std_logic;
SIGNAL \inst13|So[1]~10_combout\ : std_logic;
SIGNAL \inst13|So[1]~11\ : std_logic;
SIGNAL \inst13|So[2]~12_combout\ : std_logic;
SIGNAL \inst13|S3~4_combout\ : std_logic;
SIGNAL \inst13|S4[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|Cont_i[0]~7_combout\ : std_logic;
SIGNAL \inst13|Cont_i[5]~19\ : std_logic;
SIGNAL \inst13|Cont_i[6]~20_combout\ : std_logic;
SIGNAL \inst13|Equal3~1_combout\ : std_logic;
SIGNAL \inst13|Cont_i[6]~9_combout\ : std_logic;
SIGNAL \inst13|Cont_i[0]~8\ : std_logic;
SIGNAL \inst13|Cont_i[1]~10_combout\ : std_logic;
SIGNAL \inst13|Cont_i[1]~11\ : std_logic;
SIGNAL \inst13|Cont_i[2]~12_combout\ : std_logic;
SIGNAL \inst13|Cont_i[2]~13\ : std_logic;
SIGNAL \inst13|Cont_i[3]~14_combout\ : std_logic;
SIGNAL \inst13|Cont_i[3]~15\ : std_logic;
SIGNAL \inst13|Cont_i[4]~16_combout\ : std_logic;
SIGNAL \inst13|Cont_i[4]~17\ : std_logic;
SIGNAL \inst13|Cont_i[5]~18_combout\ : std_logic;
SIGNAL \inst13|Equal3~0_combout\ : std_logic;
SIGNAL \inst13|S4[0]~0_combout\ : std_logic;
SIGNAL \inst38|S3~2_combout\ : std_logic;
SIGNAL \inst38|S2[1]~1_combout\ : std_logic;
SIGNAL \inst7|Q1~2_combout\ : std_logic;
SIGNAL \inst13|S3~5_combout\ : std_logic;
SIGNAL \inst13|S4[1]~feeder_combout\ : std_logic;
SIGNAL \inst38|S3~3_combout\ : std_logic;
SIGNAL \inst13|S3~0_combout\ : std_logic;
SIGNAL \inst13|S4[4]~feeder_combout\ : std_logic;
SIGNAL \inst38|S3~0_combout\ : std_logic;
SIGNAL \inst13|S3~3_combout\ : std_logic;
SIGNAL \inst13|S4[3]~feeder_combout\ : std_logic;
SIGNAL \inst38|S3~1_combout\ : std_logic;
SIGNAL \inst13|S3~6_combout\ : std_logic;
SIGNAL \inst13|S4[0]~feeder_combout\ : std_logic;
SIGNAL \inst38|S3~4_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|S0~0_combout\ : std_logic;
SIGNAL \inst13|S1[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|S1~1_combout\ : std_logic;
SIGNAL \inst13|S1~0_combout\ : std_logic;
SIGNAL \inst13|S1[3]~2_combout\ : std_logic;
SIGNAL \inst38|S0~2_combout\ : std_logic;
SIGNAL \inst13|S1[3]~feeder_combout\ : std_logic;
SIGNAL \inst38|S0~1_combout\ : std_logic;
SIGNAL \inst38|S0~4_combout\ : std_logic;
SIGNAL \inst13|S1[1]~feeder_combout\ : std_logic;
SIGNAL \inst38|S0~3_combout\ : std_logic;
SIGNAL \inst13|S1[4]~feeder_combout\ : std_logic;
SIGNAL \inst38|S0~0_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|S0~1_combout\ : std_logic;
SIGNAL \inst9|S0~2_combout\ : std_logic;
SIGNAL \inst|y~46_combout\ : std_logic;
SIGNAL \inst|y.t19~q\ : std_logic;
SIGNAL \inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst|Selector9~1_combout\ : std_logic;
SIGNAL \inst|Selector9~2_combout\ : std_logic;
SIGNAL \inst|y.t16~q\ : std_logic;
SIGNAL \inst|WideOr24~0_combout\ : std_logic;
SIGNAL \inst|WideOr28~1_combout\ : std_logic;
SIGNAL \inst17|a~0_combout\ : std_logic;
SIGNAL \inst17|a~2_combout\ : std_logic;
SIGNAL \inst17|a~1_combout\ : std_logic;
SIGNAL \inst17|a~3_combout\ : std_logic;
SIGNAL \inst17|seg_1~2_combout\ : std_logic;
SIGNAL \inst17|Add0~0_combout\ : std_logic;
SIGNAL \inst17|a~4_combout\ : std_logic;
SIGNAL \inst17|seg_1~3_combout\ : std_logic;
SIGNAL \inst17|seg_1~q\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|Selector7~1_combout\ : std_logic;
SIGNAL \inst|Selector7~2_combout\ : std_logic;
SIGNAL \inst|y.t11~q\ : std_logic;
SIGNAL \inst|y~38_combout\ : std_logic;
SIGNAL \inst|y.t12~q\ : std_logic;
SIGNAL \inst7|Q1[1]~1_combout\ : std_logic;
SIGNAL \inst13|S2[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|S2~1_combout\ : std_logic;
SIGNAL \inst13|S2~0_combout\ : std_logic;
SIGNAL \inst13|S2[4]~2_combout\ : std_logic;
SIGNAL \inst38|S1~2_combout\ : std_logic;
SIGNAL \inst13|S2[1]~feeder_combout\ : std_logic;
SIGNAL \inst38|S1~3_combout\ : std_logic;
SIGNAL \inst13|S2[0]~feeder_combout\ : std_logic;
SIGNAL \inst38|S1~4_combout\ : std_logic;
SIGNAL \inst13|S2[4]~feeder_combout\ : std_logic;
SIGNAL \inst38|S1~0_combout\ : std_logic;
SIGNAL \inst13|S2[3]~feeder_combout\ : std_logic;
SIGNAL \inst38|S1~1_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|S0~4_combout\ : std_logic;
SIGNAL \inst13|S3[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|S3~1_combout\ : std_logic;
SIGNAL \inst13|S3[4]~2_combout\ : std_logic;
SIGNAL \inst38|S2~3_combout\ : std_logic;
SIGNAL \inst13|S3[0]~feeder_combout\ : std_logic;
SIGNAL \inst38|S2~5_combout\ : std_logic;
SIGNAL \inst13|S3[1]~feeder_combout\ : std_logic;
SIGNAL \inst38|S2~4_combout\ : std_logic;
SIGNAL \inst13|S3[4]~feeder_combout\ : std_logic;
SIGNAL \inst38|S2~0_combout\ : std_logic;
SIGNAL \inst13|S3[3]~feeder_combout\ : std_logic;
SIGNAL \inst38|S2~2_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|S0~3_combout\ : std_logic;
SIGNAL \inst9|S0~5_combout\ : std_logic;
SIGNAL \inst|y~48_combout\ : std_logic;
SIGNAL \inst|y.t9~q\ : std_logic;
SIGNAL \inst|WideOr22~0_combout\ : std_logic;
SIGNAL \inst|WideOr22~1_combout\ : std_logic;
SIGNAL \inst|WideOr22~combout\ : std_logic;
SIGNAL \inst32|a~10_combout\ : std_logic;
SIGNAL \inst32|a~7_combout\ : std_logic;
SIGNAL \inst32|Add0~0_combout\ : std_logic;
SIGNAL \inst32|a~8_combout\ : std_logic;
SIGNAL \inst32|a[2]~6_combout\ : std_logic;
SIGNAL \inst32|a~9_combout\ : std_logic;
SIGNAL \inst32|seg_2~0_combout\ : std_logic;
SIGNAL \inst32|seg_2~q\ : std_logic;
SIGNAL \inst|Selector12~2_combout\ : std_logic;
SIGNAL \inst|Selector12~3_combout\ : std_logic;
SIGNAL \inst|y.t25~q\ : std_logic;
SIGNAL \inst|y~42_combout\ : std_logic;
SIGNAL \inst|y.t26~q\ : std_logic;
SIGNAL \inst2|a~10_combout\ : std_logic;
SIGNAL \inst2|a[0]~7_combout\ : std_logic;
SIGNAL \inst2|a~6_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|a~8_combout\ : std_logic;
SIGNAL \inst2|Add0~1_combout\ : std_logic;
SIGNAL \inst2|a~9_combout\ : std_logic;
SIGNAL \inst2|A1~0_combout\ : std_logic;
SIGNAL \inst2|A1~1_combout\ : std_logic;
SIGNAL \inst2|A1~q\ : std_logic;
SIGNAL \inst|y~52_combout\ : std_logic;
SIGNAL \inst|y.t22~q\ : std_logic;
SIGNAL \inst|En_seg7~0_combout\ : std_logic;
SIGNAL \inst36|Add0~0_combout\ : std_logic;
SIGNAL \inst36|a~2_combout\ : std_logic;
SIGNAL \inst36|Equal0~0_combout\ : std_logic;
SIGNAL \inst36|a~3_combout\ : std_logic;
SIGNAL \inst36|a~0_combout\ : std_logic;
SIGNAL \inst36|a~1_combout\ : std_logic;
SIGNAL \inst36|seg_7~4_combout\ : std_logic;
SIGNAL \inst36|seg_7~q\ : std_logic;
SIGNAL \inst|y~43_combout\ : std_logic;
SIGNAL \inst|y.t24~q\ : std_logic;
SIGNAL \inst|y~41_combout\ : std_logic;
SIGNAL \inst|y.t23~q\ : std_logic;
SIGNAL \inst|Selector0~2_combout\ : std_logic;
SIGNAL \inst|Selector0~3_combout\ : std_logic;
SIGNAL \inst|y.t2~q\ : std_logic;
SIGNAL \inst16|a[1]~2_combout\ : std_logic;
SIGNAL \inst34|seg_4~q\ : std_logic;
SIGNAL \inst|Selector3~1_combout\ : std_logic;
SIGNAL \inst|y.t5~q\ : std_logic;
SIGNAL \inst30|a[0]~6_combout\ : std_logic;
SIGNAL \inst30|a[1]~18_combout\ : std_logic;
SIGNAL \inst30|a[1]~19_combout\ : std_logic;
SIGNAL \inst30|a[0]~7\ : std_logic;
SIGNAL \inst30|a[1]~8_combout\ : std_logic;
SIGNAL \inst30|a[1]~9\ : std_logic;
SIGNAL \inst30|a[2]~10_combout\ : std_logic;
SIGNAL \inst30|a[2]~11\ : std_logic;
SIGNAL \inst30|a[3]~12_combout\ : std_logic;
SIGNAL \inst30|a[3]~13\ : std_logic;
SIGNAL \inst30|a[4]~14_combout\ : std_logic;
SIGNAL \inst30|a[4]~15\ : std_logic;
SIGNAL \inst30|a[5]~16_combout\ : std_logic;
SIGNAL \inst30|Equal2~0_combout\ : std_logic;
SIGNAL \inst30|Equal2~1_combout\ : std_logic;
SIGNAL \inst30|S~0_combout\ : std_logic;
SIGNAL \inst30|S~1_combout\ : std_logic;
SIGNAL \inst30|S~2_combout\ : std_logic;
SIGNAL \inst30|S~3_combout\ : std_logic;
SIGNAL \inst30|S~q\ : std_logic;
SIGNAL \inst|y~47_combout\ : std_logic;
SIGNAL \inst|y.t8~q\ : std_logic;
SIGNAL \inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|Selector4~2_combout\ : std_logic;
SIGNAL \inst|y.t6~q\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|y.t6_1~q\ : std_logic;
SIGNAL \inst|y~40_combout\ : std_logic;
SIGNAL \inst|y.t7~q\ : std_logic;
SIGNAL \inst|WideOr24~combout\ : std_logic;
SIGNAL \inst18|Q1[0]~6_combout\ : std_logic;
SIGNAL \inst18|Q1[4]~18_combout\ : std_logic;
SIGNAL \inst18|Q1[0]~7\ : std_logic;
SIGNAL \inst18|Q1[1]~8_combout\ : std_logic;
SIGNAL \inst18|Q1[1]~9\ : std_logic;
SIGNAL \inst18|Q1[2]~10_combout\ : std_logic;
SIGNAL \inst44|S0~4_combout\ : std_logic;
SIGNAL \inst44|Add0~0_combout\ : std_logic;
SIGNAL \inst44|cont[3]~5_combout\ : std_logic;
SIGNAL \inst44|cont[3]~10_combout\ : std_logic;
SIGNAL \inst44|cont[3]~7_combout\ : std_logic;
SIGNAL \inst44|cont[3]~9_combout\ : std_logic;
SIGNAL \inst44|cont~4_combout\ : std_logic;
SIGNAL \inst44|cont~6_combout\ : std_logic;
SIGNAL \inst44|Equal0~4_combout\ : std_logic;
SIGNAL \inst44|cont~8_combout\ : std_logic;
SIGNAL \inst44|Equal0~9_combout\ : std_logic;
SIGNAL \inst44|S9[1]~2_combout\ : std_logic;
SIGNAL \inst44|S6[2]~feeder_combout\ : std_logic;
SIGNAL \inst44|Equal0~0_combout\ : std_logic;
SIGNAL \inst44|S6[3]~2_combout\ : std_logic;
SIGNAL \inst44|Equal0~3_combout\ : std_logic;
SIGNAL \inst44|S7[5]~2_combout\ : std_logic;
SIGNAL \inst44|Equal0~2_combout\ : std_logic;
SIGNAL \inst44|S4[1]~2_combout\ : std_logic;
SIGNAL \inst44|S5[2]~feeder_combout\ : std_logic;
SIGNAL \inst44|Equal0~1_combout\ : std_logic;
SIGNAL \inst44|S5[0]~2_combout\ : std_logic;
SIGNAL \inst1|B[2]~18_combout\ : std_logic;
SIGNAL \inst1|B[2]~19_combout\ : std_logic;
SIGNAL \inst1|B[0]~3_combout\ : std_logic;
SIGNAL \inst44|S1[2]~feeder_combout\ : std_logic;
SIGNAL \inst44|Equal0~5_combout\ : std_logic;
SIGNAL \inst44|S1[2]~2_combout\ : std_logic;
SIGNAL \inst44|S2[2]~feeder_combout\ : std_logic;
SIGNAL \inst44|Equal0~6_combout\ : std_logic;
SIGNAL \inst44|S2[2]~2_combout\ : std_logic;
SIGNAL \inst44|Equal0~7_combout\ : std_logic;
SIGNAL \inst44|S0[0]~8_combout\ : std_logic;
SIGNAL \inst1|B[2]~20_combout\ : std_logic;
SIGNAL \inst44|Equal0~8_combout\ : std_logic;
SIGNAL \inst44|S3[1]~2_combout\ : std_logic;
SIGNAL \inst1|B[2]~21_combout\ : std_logic;
SIGNAL \inst44|S8[0]~2_combout\ : std_logic;
SIGNAL \inst1|B[2]~22_combout\ : std_logic;
SIGNAL \inst1|B[2]~23_combout\ : std_logic;
SIGNAL \inst|S1~0_combout\ : std_logic;
SIGNAL \inst1|B[0]~0_combout\ : std_logic;
SIGNAL \inst1|B[2]~24_combout\ : std_logic;
SIGNAL \inst1|B[2]~25_combout\ : std_logic;
SIGNAL \inst18|Q1[2]~11\ : std_logic;
SIGNAL \inst18|Q1[3]~12_combout\ : std_logic;
SIGNAL \inst44|S0~3_combout\ : std_logic;
SIGNAL \inst44|S6[3]~feeder_combout\ : std_logic;
SIGNAL \inst44|S5[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|B[3]~10_combout\ : std_logic;
SIGNAL \inst1|B[3]~11_combout\ : std_logic;
SIGNAL \inst44|S1[3]~feeder_combout\ : std_logic;
SIGNAL \inst44|S2[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|B[3]~12_combout\ : std_logic;
SIGNAL \inst1|B[3]~13_combout\ : std_logic;
SIGNAL \inst1|B[3]~14_combout\ : std_logic;
SIGNAL \inst1|B[3]~15_combout\ : std_logic;
SIGNAL \inst1|B[3]~16_combout\ : std_logic;
SIGNAL \inst1|B[3]~17_combout\ : std_logic;
SIGNAL \inst18|Q1[3]~13\ : std_logic;
SIGNAL \inst18|Q1[4]~14_combout\ : std_logic;
SIGNAL \inst44|S0~5_combout\ : std_logic;
SIGNAL \inst44|S6[4]~feeder_combout\ : std_logic;
SIGNAL \inst44|S5[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|B[4]~26_combout\ : std_logic;
SIGNAL \inst1|B[4]~27_combout\ : std_logic;
SIGNAL \inst44|S1[4]~feeder_combout\ : std_logic;
SIGNAL \inst44|S2[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|B[4]~28_combout\ : std_logic;
SIGNAL \inst1|B[4]~29_combout\ : std_logic;
SIGNAL \inst1|B[4]~30_combout\ : std_logic;
SIGNAL \inst1|B[4]~31_combout\ : std_logic;
SIGNAL \inst1|B[4]~32_combout\ : std_logic;
SIGNAL \inst1|B[4]~33_combout\ : std_logic;
SIGNAL \inst18|Q1[4]~15\ : std_logic;
SIGNAL \inst18|Q1[5]~16_combout\ : std_logic;
SIGNAL \inst1|B[5]~8_combout\ : std_logic;
SIGNAL \inst44|S0~2_combout\ : std_logic;
SIGNAL \inst44|S2[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|B[5]~4_combout\ : std_logic;
SIGNAL \inst44|S1[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|B[5]~5_combout\ : std_logic;
SIGNAL \inst1|B[5]~6_combout\ : std_logic;
SIGNAL \inst44|S6[5]~feeder_combout\ : std_logic;
SIGNAL \inst44|S5[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|B[5]~1_combout\ : std_logic;
SIGNAL \inst1|B[5]~2_combout\ : std_logic;
SIGNAL \inst1|B[5]~7_combout\ : std_logic;
SIGNAL \inst1|B[5]~9_combout\ : std_logic;
SIGNAL \inst26|z~2_combout\ : std_logic;
SIGNAL \inst26|B[5]~0_combout\ : std_logic;
SIGNAL \inst26|LessThan0~0_combout\ : std_logic;
SIGNAL \inst26|z~0_combout\ : std_logic;
SIGNAL \inst1|B[1]~40_combout\ : std_logic;
SIGNAL \inst44|S0~6_combout\ : std_logic;
SIGNAL \inst44|S6[1]~feeder_combout\ : std_logic;
SIGNAL \inst44|S5[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|B[1]~34_combout\ : std_logic;
SIGNAL \inst1|B[1]~35_combout\ : std_logic;
SIGNAL \inst44|S1[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|B[1]~36_combout\ : std_logic;
SIGNAL \inst44|S2[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|B[1]~37_combout\ : std_logic;
SIGNAL \inst1|B[1]~38_combout\ : std_logic;
SIGNAL \inst1|B[1]~39_combout\ : std_logic;
SIGNAL \inst1|B[1]~41_combout\ : std_logic;
SIGNAL \inst26|z~1_combout\ : std_logic;
SIGNAL \inst26|Add2~0_combout\ : std_logic;
SIGNAL \inst24|Mux0~0_combout\ : std_logic;
SIGNAL \inst24|Mux1~0_combout\ : std_logic;
SIGNAL \inst24|Mux2~0_combout\ : std_logic;
SIGNAL \inst24|Mux3~0_combout\ : std_logic;
SIGNAL \inst24|Mux4~0_combout\ : std_logic;
SIGNAL \inst24|Mux5~0_combout\ : std_logic;
SIGNAL \inst24|Mux6~0_combout\ : std_logic;
SIGNAL \inst26|B[2]~2_combout\ : std_logic;
SIGNAL \inst26|B[3]~3_combout\ : std_logic;
SIGNAL \inst44|S0~7_combout\ : std_logic;
SIGNAL \inst44|S2[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|B[0]~44_combout\ : std_logic;
SIGNAL \inst44|S1[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|B[0]~45_combout\ : std_logic;
SIGNAL \inst1|B[0]~46_combout\ : std_logic;
SIGNAL \inst44|S6[0]~feeder_combout\ : std_logic;
SIGNAL \inst44|S5[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|B[0]~42_combout\ : std_logic;
SIGNAL \inst1|B[0]~43_combout\ : std_logic;
SIGNAL \inst1|B[0]~47_combout\ : std_logic;
SIGNAL \inst1|B[0]~48_combout\ : std_logic;
SIGNAL \inst1|B[0]~49_combout\ : std_logic;
SIGNAL \inst26|B[1]~1_combout\ : std_logic;
SIGNAL \inst25|Mux0~0_combout\ : std_logic;
SIGNAL \inst25|Mux1~0_combout\ : std_logic;
SIGNAL \inst25|Mux2~0_combout\ : std_logic;
SIGNAL \inst25|Mux3~0_combout\ : std_logic;
SIGNAL \inst25|Mux4~0_combout\ : std_logic;
SIGNAL \inst25|Mux5~0_combout\ : std_logic;
SIGNAL \inst25|Mux6~0_combout\ : std_logic;
SIGNAL \inst|WideOr15~1_combout\ : std_logic;
SIGNAL \inst|WideOr15~0_combout\ : std_logic;
SIGNAL \inst|WideOr18~0_combout\ : std_logic;
SIGNAL \inst|WideOr15~2_combout\ : std_logic;
SIGNAL \inst|WideOr16~1_combout\ : std_logic;
SIGNAL \inst|WideOr16~2_combout\ : std_logic;
SIGNAL \inst|WideOr16~0_combout\ : std_logic;
SIGNAL \inst|WideOr16~3_combout\ : std_logic;
SIGNAL \inst|WideOr17~1_combout\ : std_logic;
SIGNAL \inst|WideOr17~2_combout\ : std_logic;
SIGNAL \inst|WideOr17~0_combout\ : std_logic;
SIGNAL \inst|WideOr17~3_combout\ : std_logic;
SIGNAL \inst|WideOr18~1_combout\ : std_logic;
SIGNAL \inst|WideOr18~2_combout\ : std_logic;
SIGNAL \inst|WideOr19~1_combout\ : std_logic;
SIGNAL \inst|WideOr19~0_combout\ : std_logic;
SIGNAL \inst|WideOr19~2_combout\ : std_logic;
SIGNAL \inst40|F[4]~0_combout\ : std_logic;
SIGNAL \inst40|F[3]~1_combout\ : std_logic;
SIGNAL \inst40|F[2]~2_combout\ : std_logic;
SIGNAL \inst40|F[1]~3_combout\ : std_logic;
SIGNAL \inst40|F[0]~4_combout\ : std_logic;
SIGNAL \inst41|F[4]~0_combout\ : std_logic;
SIGNAL \inst41|F[3]~1_combout\ : std_logic;
SIGNAL \inst41|F[2]~2_combout\ : std_logic;
SIGNAL \inst41|F[1]~3_combout\ : std_logic;
SIGNAL \inst41|F[0]~4_combout\ : std_logic;
SIGNAL \inst42|Mux1~1_combout\ : std_logic;
SIGNAL \inst42|Mux2~0_combout\ : std_logic;
SIGNAL \inst42|Mux2~1_combout\ : std_logic;
SIGNAL \inst100|F[4]~0_combout\ : std_logic;
SIGNAL \inst100|F[3]~1_combout\ : std_logic;
SIGNAL \inst100|F[2]~2_combout\ : std_logic;
SIGNAL \inst100|F[1]~3_combout\ : std_logic;
SIGNAL \inst100|F[0]~4_combout\ : std_logic;
SIGNAL \inst39|F[4]~0_combout\ : std_logic;
SIGNAL \inst39|F[3]~1_combout\ : std_logic;
SIGNAL \inst39|F[2]~2_combout\ : std_logic;
SIGNAL \inst39|F[1]~3_combout\ : std_logic;
SIGNAL \inst39|F[0]~4_combout\ : std_logic;
SIGNAL \inst43|cont\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst13|So\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst30|a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst44|S5\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst13|Cont_i\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst18|Q1\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst2|a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst44|S6\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst44|S4\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst44|S7\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst44|S8\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst44|S1\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst16|a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst44|S2\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst44|S0\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst44|S3\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst17|a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst44|S9\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst10|Q1\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst36|a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst38|S2\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst38|S3\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst38|S0\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst38|S1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst44|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|Q1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|S3\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst13|S4\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst13|S1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst13|S2\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst32|a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst33|a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst34|a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst25|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr24~combout\ : std_logic;
SIGNAL \inst42|ALT_INV_Mux1~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Led_p <= ww_Led_p;
ww_Rojo <= Rojo;
ww_Amarillo <= Amarillo;
ww_Azul <= Azul;
ww_Verde <= Verde;
En_cont <= ww_En_cont;
ww_Clock <= Clock;
ww_Reset <= Reset;
ww_Start <= Start;
ww_Jugar <= Jugar;
ww_Consultar <= Consultar;
ww_Clock_100k <= Clock_100k;
ww_Clock_1s <= Clock_1s;
facil <= ww_facil;
medio <= ww_medio;
dificil <= ww_dificil;
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
\inst25|ALT_INV_Mux6~0_combout\ <= NOT \inst25|Mux6~0_combout\;
\inst|ALT_INV_WideOr24~combout\ <= NOT \inst|WideOr24~combout\;
\inst42|ALT_INV_Mux1~1_combout\ <= NOT \inst42|Mux1~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y34_N16
\Led_p~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~0_combout\,
	devoe => ww_devoe,
	o => \Led_p~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\En_cont~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr24~combout\,
	devoe => ww_devoe,
	o => \En_cont~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\facil~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|f~q\,
	devoe => ww_devoe,
	o => \facil~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\medio~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|m~q\,
	devoe => ww_devoe,
	o => \medio~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\dificil~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|d~q\,
	devoe => ww_devoe,
	o => \dificil~output_o\);

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X53_Y20_N16
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

-- Location: IOOBUF_X20_Y0_N9
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

-- Location: IOOBUF_X20_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X25_Y0_N16
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
	i => \inst|WideOr16~3_combout\,
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

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X53_Y14_N2
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X29_Y34_N16
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

-- Location: IOOBUF_X0_Y10_N23
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: LCCOMB_X29_Y8_N20
\inst6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6~0_combout\ = (\Verde~input_o\) # ((\Amarillo~input_o\) # ((\Azul~input_o\) # (\Rojo~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Verde~input_o\,
	datab => \Amarillo~input_o\,
	datac => \Azul~input_o\,
	datad => \Rojo~input_o\,
	combout => \inst6~0_combout\);

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

-- Location: LCCOMB_X30_Y9_N2
\inst34|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|a~0_combout\ = (\inst|y.t5~q\ & (\inst34|a\(1) $ (\inst34|a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t5~q\,
	datac => \inst34|a\(1),
	datad => \inst34|a\(0),
	combout => \inst34|a~0_combout\);

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

-- Location: FF_X30_Y9_N3
\inst34|a[1]\ : dffeas
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
	q => \inst34|a\(1));

-- Location: LCCOMB_X30_Y9_N10
\inst34|a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|a~2_combout\ = (\inst|y.t5~q\ & ((\inst34|a\(0) & (\inst34|a\(2) $ (\inst34|a\(1)))) # (!\inst34|a\(0) & (\inst34|a\(2) & \inst34|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t5~q\,
	datab => \inst34|a\(0),
	datac => \inst34|a\(2),
	datad => \inst34|a\(1),
	combout => \inst34|a~2_combout\);

-- Location: FF_X30_Y9_N11
\inst34|a[2]\ : dffeas
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
	q => \inst34|a\(2));

-- Location: LCCOMB_X30_Y9_N28
\inst34|a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|a~1_combout\ = (\inst|y.t5~q\ & (!\inst34|a\(0) & ((\inst34|a\(1)) # (!\inst34|a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|a\(2),
	datab => \inst|y.t5~q\,
	datac => \inst34|a\(0),
	datad => \inst34|a\(1),
	combout => \inst34|a~1_combout\);

-- Location: FF_X30_Y9_N29
\inst34|a[0]\ : dffeas
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
	q => \inst34|a\(0));

-- Location: LCCOMB_X30_Y9_N30
\inst34|seg_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|seg_4~0_combout\ = (\inst|y.t5~q\ & (!\inst34|a\(0) & (!\inst34|a\(1) & \inst34|a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t5~q\,
	datab => \inst34|a\(0),
	datac => \inst34|a\(1),
	datad => \inst34|a\(2),
	combout => \inst34|seg_4~0_combout\);

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

-- Location: LCCOMB_X31_Y9_N0
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

-- Location: FF_X31_Y9_N1
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

-- Location: LCCOMB_X31_Y9_N22
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

-- Location: LCCOMB_X31_Y9_N10
\inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~1_combout\ = (\inst|Selector1~0_combout\ & (((\inst|y.t2~q\ & !\Start~input_o\)) # (!\Consultar~input_o\))) # (!\inst|Selector1~0_combout\ & (\inst|y.t2~q\ & ((!\Start~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector1~0_combout\,
	datab => \inst|y.t2~q\,
	datac => \Consultar~input_o\,
	datad => \Start~input_o\,
	combout => \inst|Selector1~1_combout\);

-- Location: FF_X31_Y9_N11
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

-- Location: LCCOMB_X29_Y8_N30
\inst|y.t7_1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y.t7_1~feeder_combout\ = \inst|y.t7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|y.t7~q\,
	combout => \inst|y.t7_1~feeder_combout\);

-- Location: FF_X29_Y8_N31
\inst|y.t7_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y.t7_1~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t7_1~q\);

-- Location: LCCOMB_X29_Y8_N22
\inst7|Q1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Q1~0_combout\ = (\Azul~input_o\ & (!\inst|y.t2~q\ & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Azul~input_o\,
	datac => \inst|y.t2~q\,
	datad => \inst|y.t1~q\,
	combout => \inst7|Q1~0_combout\);

-- Location: LCCOMB_X31_Y8_N30
\inst|y~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~39_combout\ = (!\inst17|seg_1~q\ & (\inst|y.t16~q\ & \inst6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|seg_1~q\,
	datac => \inst|y.t16~q\,
	datad => \inst6~0_combout\,
	combout => \inst|y~39_combout\);

-- Location: FF_X31_Y8_N31
\inst|y.t17\ : dffeas
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
	q => \inst|y.t17~q\);

-- Location: FF_X31_Y8_N19
\inst|y.t17_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst|y.t17~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t17_1~q\);

-- Location: LCCOMB_X29_Y8_N14
\inst7|Q1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Q1~3_combout\ = (\Amarillo~input_o\ & (!\inst|y.t2~q\ & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Amarillo~input_o\,
	datac => \inst|y.t2~q\,
	datad => \inst|y.t1~q\,
	combout => \inst7|Q1~3_combout\);

-- Location: FF_X29_Y8_N15
\inst7|Q1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst7|Q1~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst7|Q1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Q1\(2));

-- Location: LCCOMB_X29_Y8_N24
\inst7|Q1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Q1~4_combout\ = (\Verde~input_o\ & (!\inst|y.t2~q\ & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Verde~input_o\,
	datac => \inst|y.t2~q\,
	datad => \inst|y.t1~q\,
	combout => \inst7|Q1~4_combout\);

-- Location: FF_X29_Y8_N25
\inst7|Q1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst7|Q1~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst7|Q1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Q1\(1));

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

-- Location: LCCOMB_X35_Y8_N12
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

-- Location: LCCOMB_X35_Y8_N16
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

-- Location: LCCOMB_X35_Y8_N18
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

-- Location: LCCOMB_X28_Y9_N12
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

-- Location: LCCOMB_X28_Y9_N24
\inst43|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~24_combout\ = (!\inst43|Add0~12_combout\ & (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \inst42|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|Add0~12_combout\,
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst42|Mux0~0_combout\,
	combout => \inst43|Add0~24_combout\);

-- Location: FF_X31_Y8_N9
\inst|y.t12_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst|y.t12~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t12_1~q\);

-- Location: LCCOMB_X31_Y8_N12
\inst|y~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~50_combout\ = (\inst30|S~q\ & (\inst|y.t12_1~q\ & (!\inst9|S0~5_combout\ & !\inst9|S0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|S~q\,
	datab => \inst|y.t12_1~q\,
	datac => \inst9|S0~5_combout\,
	datad => \inst9|S0~2_combout\,
	combout => \inst|y~50_combout\);

-- Location: FF_X31_Y8_N13
\inst|y.t14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~50_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t14~q\);

-- Location: LCCOMB_X28_Y9_N2
\inst43|cont[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|cont[0]~0_combout\ = (\inst|y.t19~q\) # ((\inst|y.t9~q\) # ((\inst16|a[1]~2_combout\) # (\inst|y.t14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t19~q\,
	datab => \inst|y.t9~q\,
	datac => \inst16|a[1]~2_combout\,
	datad => \inst|y.t14~q\,
	combout => \inst43|cont[0]~0_combout\);

-- Location: FF_X28_Y9_N25
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

-- Location: LCCOMB_X28_Y9_N14
\inst43|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~14_combout\ = (\inst43|cont\(1) & (!\inst43|Add0~13\)) # (!\inst43|cont\(1) & (\inst43|Add0~13\ & VCC))
-- \inst43|Add0~15\ = CARRY((\inst43|cont\(1) & !\inst43|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|cont\(1),
	datad => VCC,
	cin => \inst43|Add0~13\,
	combout => \inst43|Add0~14_combout\,
	cout => \inst43|Add0~15\);

-- Location: LCCOMB_X28_Y9_N6
\inst43|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~25_combout\ = (\inst|y.t1~q\ & (!\inst|y.t2~q\ & (!\inst43|Add0~14_combout\ & \inst42|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst|y.t2~q\,
	datac => \inst43|Add0~14_combout\,
	datad => \inst42|Mux0~0_combout\,
	combout => \inst43|Add0~25_combout\);

-- Location: FF_X28_Y9_N7
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

-- Location: LCCOMB_X28_Y9_N16
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

-- Location: LCCOMB_X28_Y9_N26
\inst43|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~29_combout\ = (\inst|y.t1~q\ & (\inst43|Add0~16_combout\ & (!\inst|y.t2~q\ & \inst42|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst43|Add0~16_combout\,
	datac => \inst|y.t2~q\,
	datad => \inst42|Mux0~0_combout\,
	combout => \inst43|Add0~29_combout\);

-- Location: FF_X28_Y9_N27
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

-- Location: LCCOMB_X28_Y9_N18
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

-- Location: LCCOMB_X28_Y9_N28
\inst43|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~28_combout\ = (\inst|y.t1~q\ & (!\inst|y.t2~q\ & (\inst43|Add0~18_combout\ & \inst42|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst|y.t2~q\,
	datac => \inst43|Add0~18_combout\,
	datad => \inst42|Mux0~0_combout\,
	combout => \inst43|Add0~28_combout\);

-- Location: FF_X28_Y9_N29
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

-- Location: LCCOMB_X28_Y9_N20
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

-- Location: LCCOMB_X28_Y9_N30
\inst43|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~27_combout\ = (\inst|y.t1~q\ & (\inst43|Add0~20_combout\ & (!\inst|y.t2~q\ & \inst42|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst43|Add0~20_combout\,
	datac => \inst|y.t2~q\,
	datad => \inst42|Mux0~0_combout\,
	combout => \inst43|Add0~27_combout\);

-- Location: FF_X28_Y9_N31
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

-- Location: LCCOMB_X28_Y9_N22
\inst43|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~22_combout\ = \inst43|cont\(5) $ (!\inst43|Add0~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst43|cont\(5),
	cin => \inst43|Add0~21\,
	combout => \inst43|Add0~22_combout\);

-- Location: LCCOMB_X28_Y9_N8
\inst43|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Add0~26_combout\ = (\inst|y.t1~q\ & (!\inst|y.t2~q\ & (\inst43|Add0~22_combout\ & \inst42|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst|y.t2~q\,
	datac => \inst43|Add0~22_combout\,
	datad => \inst42|Mux0~0_combout\,
	combout => \inst43|Add0~26_combout\);

-- Location: FF_X28_Y9_N9
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

-- Location: LCCOMB_X28_Y9_N4
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

-- Location: LCCOMB_X29_Y9_N28
\inst42|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst42|Mux0~0_combout\ = ((!\inst43|cont\(0)) # (!\inst42|Mux1~0_combout\)) # (!\inst43|cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst43|cont\(1),
	datac => \inst42|Mux1~0_combout\,
	datad => \inst43|cont\(0),
	combout => \inst42|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y10_N4
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

-- Location: LCCOMB_X31_Y8_N0
\inst|y~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~45_combout\ = (\inst30|S~q\ & (\inst|y.t17_1~q\ & ((\inst9|S0~5_combout\) # (\inst9|S0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|S~q\,
	datab => \inst|y.t17_1~q\,
	datac => \inst9|S0~5_combout\,
	datad => \inst9|S0~2_combout\,
	combout => \inst|y~45_combout\);

-- Location: FF_X31_Y8_N1
\inst|y.t18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~45_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t18~q\);

-- Location: LCCOMB_X31_Y8_N28
\inst|y~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~49_combout\ = (\inst30|S~q\ & (\inst|y.t12_1~q\ & ((\inst9|S0~5_combout\) # (\inst9|S0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|S~q\,
	datab => \inst|y.t12_1~q\,
	datac => \inst9|S0~5_combout\,
	datad => \inst9|S0~2_combout\,
	combout => \inst|y~49_combout\);

-- Location: FF_X31_Y8_N29
\inst|y.t13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~49_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t13~q\);

-- Location: LCCOMB_X30_Y10_N30
\inst10|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|process_0~0_combout\ = (\inst|y.t18~q\) # ((\inst|y.t13~q\) # (\inst|y.t8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t18~q\,
	datac => \inst|y.t13~q\,
	datad => \inst|y.t8~q\,
	combout => \inst10|process_0~0_combout\);

-- Location: LCCOMB_X29_Y9_N30
\inst16|d~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|d~1_combout\ = (!\inst16|a\(0) & \inst16|a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|a\(0),
	datac => \inst16|a\(1),
	combout => \inst16|d~1_combout\);

-- Location: LCCOMB_X29_Y9_N18
\inst16|d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|d~0_combout\ = (((\inst|y.t2~q\) # (!\inst16|a\(1))) # (!\inst|y.t1~q\)) # (!\inst16|a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|a\(0),
	datab => \inst|y.t1~q\,
	datac => \inst16|a\(1),
	datad => \inst|y.t2~q\,
	combout => \inst16|d~0_combout\);

-- Location: FF_X29_Y9_N31
\inst16|d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|d~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst16|a[1]~2_combout\,
	ena => \inst16|d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|d~q\);

-- Location: LCCOMB_X29_Y9_N8
\inst16|m~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|m~0_combout\ = (!\inst16|a[1]~2_combout\ & (\inst16|a\(0) & ((\inst16|m~q\) # (!\inst16|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|a\(1),
	datab => \inst16|a[1]~2_combout\,
	datac => \inst16|m~q\,
	datad => \inst16|a\(0),
	combout => \inst16|m~0_combout\);

-- Location: FF_X29_Y9_N9
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|m~q\);

-- Location: LCCOMB_X29_Y9_N24
\inst16|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|f~0_combout\ = (!\inst16|a\(0) & !\inst16|a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|a\(0),
	datac => \inst16|a\(1),
	combout => \inst16|f~0_combout\);

-- Location: FF_X29_Y9_N25
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
	sclr => \inst16|a[1]~2_combout\,
	ena => \inst16|d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|f~q\);

-- Location: LCCOMB_X30_Y9_N18
\inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = (!\inst16|m~q\ & (\inst|y.t4~q\ & (!\Jugar~input_o\ & !\inst16|f~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|m~q\,
	datab => \inst|y.t4~q\,
	datac => \Jugar~input_o\,
	datad => \inst16|f~q\,
	combout => \inst|Selector8~0_combout\);

-- Location: LCCOMB_X30_Y9_N6
\inst|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector8~1_combout\ = (\inst16|d~q\ & ((\inst|Selector8~0_combout\) # ((\inst|y.t15~q\ & !\inst32|seg_2~q\)))) # (!\inst16|d~q\ & (((\inst|y.t15~q\ & !\inst32|seg_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|d~q\,
	datab => \inst|Selector8~0_combout\,
	datac => \inst|y.t15~q\,
	datad => \inst32|seg_2~q\,
	combout => \inst|Selector8~1_combout\);

-- Location: FF_X30_Y9_N7
\inst|y.t15\ : dffeas
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
	q => \inst|y.t15~q\);

-- Location: LCCOMB_X31_Y9_N12
\inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst|y.t4~q\ & !\Jugar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.t4~q\,
	datad => \Jugar~input_o\,
	combout => \inst|Selector3~0_combout\);

-- Location: LCCOMB_X30_Y9_N0
\inst33|a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|a~1_combout\ = (\inst|y.t10~q\ & !\inst33|a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t10~q\,
	datac => \inst33|a\(0),
	combout => \inst33|a~1_combout\);

-- Location: FF_X30_Y9_N1
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

-- Location: LCCOMB_X30_Y9_N26
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

-- Location: FF_X30_Y9_N27
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

-- Location: LCCOMB_X30_Y9_N12
\inst33|seg_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|seg_3~0_combout\ = (\inst|y.t10~q\ & (\inst33|a\(1) & \inst33|a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t10~q\,
	datac => \inst33|a\(1),
	datad => \inst33|a\(0),
	combout => \inst33|seg_3~0_combout\);

-- Location: FF_X30_Y9_N13
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
	sclr => \inst16|a[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|seg_3~q\);

-- Location: LCCOMB_X30_Y9_N8
\inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst|y.t10~q\ & !\inst33|seg_3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t10~q\,
	datad => \inst33|seg_3~q\,
	combout => \inst|Selector6~0_combout\);

-- Location: LCCOMB_X30_Y9_N20
\inst|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector6~1_combout\ = (\inst|Selector6~0_combout\) # ((\inst16|m~q\ & (!\inst16|f~q\ & \inst|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|m~q\,
	datab => \inst16|f~q\,
	datac => \inst|Selector3~0_combout\,
	datad => \inst|Selector6~0_combout\,
	combout => \inst|Selector6~1_combout\);

-- Location: FF_X30_Y9_N21
\inst|y.t10\ : dffeas
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
	q => \inst|y.t10~q\);

-- Location: LCCOMB_X30_Y9_N4
\inst10|Q1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1~0_combout\ = (!\inst|y.t15~q\ & (!\inst|y.t10~q\ & (\inst|y.t1~q\ & !\inst|y.t2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t15~q\,
	datab => \inst|y.t10~q\,
	datac => \inst|y.t1~q\,
	datad => \inst|y.t2~q\,
	combout => \inst10|Q1~0_combout\);

-- Location: LCCOMB_X29_Y10_N14
\inst10|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~0_combout\ = \inst10|Q1\(0) $ (VCC)
-- \inst10|Add0~1\ = CARRY(\inst10|Q1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(0),
	datad => VCC,
	combout => \inst10|Add0~0_combout\,
	cout => \inst10|Add0~1\);

-- Location: LCCOMB_X29_Y10_N26
\inst10|Q1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1~10_combout\ = (\inst10|Q1~0_combout\ & ((\inst10|process_0~0_combout\ & ((\inst10|Add0~0_combout\))) # (!\inst10|process_0~0_combout\ & (\inst10|Q1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|process_0~0_combout\,
	datab => \inst10|Q1~0_combout\,
	datac => \inst10|Q1\(0),
	datad => \inst10|Add0~0_combout\,
	combout => \inst10|Q1~10_combout\);

-- Location: FF_X29_Y10_N27
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

-- Location: LCCOMB_X29_Y10_N16
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

-- Location: LCCOMB_X29_Y10_N12
\inst10|Q1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1~9_combout\ = (!\inst10|Q1[1]~3_combout\ & ((\inst10|process_0~0_combout\ & ((\inst10|Add0~2_combout\))) # (!\inst10|process_0~0_combout\ & (\inst10|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1[1]~3_combout\,
	datab => \inst10|Add1~0_combout\,
	datac => \inst10|process_0~0_combout\,
	datad => \inst10|Add0~2_combout\,
	combout => \inst10|Q1~9_combout\);

-- Location: LCCOMB_X31_Y8_N2
\inst|WideOr28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr28~0_combout\ = (!\inst|y.t19~q\ & (!\inst|y.t18~q\ & (!\inst|y.t13~q\ & !\inst|y.t14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t19~q\,
	datab => \inst|y.t18~q\,
	datac => \inst|y.t13~q\,
	datad => \inst|y.t14~q\,
	combout => \inst|WideOr28~0_combout\);

-- Location: LCCOMB_X29_Y10_N8
\inst10|Q1[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1[1]~5_combout\ = (\inst|y.t8~q\) # ((\inst|y.t9~q\) # ((!\inst|WideOr28~0_combout\) # (!\inst10|Q1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t8~q\,
	datab => \inst|y.t9~q\,
	datac => \inst10|Q1~0_combout\,
	datad => \inst|WideOr28~0_combout\,
	combout => \inst10|Q1[1]~5_combout\);

-- Location: FF_X29_Y10_N13
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

-- Location: LCCOMB_X29_Y10_N18
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

-- Location: LCCOMB_X28_Y10_N6
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

-- Location: LCCOMB_X29_Y10_N4
\inst10|Q1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1~7_combout\ = (!\inst10|Q1[1]~3_combout\ & ((\inst10|process_0~0_combout\ & (\inst10|Add0~4_combout\)) # (!\inst10|process_0~0_combout\ & ((\inst10|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1[1]~3_combout\,
	datab => \inst10|Add0~4_combout\,
	datac => \inst10|process_0~0_combout\,
	datad => \inst10|Add1~2_combout\,
	combout => \inst10|Q1~7_combout\);

-- Location: FF_X29_Y10_N5
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

-- Location: LCCOMB_X28_Y10_N8
\inst10|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add1~4_combout\ = (\inst10|Q1\(3) & ((GND) # (!\inst10|Add1~3\))) # (!\inst10|Q1\(3) & (\inst10|Add1~3\ $ (GND)))
-- \inst10|Add1~5\ = CARRY((\inst10|Q1\(3)) # (!\inst10|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(3),
	datad => VCC,
	cin => \inst10|Add1~3\,
	combout => \inst10|Add1~4_combout\,
	cout => \inst10|Add1~5\);

-- Location: LCCOMB_X29_Y10_N20
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

-- Location: LCCOMB_X29_Y10_N2
\inst10|Q1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1~6_combout\ = (!\inst10|Q1[1]~3_combout\ & ((\inst10|process_0~0_combout\ & ((\inst10|Add0~6_combout\))) # (!\inst10|process_0~0_combout\ & (\inst10|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add1~4_combout\,
	datab => \inst10|Add0~6_combout\,
	datac => \inst10|process_0~0_combout\,
	datad => \inst10|Q1[1]~3_combout\,
	combout => \inst10|Q1~6_combout\);

-- Location: FF_X29_Y10_N3
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

-- Location: LCCOMB_X29_Y10_N22
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

-- Location: LCCOMB_X29_Y10_N24
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

-- Location: LCCOMB_X28_Y10_N10
\inst10|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add1~6_combout\ = (\inst10|Q1\(4) & (\inst10|Add1~5\ & VCC)) # (!\inst10|Q1\(4) & (!\inst10|Add1~5\))
-- \inst10|Add1~7\ = CARRY((!\inst10|Q1\(4) & !\inst10|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(4),
	datad => VCC,
	cin => \inst10|Add1~5\,
	combout => \inst10|Add1~6_combout\,
	cout => \inst10|Add1~7\);

-- Location: LCCOMB_X28_Y10_N12
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

-- Location: LCCOMB_X29_Y10_N28
\inst10|Q1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1~4_combout\ = (!\inst10|Q1[1]~3_combout\ & ((\inst10|process_0~0_combout\ & (\inst10|Add0~10_combout\)) # (!\inst10|process_0~0_combout\ & ((\inst10|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1[1]~3_combout\,
	datab => \inst10|Add0~10_combout\,
	datac => \inst10|process_0~0_combout\,
	datad => \inst10|Add1~8_combout\,
	combout => \inst10|Q1~4_combout\);

-- Location: FF_X29_Y10_N29
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

-- Location: LCCOMB_X29_Y10_N0
\inst10|Q1[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1[1]~2_combout\ = (!\inst10|Q1\(4) & (!\inst10|Q1\(3) & (!\inst10|Q1\(2) & !\inst10|Q1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(4),
	datab => \inst10|Q1\(3),
	datac => \inst10|Q1\(2),
	datad => \inst10|Q1\(5),
	combout => \inst10|Q1[1]~2_combout\);

-- Location: LCCOMB_X30_Y10_N24
\inst10|Q1[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1[1]~1_combout\ = (!\inst|y.t13~q\ & (!\inst|y.t18~q\ & (!\inst10|Q1\(0) & !\inst|y.t8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t13~q\,
	datab => \inst|y.t18~q\,
	datac => \inst10|Q1\(0),
	datad => \inst|y.t8~q\,
	combout => \inst10|Q1[1]~1_combout\);

-- Location: LCCOMB_X29_Y10_N10
\inst10|Q1[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1[1]~3_combout\ = ((!\inst10|Q1\(1) & (\inst10|Q1[1]~2_combout\ & \inst10|Q1[1]~1_combout\))) # (!\inst10|Q1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(1),
	datab => \inst10|Q1[1]~2_combout\,
	datac => \inst10|Q1~0_combout\,
	datad => \inst10|Q1[1]~1_combout\,
	combout => \inst10|Q1[1]~3_combout\);

-- Location: LCCOMB_X29_Y10_N6
\inst10|Q1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Q1~8_combout\ = (!\inst10|Q1[1]~3_combout\ & ((\inst10|process_0~0_combout\ & (\inst10|Add0~8_combout\)) # (!\inst10|process_0~0_combout\ & ((\inst10|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1[1]~3_combout\,
	datab => \inst10|Add0~8_combout\,
	datac => \inst10|process_0~0_combout\,
	datad => \inst10|Add1~6_combout\,
	combout => \inst10|Q1~8_combout\);

-- Location: FF_X29_Y10_N7
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

-- Location: LCCOMB_X29_Y10_N30
\inst20|A_mayorigual_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|A_mayorigual_B~0_combout\ = (\inst10|Q1\(4)) # ((\inst10|Q1\(5)) # ((\inst10|Q1\(2) & \inst10|Q1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(4),
	datab => \inst10|Q1\(5),
	datac => \inst10|Q1\(2),
	datad => \inst10|Q1\(3),
	combout => \inst20|A_mayorigual_B~0_combout\);

-- Location: LCCOMB_X32_Y8_N8
\inst|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector10~1_combout\ = (\inst17|seg_1~q\ & ((\inst|y.t16~q\) # (\inst|y.t11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t16~q\,
	datac => \inst|y.t11~q\,
	datad => \inst17|seg_1~q\,
	combout => \inst|Selector10~1_combout\);

-- Location: LCCOMB_X29_Y8_N16
\inst|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector10~0_combout\ = (\inst32|seg_2~q\ & ((\inst|y.t6~q\) # ((\inst|y.t6_1~q\ & \inst6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t6_1~q\,
	datab => \inst6~0_combout\,
	datac => \inst|y.t6~q\,
	datad => \inst32|seg_2~q\,
	combout => \inst|Selector10~0_combout\);

-- Location: LCCOMB_X29_Y8_N0
\inst|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector10~2_combout\ = (\inst|Selector10~1_combout\) # ((\inst|Selector10~0_combout\) # ((!\inst16|d~q\ & \inst|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|d~q\,
	datab => \inst|Selector8~0_combout\,
	datac => \inst|Selector10~1_combout\,
	datad => \inst|Selector10~0_combout\,
	combout => \inst|Selector10~2_combout\);

-- Location: FF_X29_Y8_N1
\inst|y.t20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Selector10~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t20~q\);

-- Location: LCCOMB_X29_Y9_N0
\inst|y~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~44_combout\ = (\inst42|Mux0~0_combout\ & (!\inst16|Equal1~0_combout\ & (\inst20|A_mayorigual_B~0_combout\ & \inst|y.t20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst42|Mux0~0_combout\,
	datab => \inst16|Equal1~0_combout\,
	datac => \inst20|A_mayorigual_B~0_combout\,
	datad => \inst|y.t20~q\,
	combout => \inst|y~44_combout\);

-- Location: FF_X29_Y9_N1
\inst|y.t21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~44_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t21~q\);

-- Location: LCCOMB_X29_Y9_N12
\inst16|a[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|a[0]~4_combout\ = (!\inst16|a[1]~2_combout\ & ((\inst|y.t21~q\ & ((!\inst16|a\(0)))) # (!\inst|y.t21~q\ & (!\inst16|a\(1) & \inst16|a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|a\(1),
	datab => \inst|y.t21~q\,
	datac => \inst16|a\(0),
	datad => \inst16|a[1]~2_combout\,
	combout => \inst16|a[0]~4_combout\);

-- Location: FF_X29_Y9_N13
\inst16|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|a[0]~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|a\(0));

-- Location: LCCOMB_X29_Y9_N26
\inst16|a[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|a[1]~3_combout\ = (!\inst16|a[1]~2_combout\ & ((\inst16|a\(0) & (\inst|y.t21~q\ & !\inst16|a\(1))) # (!\inst16|a\(0) & ((\inst16|a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|a\(0),
	datab => \inst|y.t21~q\,
	datac => \inst16|a\(1),
	datad => \inst16|a[1]~2_combout\,
	combout => \inst16|a[1]~3_combout\);

-- Location: FF_X29_Y9_N27
\inst16|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|a[1]~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|a\(1));

-- Location: LCCOMB_X29_Y9_N20
\inst16|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Equal1~0_combout\ = (\inst16|a\(1) & \inst16|a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|a\(1),
	datad => \inst16|a\(0),
	combout => \inst16|Equal1~0_combout\);

-- Location: LCCOMB_X29_Y9_N14
\inst|y~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~51_combout\ = (!\inst16|Equal1~0_combout\ & (((!\inst43|cont\(0)) # (!\inst43|cont\(1))) # (!\inst42|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Equal1~0_combout\,
	datab => \inst42|Mux1~0_combout\,
	datac => \inst43|cont\(1),
	datad => \inst43|cont\(0),
	combout => \inst|y~51_combout\);

-- Location: LCCOMB_X29_Y9_N6
\inst|y.t21_1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y.t21_1~feeder_combout\ = \inst|y.t21~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|y.t21~q\,
	combout => \inst|y.t21_1~feeder_combout\);

-- Location: FF_X29_Y9_N7
\inst|y.t21_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y.t21_1~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t21_1~q\);

-- Location: LCCOMB_X31_Y9_N2
\inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|y.t21_1~q\) # ((\Jugar~input_o\ & ((\inst|y.t4~q\) # (\inst|y.t3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t4~q\,
	datab => \Jugar~input_o\,
	datac => \inst|y.t21_1~q\,
	datad => \inst|y.t3~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X30_Y9_N16
\inst|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~1_combout\ = (\inst|Selector2~0_combout\) # ((\inst|y~51_combout\ & (\inst|y.t20~q\ & !\inst20|A_mayorigual_B~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y~51_combout\,
	datab => \inst|y.t20~q\,
	datac => \inst20|A_mayorigual_B~0_combout\,
	datad => \inst|Selector2~0_combout\,
	combout => \inst|Selector2~1_combout\);

-- Location: FF_X30_Y9_N17
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

-- Location: LCCOMB_X35_Y9_N30
\inst13|So[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|So[4]~9_combout\ = (\inst|y.t4~q\) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t4~q\,
	datad => \inst|y.t1~q\,
	combout => \inst13|So[4]~9_combout\);

-- Location: FF_X35_Y8_N19
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
	sclr => \inst13|So[4]~8_combout\,
	ena => \inst13|So[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|So\(3));

-- Location: LCCOMB_X35_Y8_N20
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

-- Location: FF_X35_Y8_N21
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
	sclr => \inst13|So[4]~8_combout\,
	ena => \inst13|So[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|So\(4));

-- Location: LCCOMB_X35_Y8_N4
\inst13|So[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|So[4]~7_combout\ = (((!\inst13|So\(2)) # (!\inst13|So\(1))) # (!\inst13|So\(3))) # (!\inst13|So\(0))

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
	combout => \inst13|So[4]~7_combout\);

-- Location: LCCOMB_X35_Y8_N6
\inst13|So[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|So[4]~8_combout\ = ((\inst13|So\(4) & !\inst13|So[4]~7_combout\)) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|So\(4),
	datac => \inst13|So[4]~7_combout\,
	datad => \inst|y.t1~q\,
	combout => \inst13|So[4]~8_combout\);

-- Location: FF_X35_Y8_N13
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
	sclr => \inst13|So[4]~8_combout\,
	ena => \inst13|So[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|So\(0));

-- Location: LCCOMB_X35_Y8_N14
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

-- Location: FF_X35_Y8_N15
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
	sclr => \inst13|So[4]~8_combout\,
	ena => \inst13|So[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|So\(1));

-- Location: FF_X35_Y8_N17
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
	sclr => \inst13|So[4]~8_combout\,
	ena => \inst13|So[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|So\(2));

-- Location: LCCOMB_X35_Y8_N22
\inst13|S3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3~4_combout\ = (\inst13|So\(2) & \inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|So\(2),
	datad => \inst|y.t1~q\,
	combout => \inst13|S3~4_combout\);

-- Location: LCCOMB_X35_Y10_N16
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

-- Location: LCCOMB_X34_Y9_N2
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

-- Location: LCCOMB_X34_Y9_N12
\inst13|Cont_i[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Cont_i[5]~18_combout\ = (\inst13|Cont_i\(5) & (!\inst13|Cont_i[4]~17\)) # (!\inst13|Cont_i\(5) & ((\inst13|Cont_i[4]~17\) # (GND)))
-- \inst13|Cont_i[5]~19\ = CARRY((!\inst13|Cont_i[4]~17\) # (!\inst13|Cont_i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Cont_i\(5),
	datad => VCC,
	cin => \inst13|Cont_i[4]~17\,
	combout => \inst13|Cont_i[5]~18_combout\,
	cout => \inst13|Cont_i[5]~19\);

-- Location: LCCOMB_X34_Y9_N14
\inst13|Cont_i[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Cont_i[6]~20_combout\ = \inst13|Cont_i[5]~19\ $ (!\inst13|Cont_i\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst13|Cont_i\(6),
	cin => \inst13|Cont_i[5]~19\,
	combout => \inst13|Cont_i[6]~20_combout\);

-- Location: FF_X34_Y9_N15
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
	sclr => \inst13|Cont_i[6]~9_combout\,
	ena => \inst13|So[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|Cont_i\(6));

-- Location: LCCOMB_X34_Y9_N18
\inst13|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal3~1_combout\ = ((\inst13|Cont_i\(4)) # (!\inst13|Cont_i\(6))) # (!\inst13|Cont_i\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(2),
	datac => \inst13|Cont_i\(6),
	datad => \inst13|Cont_i\(4),
	combout => \inst13|Equal3~1_combout\);

-- Location: LCCOMB_X34_Y9_N30
\inst13|Cont_i[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Cont_i[6]~9_combout\ = ((!\inst13|Equal3~1_combout\ & !\inst13|Equal3~0_combout\)) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t1~q\,
	datac => \inst13|Equal3~1_combout\,
	datad => \inst13|Equal3~0_combout\,
	combout => \inst13|Cont_i[6]~9_combout\);

-- Location: FF_X34_Y9_N3
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
	sclr => \inst13|Cont_i[6]~9_combout\,
	ena => \inst13|So[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|Cont_i\(0));

-- Location: LCCOMB_X34_Y9_N4
\inst13|Cont_i[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Cont_i[1]~10_combout\ = (\inst13|Cont_i\(1) & (!\inst13|Cont_i[0]~8\)) # (!\inst13|Cont_i\(1) & ((\inst13|Cont_i[0]~8\) # (GND)))
-- \inst13|Cont_i[1]~11\ = CARRY((!\inst13|Cont_i[0]~8\) # (!\inst13|Cont_i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(1),
	datad => VCC,
	cin => \inst13|Cont_i[0]~8\,
	combout => \inst13|Cont_i[1]~10_combout\,
	cout => \inst13|Cont_i[1]~11\);

-- Location: FF_X34_Y9_N5
\inst13|Cont_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|Cont_i[1]~10_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst13|Cont_i[6]~9_combout\,
	ena => \inst13|So[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|Cont_i\(1));

-- Location: LCCOMB_X34_Y9_N6
\inst13|Cont_i[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Cont_i[2]~12_combout\ = (\inst13|Cont_i\(2) & (\inst13|Cont_i[1]~11\ $ (GND))) # (!\inst13|Cont_i\(2) & (!\inst13|Cont_i[1]~11\ & VCC))
-- \inst13|Cont_i[2]~13\ = CARRY((\inst13|Cont_i\(2) & !\inst13|Cont_i[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Cont_i\(2),
	datad => VCC,
	cin => \inst13|Cont_i[1]~11\,
	combout => \inst13|Cont_i[2]~12_combout\,
	cout => \inst13|Cont_i[2]~13\);

-- Location: FF_X34_Y9_N7
\inst13|Cont_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|Cont_i[2]~12_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst13|Cont_i[6]~9_combout\,
	ena => \inst13|So[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|Cont_i\(2));

-- Location: LCCOMB_X34_Y9_N8
\inst13|Cont_i[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Cont_i[3]~14_combout\ = (\inst13|Cont_i\(3) & (!\inst13|Cont_i[2]~13\)) # (!\inst13|Cont_i\(3) & ((\inst13|Cont_i[2]~13\) # (GND)))
-- \inst13|Cont_i[3]~15\ = CARRY((!\inst13|Cont_i[2]~13\) # (!\inst13|Cont_i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(3),
	datad => VCC,
	cin => \inst13|Cont_i[2]~13\,
	combout => \inst13|Cont_i[3]~14_combout\,
	cout => \inst13|Cont_i[3]~15\);

-- Location: FF_X34_Y9_N9
\inst13|Cont_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|Cont_i[3]~14_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst13|Cont_i[6]~9_combout\,
	ena => \inst13|So[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|Cont_i\(3));

-- Location: LCCOMB_X34_Y9_N10
\inst13|Cont_i[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Cont_i[4]~16_combout\ = (\inst13|Cont_i\(4) & (\inst13|Cont_i[3]~15\ $ (GND))) # (!\inst13|Cont_i\(4) & (!\inst13|Cont_i[3]~15\ & VCC))
-- \inst13|Cont_i[4]~17\ = CARRY((\inst13|Cont_i\(4) & !\inst13|Cont_i[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(4),
	datad => VCC,
	cin => \inst13|Cont_i[3]~15\,
	combout => \inst13|Cont_i[4]~16_combout\,
	cout => \inst13|Cont_i[4]~17\);

-- Location: FF_X34_Y9_N11
\inst13|Cont_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|Cont_i[4]~16_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst13|Cont_i[6]~9_combout\,
	ena => \inst13|So[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|Cont_i\(4));

-- Location: FF_X34_Y9_N13
\inst13|Cont_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|Cont_i[5]~18_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst13|Cont_i[6]~9_combout\,
	ena => \inst13|So[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|Cont_i\(5));

-- Location: LCCOMB_X34_Y9_N24
\inst13|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal3~0_combout\ = ((\inst13|Cont_i\(0)) # ((\inst13|Cont_i\(1)) # (\inst13|Cont_i\(3)))) # (!\inst13|Cont_i\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(5),
	datab => \inst13|Cont_i\(0),
	datac => \inst13|Cont_i\(1),
	datad => \inst13|Cont_i\(3),
	combout => \inst13|Equal3~0_combout\);

-- Location: LCCOMB_X34_Y9_N0
\inst13|S4[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S4[0]~0_combout\ = ((\inst|y.t4~q\ & (!\inst13|Equal3~0_combout\ & !\inst13|Equal3~1_combout\))) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t4~q\,
	datab => \inst13|Equal3~0_combout\,
	datac => \inst|y.t1~q\,
	datad => \inst13|Equal3~1_combout\,
	combout => \inst13|S4[0]~0_combout\);

-- Location: FF_X35_Y10_N17
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
	ena => \inst13|S4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S4\(2));

-- Location: LCCOMB_X35_Y10_N24
\inst38|S3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S3~2_combout\ = (!\inst|y.t2~q\ & (\inst13|S4\(2) & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datac => \inst13|S4\(2),
	datad => \inst|y.t1~q\,
	combout => \inst38|S3~2_combout\);

-- Location: LCCOMB_X35_Y9_N14
\inst38|S2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S2[1]~1_combout\ = (\inst|y.t10~q\) # ((\inst|y.t5~q\) # ((\inst|y.t15~q\) # (\inst16|a[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t5~q\,
	datac => \inst|y.t15~q\,
	datad => \inst16|a[1]~2_combout\,
	combout => \inst38|S2[1]~1_combout\);

-- Location: FF_X35_Y10_N25
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
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S3\(2));

-- Location: LCCOMB_X29_Y8_N28
\inst7|Q1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Q1~2_combout\ = (\Rojo~input_o\ & (!\inst|y.t2~q\ & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rojo~input_o\,
	datac => \inst|y.t2~q\,
	datad => \inst|y.t1~q\,
	combout => \inst7|Q1~2_combout\);

-- Location: FF_X29_Y8_N29
\inst7|Q1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst7|Q1~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst7|Q1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Q1\(0));

-- Location: LCCOMB_X35_Y9_N20
\inst13|S3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3~5_combout\ = (\inst|y.t1~q\ & \inst13|So\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datad => \inst13|So\(3),
	combout => \inst13|S3~5_combout\);

-- Location: LCCOMB_X35_Y10_N2
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

-- Location: FF_X35_Y10_N3
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
	ena => \inst13|S4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S4\(1));

-- Location: LCCOMB_X35_Y10_N22
\inst38|S3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S3~3_combout\ = (!\inst|y.t2~q\ & (\inst13|S4\(1) & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datac => \inst13|S4\(1),
	datad => \inst|y.t1~q\,
	combout => \inst38|S3~3_combout\);

-- Location: FF_X35_Y10_N23
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
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S3\(1));

-- Location: LCCOMB_X35_Y10_N14
\inst13|S3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3~0_combout\ = (\inst13|So\(0) & \inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|So\(0),
	datad => \inst|y.t1~q\,
	combout => \inst13|S3~0_combout\);

-- Location: LCCOMB_X35_Y10_N4
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

-- Location: FF_X35_Y10_N5
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
	ena => \inst13|S4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S4\(4));

-- Location: LCCOMB_X35_Y10_N0
\inst38|S3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S3~0_combout\ = (!\inst|y.t2~q\ & (\inst13|S4\(4) & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datac => \inst13|S4\(4),
	datad => \inst|y.t1~q\,
	combout => \inst38|S3~0_combout\);

-- Location: FF_X35_Y10_N1
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
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S3\(4));

-- Location: LCCOMB_X35_Y10_N20
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

-- Location: LCCOMB_X35_Y10_N18
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

-- Location: FF_X35_Y10_N19
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
	ena => \inst13|S4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S4\(3));

-- Location: LCCOMB_X35_Y10_N26
\inst38|S3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S3~1_combout\ = (!\inst|y.t2~q\ & (\inst13|S4\(3) & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datac => \inst13|S4\(3),
	datad => \inst|y.t1~q\,
	combout => \inst38|S3~1_combout\);

-- Location: FF_X35_Y10_N27
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
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S3\(3));

-- Location: LCCOMB_X35_Y10_N30
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

-- Location: LCCOMB_X35_Y10_N12
\inst13|S4[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S4[0]~feeder_combout\ = \inst13|S3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|S3~6_combout\,
	combout => \inst13|S4[0]~feeder_combout\);

-- Location: FF_X35_Y10_N13
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
	ena => \inst13|S4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S4\(0));

-- Location: LCCOMB_X35_Y10_N28
\inst38|S3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S3~4_combout\ = (!\inst|y.t2~q\ & (\inst13|S4\(0) & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datac => \inst13|S4\(0),
	datad => \inst|y.t1~q\,
	combout => \inst38|S3~4_combout\);

-- Location: FF_X35_Y10_N29
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
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S3\(0));

-- Location: LCCOMB_X35_Y10_N6
\inst4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst38|S3\(1) & ((\inst38|S3\(3)) # ((!\inst38|S3\(4) & \inst38|S3\(0))))) # (!\inst38|S3\(1) & (\inst38|S3\(4) & (\inst38|S3\(3) & !\inst38|S3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|S3\(1),
	datab => \inst38|S3\(4),
	datac => \inst38|S3\(3),
	datad => \inst38|S3\(0),
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X35_Y8_N26
\inst9|S0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|S0~0_combout\ = (\inst38|S3\(2) & (!\inst7|Q1\(0) & (\inst7|Q1\(3) & \inst4|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|S3\(2),
	datab => \inst7|Q1\(0),
	datac => \inst7|Q1\(3),
	datad => \inst4|Mux3~0_combout\,
	combout => \inst9|S0~0_combout\);

-- Location: LCCOMB_X35_Y9_N16
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

-- Location: LCCOMB_X34_Y9_N26
\inst13|S1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S1~1_combout\ = (\inst13|Cont_i\(4) & (!\inst13|Cont_i\(6) & !\inst13|Cont_i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(4),
	datac => \inst13|Cont_i\(6),
	datad => \inst13|Cont_i\(1),
	combout => \inst13|S1~1_combout\);

-- Location: LCCOMB_X35_Y9_N6
\inst13|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S1~0_combout\ = (\inst13|Cont_i\(0) & (\inst|y.t4~q\ & (!\inst13|Cont_i\(2) & \inst13|Cont_i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(0),
	datab => \inst|y.t4~q\,
	datac => \inst13|Cont_i\(2),
	datad => \inst13|Cont_i\(3),
	combout => \inst13|S1~0_combout\);

-- Location: LCCOMB_X35_Y9_N8
\inst13|S1[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S1[3]~2_combout\ = ((!\inst13|Cont_i\(5) & (\inst13|S1~1_combout\ & \inst13|S1~0_combout\))) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst13|Cont_i\(5),
	datac => \inst13|S1~1_combout\,
	datad => \inst13|S1~0_combout\,
	combout => \inst13|S1[3]~2_combout\);

-- Location: FF_X35_Y9_N17
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
	ena => \inst13|S1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S1\(2));

-- Location: LCCOMB_X35_Y9_N24
\inst38|S0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S0~2_combout\ = (!\inst|y.t2~q\ & (\inst13|S1\(2) & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datac => \inst13|S1\(2),
	datad => \inst|y.t1~q\,
	combout => \inst38|S0~2_combout\);

-- Location: FF_X35_Y9_N25
\inst38|S0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S0~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S0\(2));

-- Location: LCCOMB_X35_Y9_N2
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

-- Location: FF_X35_Y9_N3
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
	ena => \inst13|S1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S1\(3));

-- Location: LCCOMB_X35_Y9_N10
\inst38|S0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S0~1_combout\ = (!\inst|y.t2~q\ & (\inst13|S1\(3) & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datac => \inst13|S1\(3),
	datad => \inst|y.t1~q\,
	combout => \inst38|S0~1_combout\);

-- Location: FF_X35_Y9_N11
\inst38|S0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S0~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S0\(3));

-- Location: FF_X35_Y9_N21
\inst13|S1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	asdata => \inst13|S3~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst13|S1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S1\(0));

-- Location: LCCOMB_X35_Y9_N28
\inst38|S0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S0~4_combout\ = (!\inst|y.t2~q\ & (\inst13|S1\(0) & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datab => \inst13|S1\(0),
	datad => \inst|y.t1~q\,
	combout => \inst38|S0~4_combout\);

-- Location: FF_X35_Y9_N29
\inst38|S0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S0~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S0\(0));

-- Location: LCCOMB_X35_Y9_N18
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

-- Location: FF_X35_Y9_N19
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
	ena => \inst13|S1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S1\(1));

-- Location: LCCOMB_X35_Y9_N26
\inst38|S0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S0~3_combout\ = (!\inst|y.t2~q\ & (\inst13|S1\(1) & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datac => \inst13|S1\(1),
	datad => \inst|y.t1~q\,
	combout => \inst38|S0~3_combout\);

-- Location: FF_X35_Y9_N27
\inst38|S0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S0~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S0\(1));

-- Location: LCCOMB_X35_Y9_N12
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

-- Location: FF_X35_Y9_N13
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
	ena => \inst13|S1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S1\(4));

-- Location: LCCOMB_X35_Y9_N0
\inst38|S0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S0~0_combout\ = (!\inst|y.t2~q\ & (\inst13|S1\(4) & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datac => \inst13|S1\(4),
	datad => \inst|y.t1~q\,
	combout => \inst38|S0~0_combout\);

-- Location: FF_X35_Y9_N1
\inst38|S0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S0~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S0\(4));

-- Location: LCCOMB_X35_Y9_N4
\inst4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst38|S0\(3) & ((\inst38|S0\(1)) # ((!\inst38|S0\(0) & \inst38|S0\(4))))) # (!\inst38|S0\(3) & (\inst38|S0\(0) & (\inst38|S0\(1) & !\inst38|S0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|S0\(3),
	datab => \inst38|S0\(0),
	datac => \inst38|S0\(1),
	datad => \inst38|S0\(4),
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y8_N0
\inst9|S0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|S0~1_combout\ = (\inst7|Q1\(0) & (\inst38|S0\(2) & (!\inst7|Q1\(3) & \inst4|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Q1\(0),
	datab => \inst38|S0\(2),
	datac => \inst7|Q1\(3),
	datad => \inst4|Mux0~0_combout\,
	combout => \inst9|S0~1_combout\);

-- Location: LCCOMB_X35_Y8_N10
\inst9|S0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|S0~2_combout\ = (!\inst7|Q1\(2) & (!\inst7|Q1\(1) & ((\inst9|S0~0_combout\) # (\inst9|S0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Q1\(2),
	datab => \inst7|Q1\(1),
	datac => \inst9|S0~0_combout\,
	datad => \inst9|S0~1_combout\,
	combout => \inst9|S0~2_combout\);

-- Location: LCCOMB_X31_Y8_N10
\inst|y~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~46_combout\ = (\inst30|S~q\ & (\inst|y.t17_1~q\ & (!\inst9|S0~5_combout\ & !\inst9|S0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|S~q\,
	datab => \inst|y.t17_1~q\,
	datac => \inst9|S0~5_combout\,
	datad => \inst9|S0~2_combout\,
	combout => \inst|y~46_combout\);

-- Location: FF_X31_Y8_N11
\inst|y.t19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~46_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t19~q\);

-- Location: LCCOMB_X32_Y8_N10
\inst|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector9~0_combout\ = (\inst|y.t16~q\ & (!\inst6~0_combout\ & !\inst17|seg_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t16~q\,
	datac => \inst6~0_combout\,
	datad => \inst17|seg_1~q\,
	combout => \inst|Selector9~0_combout\);

-- Location: LCCOMB_X31_Y8_N16
\inst|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector9~1_combout\ = (\inst30|S~q\ & (((\inst|y.t15~q\ & \inst32|seg_2~q\)))) # (!\inst30|S~q\ & ((\inst|y.t17_1~q\) # ((\inst|y.t15~q\ & \inst32|seg_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|S~q\,
	datab => \inst|y.t17_1~q\,
	datac => \inst|y.t15~q\,
	datad => \inst32|seg_2~q\,
	combout => \inst|Selector9~1_combout\);

-- Location: LCCOMB_X31_Y8_N14
\inst|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector9~2_combout\ = (\inst|y.t19~q\) # ((\inst|y.t18~q\) # ((\inst|Selector9~0_combout\) # (\inst|Selector9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t19~q\,
	datab => \inst|y.t18~q\,
	datac => \inst|Selector9~0_combout\,
	datad => \inst|Selector9~1_combout\,
	combout => \inst|Selector9~2_combout\);

-- Location: FF_X31_Y8_N15
\inst|y.t16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Selector9~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t16~q\);

-- Location: LCCOMB_X31_Y8_N26
\inst|WideOr24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr24~0_combout\ = (!\inst|y.t12~q\ & (!\inst|y.t12_1~q\ & (!\inst|y.t17~q\ & !\inst|y.t17_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t12~q\,
	datab => \inst|y.t12_1~q\,
	datac => \inst|y.t17~q\,
	datad => \inst|y.t17_1~q\,
	combout => \inst|WideOr24~0_combout\);

-- Location: LCCOMB_X32_Y8_N18
\inst|WideOr28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr28~1_combout\ = (\inst|y.t16~q\) # ((\inst|y.t11~q\) # ((!\inst|WideOr28~0_combout\) # (!\inst|WideOr24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t16~q\,
	datab => \inst|y.t11~q\,
	datac => \inst|WideOr24~0_combout\,
	datad => \inst|WideOr28~0_combout\,
	combout => \inst|WideOr28~1_combout\);

-- Location: LCCOMB_X32_Y8_N4
\inst17|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|a~0_combout\ = (!\inst16|a[1]~2_combout\ & (\inst|WideOr28~1_combout\ & (!\inst17|a\(0) & !\inst17|seg_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|a[1]~2_combout\,
	datab => \inst|WideOr28~1_combout\,
	datac => \inst17|a\(0),
	datad => \inst17|seg_1~2_combout\,
	combout => \inst17|a~0_combout\);

-- Location: FF_X32_Y8_N5
\inst17|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst17|a~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|a\(0));

-- Location: LCCOMB_X32_Y8_N30
\inst17|a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|a~2_combout\ = (\inst|y.t16~q\) # ((\inst|y.t11~q\) # (!\inst|WideOr24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t16~q\,
	datab => \inst|y.t11~q\,
	datac => \inst|WideOr24~0_combout\,
	combout => \inst17|a~2_combout\);

-- Location: LCCOMB_X32_Y8_N0
\inst17|a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|a~1_combout\ = (!\inst16|a[1]~2_combout\ & (\inst17|a\(2) $ (((\inst17|a\(0) & \inst17|a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|a[1]~2_combout\,
	datab => \inst17|a\(0),
	datac => \inst17|a\(2),
	datad => \inst17|a\(1),
	combout => \inst17|a~1_combout\);

-- Location: LCCOMB_X32_Y8_N26
\inst17|a~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|a~3_combout\ = (!\inst17|seg_1~2_combout\ & (\inst17|a~1_combout\ & ((\inst17|a~2_combout\) # (!\inst|WideOr28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr28~0_combout\,
	datab => \inst17|seg_1~2_combout\,
	datac => \inst17|a~2_combout\,
	datad => \inst17|a~1_combout\,
	combout => \inst17|a~3_combout\);

-- Location: FF_X32_Y8_N27
\inst17|a[2]\ : dffeas
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
	q => \inst17|a\(2));

-- Location: LCCOMB_X32_Y8_N2
\inst17|seg_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_1~2_combout\ = (\inst17|a\(0) & (!\inst17|a\(2) & !\inst17|a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|a\(0),
	datac => \inst17|a\(2),
	datad => \inst17|a\(1),
	combout => \inst17|seg_1~2_combout\);

-- Location: LCCOMB_X32_Y8_N24
\inst17|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Add0~0_combout\ = \inst17|a\(0) $ (\inst17|a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|a\(0),
	datad => \inst17|a\(1),
	combout => \inst17|Add0~0_combout\);

-- Location: LCCOMB_X32_Y8_N12
\inst17|a~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|a~4_combout\ = (!\inst16|a[1]~2_combout\ & (!\inst17|seg_1~2_combout\ & (\inst17|Add0~0_combout\ & \inst|WideOr28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|a[1]~2_combout\,
	datab => \inst17|seg_1~2_combout\,
	datac => \inst17|Add0~0_combout\,
	datad => \inst|WideOr28~1_combout\,
	combout => \inst17|a~4_combout\);

-- Location: FF_X32_Y8_N13
\inst17|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst17|a~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|a\(1));

-- Location: LCCOMB_X32_Y8_N28
\inst17|seg_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_1~3_combout\ = (!\inst17|a\(1) & (\inst17|a\(0) & (!\inst17|a\(2) & \inst|WideOr28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|a\(1),
	datab => \inst17|a\(0),
	datac => \inst17|a\(2),
	datad => \inst|WideOr28~1_combout\,
	combout => \inst17|seg_1~3_combout\);

-- Location: FF_X32_Y8_N29
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
	sclr => \inst16|a[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seg_1~q\);

-- Location: LCCOMB_X31_Y8_N8
\inst|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (\inst|y.t11~q\ & (!\inst6~0_combout\ & !\inst17|seg_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t11~q\,
	datab => \inst6~0_combout\,
	datad => \inst17|seg_1~q\,
	combout => \inst|Selector7~0_combout\);

-- Location: LCCOMB_X31_Y8_N24
\inst|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector7~1_combout\ = (\inst30|S~q\ & (((\inst|y.t10~q\ & \inst33|seg_3~q\)))) # (!\inst30|S~q\ & ((\inst|y.t12_1~q\) # ((\inst|y.t10~q\ & \inst33|seg_3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|S~q\,
	datab => \inst|y.t12_1~q\,
	datac => \inst|y.t10~q\,
	datad => \inst33|seg_3~q\,
	combout => \inst|Selector7~1_combout\);

-- Location: LCCOMB_X31_Y8_N6
\inst|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector7~2_combout\ = (\inst|Selector7~0_combout\) # ((\inst|y.t14~q\) # ((\inst|y.t13~q\) # (\inst|Selector7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector7~0_combout\,
	datab => \inst|y.t14~q\,
	datac => \inst|y.t13~q\,
	datad => \inst|Selector7~1_combout\,
	combout => \inst|Selector7~2_combout\);

-- Location: FF_X31_Y8_N7
\inst|y.t11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Selector7~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t11~q\);

-- Location: LCCOMB_X31_Y8_N22
\inst|y~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~38_combout\ = (\inst|y.t11~q\ & (!\inst17|seg_1~q\ & \inst6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t11~q\,
	datab => \inst17|seg_1~q\,
	datad => \inst6~0_combout\,
	combout => \inst|y~38_combout\);

-- Location: FF_X31_Y8_N23
\inst|y.t12\ : dffeas
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
	q => \inst|y.t12~q\);

-- Location: LCCOMB_X29_Y8_N2
\inst7|Q1[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Q1[1]~1_combout\ = (\inst|y.t6_1~q\) # ((\inst|y.t12~q\) # ((\inst|y.t17~q\) # (\inst16|a[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t6_1~q\,
	datab => \inst|y.t12~q\,
	datac => \inst|y.t17~q\,
	datad => \inst16|a[1]~2_combout\,
	combout => \inst7|Q1[1]~1_combout\);

-- Location: FF_X29_Y8_N23
\inst7|Q1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst7|Q1~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst7|Q1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Q1\(3));

-- Location: LCCOMB_X34_Y8_N22
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

-- Location: LCCOMB_X34_Y9_N22
\inst13|S2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S2~1_combout\ = (!\inst13|Cont_i\(2) & (!\inst13|Cont_i\(6) & (\inst|y.t4~q\ & \inst13|Cont_i\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(2),
	datab => \inst13|Cont_i\(6),
	datac => \inst|y.t4~q\,
	datad => \inst13|Cont_i\(4),
	combout => \inst13|S2~1_combout\);

-- Location: LCCOMB_X34_Y9_N20
\inst13|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S2~0_combout\ = (\inst13|Cont_i\(5) & (!\inst13|Cont_i\(0) & (\inst13|Cont_i\(1) & !\inst13|Cont_i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(5),
	datab => \inst13|Cont_i\(0),
	datac => \inst13|Cont_i\(1),
	datad => \inst13|Cont_i\(3),
	combout => \inst13|S2~0_combout\);

-- Location: LCCOMB_X34_Y9_N28
\inst13|S2[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S2[4]~2_combout\ = ((\inst13|S2~1_combout\ & \inst13|S2~0_combout\)) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datac => \inst13|S2~1_combout\,
	datad => \inst13|S2~0_combout\,
	combout => \inst13|S2[4]~2_combout\);

-- Location: FF_X34_Y8_N23
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
	ena => \inst13|S2[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S2\(2));

-- Location: LCCOMB_X35_Y9_N22
\inst38|S1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S1~2_combout\ = (\inst|y.t1~q\ & (!\inst|y.t2~q\ & \inst13|S2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst|y.t2~q\,
	datad => \inst13|S2\(2),
	combout => \inst38|S1~2_combout\);

-- Location: FF_X35_Y9_N23
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
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S1\(2));

-- Location: LCCOMB_X34_Y8_N4
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

-- Location: FF_X34_Y8_N5
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
	ena => \inst13|S2[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S2\(1));

-- Location: LCCOMB_X34_Y8_N6
\inst38|S1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S1~3_combout\ = (\inst|y.t1~q\ & (\inst13|S2\(1) & !\inst|y.t2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datac => \inst13|S2\(1),
	datad => \inst|y.t2~q\,
	combout => \inst38|S1~3_combout\);

-- Location: FF_X34_Y8_N7
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
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S1\(1));

-- Location: LCCOMB_X34_Y8_N18
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

-- Location: FF_X34_Y8_N19
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
	ena => \inst13|S2[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S2\(0));

-- Location: LCCOMB_X34_Y8_N14
\inst38|S1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S1~4_combout\ = (\inst|y.t1~q\ & (\inst13|S2\(0) & !\inst|y.t2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datac => \inst13|S2\(0),
	datad => \inst|y.t2~q\,
	combout => \inst38|S1~4_combout\);

-- Location: FF_X34_Y8_N15
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
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S1\(0));

-- Location: LCCOMB_X34_Y8_N2
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

-- Location: FF_X34_Y8_N3
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
	ena => \inst13|S2[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S2\(4));

-- Location: LCCOMB_X34_Y8_N8
\inst38|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S1~0_combout\ = (\inst|y.t1~q\ & (\inst13|S2\(4) & !\inst|y.t2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datac => \inst13|S2\(4),
	datad => \inst|y.t2~q\,
	combout => \inst38|S1~0_combout\);

-- Location: FF_X34_Y8_N9
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
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S1\(4));

-- Location: LCCOMB_X34_Y8_N16
\inst13|S2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S2[3]~feeder_combout\ = \inst13|S3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|S3~3_combout\,
	combout => \inst13|S2[3]~feeder_combout\);

-- Location: FF_X34_Y8_N17
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
	ena => \inst13|S2[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S2\(3));

-- Location: LCCOMB_X34_Y8_N24
\inst38|S1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S1~1_combout\ = (\inst|y.t1~q\ & (\inst13|S2\(3) & !\inst|y.t2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datac => \inst13|S2\(3),
	datad => \inst|y.t2~q\,
	combout => \inst38|S1~1_combout\);

-- Location: FF_X34_Y8_N25
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
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S1\(3));

-- Location: LCCOMB_X34_Y8_N10
\inst4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst38|S1\(1) & ((\inst38|S1\(3)) # ((\inst38|S1\(0) & !\inst38|S1\(4))))) # (!\inst38|S1\(1) & (!\inst38|S1\(0) & (\inst38|S1\(4) & \inst38|S1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|S1\(1),
	datab => \inst38|S1\(0),
	datac => \inst38|S1\(4),
	datad => \inst38|S1\(3),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X34_Y8_N0
\inst9|S0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|S0~4_combout\ = (!\inst7|Q1\(2) & (\inst7|Q1\(1) & (\inst38|S1\(2) & \inst4|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Q1\(2),
	datab => \inst7|Q1\(1),
	datac => \inst38|S1\(2),
	datad => \inst4|Mux1~0_combout\,
	combout => \inst9|S0~4_combout\);

-- Location: LCCOMB_X36_Y9_N10
\inst13|S3[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3[2]~feeder_combout\ = \inst13|S3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|S3~4_combout\,
	combout => \inst13|S3[2]~feeder_combout\);

-- Location: LCCOMB_X34_Y9_N16
\inst13|S3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3~1_combout\ = (!\inst13|Cont_i\(4) & (\inst13|Cont_i\(6) & \inst13|Cont_i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(4),
	datac => \inst13|Cont_i\(6),
	datad => \inst13|Cont_i\(1),
	combout => \inst13|S3~1_combout\);

-- Location: LCCOMB_X36_Y9_N20
\inst13|S3[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3[4]~2_combout\ = ((!\inst13|Cont_i\(5) & (\inst13|S1~0_combout\ & \inst13|S3~1_combout\))) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Cont_i\(5),
	datab => \inst|y.t1~q\,
	datac => \inst13|S1~0_combout\,
	datad => \inst13|S3~1_combout\,
	combout => \inst13|S3[4]~2_combout\);

-- Location: FF_X36_Y9_N11
\inst13|S3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S3[2]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S3[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S3\(2));

-- Location: LCCOMB_X36_Y9_N30
\inst38|S2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S2~3_combout\ = (!\inst|y.t2~q\ & (\inst13|S3\(2) & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst13|S3\(2),
	datad => \inst|y.t1~q\,
	combout => \inst38|S2~3_combout\);

-- Location: FF_X36_Y9_N31
\inst38|S2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S2~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S2\(2));

-- Location: LCCOMB_X36_Y9_N18
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

-- Location: FF_X36_Y9_N19
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
	ena => \inst13|S3[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S3\(0));

-- Location: LCCOMB_X36_Y9_N26
\inst38|S2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S2~5_combout\ = (!\inst|y.t2~q\ & (\inst13|S3\(0) & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst13|S3\(0),
	datad => \inst|y.t1~q\,
	combout => \inst38|S2~5_combout\);

-- Location: FF_X36_Y9_N27
\inst38|S2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S2~5_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S2\(0));

-- Location: LCCOMB_X36_Y9_N4
\inst13|S3[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3[1]~feeder_combout\ = \inst13|S3~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|S3~5_combout\,
	combout => \inst13|S3[1]~feeder_combout\);

-- Location: FF_X36_Y9_N5
\inst13|S3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S3[1]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S3[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S3\(1));

-- Location: LCCOMB_X36_Y9_N0
\inst38|S2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S2~4_combout\ = (!\inst|y.t2~q\ & (\inst13|S3\(1) & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst13|S3\(1),
	datad => \inst|y.t1~q\,
	combout => \inst38|S2~4_combout\);

-- Location: FF_X36_Y9_N1
\inst38|S2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S2~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S2\(1));

-- Location: LCCOMB_X36_Y9_N2
\inst13|S3[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3[4]~feeder_combout\ = \inst13|S3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|S3~0_combout\,
	combout => \inst13|S3[4]~feeder_combout\);

-- Location: FF_X36_Y9_N3
\inst13|S3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_100k~inputclkctrl_outclk\,
	d => \inst13|S3[4]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst13|S3[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S3\(4));

-- Location: LCCOMB_X36_Y9_N8
\inst38|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S2~0_combout\ = (!\inst|y.t2~q\ & (\inst13|S3\(4) & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst13|S3\(4),
	datad => \inst|y.t1~q\,
	combout => \inst38|S2~0_combout\);

-- Location: FF_X36_Y9_N9
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
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S2\(4));

-- Location: LCCOMB_X36_Y9_N12
\inst13|S3[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|S3[3]~feeder_combout\ = \inst13|S3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|S3~3_combout\,
	combout => \inst13|S3[3]~feeder_combout\);

-- Location: FF_X36_Y9_N13
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
	ena => \inst13|S3[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|S3\(3));

-- Location: LCCOMB_X36_Y9_N6
\inst38|S2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|S2~2_combout\ = (!\inst|y.t2~q\ & (\inst13|S3\(3) & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst13|S3\(3),
	datad => \inst|y.t1~q\,
	combout => \inst38|S2~2_combout\);

-- Location: FF_X36_Y9_N7
\inst38|S2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst38|S2~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst38|S2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|S2\(3));

-- Location: LCCOMB_X36_Y9_N24
\inst4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst38|S2\(0) & (\inst38|S2\(1) & ((\inst38|S2\(3)) # (!\inst38|S2\(4))))) # (!\inst38|S2\(0) & (\inst38|S2\(3) & ((\inst38|S2\(1)) # (\inst38|S2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|S2\(0),
	datab => \inst38|S2\(1),
	datac => \inst38|S2\(4),
	datad => \inst38|S2\(3),
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y8_N2
\inst9|S0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|S0~3_combout\ = (!\inst7|Q1\(1) & (\inst38|S2\(2) & (\inst7|Q1\(2) & \inst4|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Q1\(1),
	datab => \inst38|S2\(2),
	datac => \inst7|Q1\(2),
	datad => \inst4|Mux2~0_combout\,
	combout => \inst9|S0~3_combout\);

-- Location: LCCOMB_X35_Y8_N24
\inst9|S0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|S0~5_combout\ = (!\inst7|Q1\(3) & (!\inst7|Q1\(0) & ((\inst9|S0~4_combout\) # (\inst9|S0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Q1\(3),
	datab => \inst7|Q1\(0),
	datac => \inst9|S0~4_combout\,
	datad => \inst9|S0~3_combout\,
	combout => \inst9|S0~5_combout\);

-- Location: LCCOMB_X31_Y8_N20
\inst|y~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~48_combout\ = (\inst30|S~q\ & (\inst|y.t7_1~q\ & (!\inst9|S0~5_combout\ & !\inst9|S0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|S~q\,
	datab => \inst|y.t7_1~q\,
	datac => \inst9|S0~5_combout\,
	datad => \inst9|S0~2_combout\,
	combout => \inst|y~48_combout\);

-- Location: FF_X31_Y8_N21
\inst|y.t9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~48_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t9~q\);

-- Location: LCCOMB_X30_Y8_N10
\inst|WideOr22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr22~0_combout\ = (\inst|y.t8~q\) # ((\inst|y.t6_1~q\) # ((\inst|y.t7~q\) # (\inst|y.t9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t8~q\,
	datab => \inst|y.t6_1~q\,
	datac => \inst|y.t7~q\,
	datad => \inst|y.t9~q\,
	combout => \inst|WideOr22~0_combout\);

-- Location: LCCOMB_X30_Y8_N16
\inst|WideOr22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr22~1_combout\ = (\inst|y.t6~q\) # ((\inst|y.t7_1~q\) # ((\inst|y.t25~q\) # (\inst|y.t15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t6~q\,
	datab => \inst|y.t7_1~q\,
	datac => \inst|y.t25~q\,
	datad => \inst|y.t15~q\,
	combout => \inst|WideOr22~1_combout\);

-- Location: LCCOMB_X30_Y8_N2
\inst|WideOr22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr22~combout\ = (\inst|WideOr22~0_combout\) # (\inst|WideOr22~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr22~0_combout\,
	datad => \inst|WideOr22~1_combout\,
	combout => \inst|WideOr22~combout\);

-- Location: LCCOMB_X30_Y8_N6
\inst32|a~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|a~10_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & ((\inst32|a\(2)) # (!\inst32|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datab => \inst|y.t1~q\,
	datac => \inst32|a\(2),
	datad => \inst32|a\(1),
	combout => \inst32|a~10_combout\);

-- Location: LCCOMB_X30_Y8_N4
\inst32|a~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|a~7_combout\ = (\inst|WideOr22~combout\ & (\inst32|a~10_combout\ & (\inst32|a\(0) $ (\inst32|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|a\(0),
	datab => \inst|WideOr22~combout\,
	datac => \inst32|a\(1),
	datad => \inst32|a~10_combout\,
	combout => \inst32|a~7_combout\);

-- Location: FF_X30_Y8_N5
\inst32|a[1]\ : dffeas
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
	q => \inst32|a\(1));

-- Location: LCCOMB_X30_Y8_N14
\inst32|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Add0~0_combout\ = \inst32|a\(2) $ (((\inst32|a\(1) & \inst32|a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|a\(2),
	datac => \inst32|a\(1),
	datad => \inst32|a\(0),
	combout => \inst32|Add0~0_combout\);

-- Location: LCCOMB_X30_Y8_N30
\inst32|a~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|a~8_combout\ = (\inst32|Add0~0_combout\ & (\inst32|a[2]~6_combout\ & ((\inst|WideOr22~0_combout\) # (\inst|WideOr22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr22~0_combout\,
	datab => \inst|WideOr22~1_combout\,
	datac => \inst32|Add0~0_combout\,
	datad => \inst32|a[2]~6_combout\,
	combout => \inst32|a~8_combout\);

-- Location: FF_X30_Y8_N31
\inst32|a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst32|a~8_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|a\(2));

-- Location: LCCOMB_X30_Y8_N0
\inst32|a[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|a[2]~6_combout\ = (!\inst16|a[1]~2_combout\ & ((\inst32|a\(2)) # ((\inst32|a\(0)) # (!\inst32|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|a\(2),
	datab => \inst32|a\(0),
	datac => \inst32|a\(1),
	datad => \inst16|a[1]~2_combout\,
	combout => \inst32|a[2]~6_combout\);

-- Location: LCCOMB_X30_Y8_N28
\inst32|a~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|a~9_combout\ = (!\inst32|a\(0) & (\inst32|a[2]~6_combout\ & ((\inst|WideOr22~0_combout\) # (\inst|WideOr22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr22~0_combout\,
	datab => \inst|WideOr22~1_combout\,
	datac => \inst32|a\(0),
	datad => \inst32|a[2]~6_combout\,
	combout => \inst32|a~9_combout\);

-- Location: FF_X30_Y8_N29
\inst32|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst32|a~9_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|a\(0));

-- Location: LCCOMB_X30_Y8_N24
\inst32|seg_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|seg_2~0_combout\ = (!\inst32|a\(0) & (\inst32|a\(1) & (!\inst32|a\(2) & \inst|WideOr22~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|a\(0),
	datab => \inst32|a\(1),
	datac => \inst32|a\(2),
	datad => \inst|WideOr22~combout\,
	combout => \inst32|seg_2~0_combout\);

-- Location: FF_X30_Y8_N25
\inst32|seg_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst32|seg_2~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst16|a[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|seg_2~q\);

-- Location: LCCOMB_X31_Y8_N4
\inst|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector12~2_combout\ = (\inst|y.t25~q\ & (((!\inst2|A1~q\ & \inst|y.t26~q\)) # (!\inst32|seg_2~q\))) # (!\inst|y.t25~q\ & (!\inst2|A1~q\ & (\inst|y.t26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t25~q\,
	datab => \inst2|A1~q\,
	datac => \inst|y.t26~q\,
	datad => \inst32|seg_2~q\,
	combout => \inst|Selector12~2_combout\);

-- Location: LCCOMB_X30_Y8_N18
\inst|Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector12~3_combout\ = (\inst|Selector12~2_combout\) # ((\inst|y.t3~q\ & (\Consultar~input_o\ & !\Jugar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t3~q\,
	datab => \Consultar~input_o\,
	datac => \Jugar~input_o\,
	datad => \inst|Selector12~2_combout\,
	combout => \inst|Selector12~3_combout\);

-- Location: FF_X30_Y8_N19
\inst|y.t25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Selector12~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t25~q\);

-- Location: LCCOMB_X31_Y9_N20
\inst|y~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~42_combout\ = (\inst|y.t25~q\ & \inst32|seg_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.t25~q\,
	datad => \inst32|seg_2~q\,
	combout => \inst|y~42_combout\);

-- Location: FF_X31_Y9_N21
\inst|y.t26\ : dffeas
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
	q => \inst|y.t26~q\);

-- Location: LCCOMB_X31_Y7_N0
\inst2|a~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|a~10_combout\ = (!\inst2|A1~0_combout\ & (!\inst|y.t2~q\ & (!\inst2|a\(0) & \inst|y.t1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|A1~0_combout\,
	datab => \inst|y.t2~q\,
	datac => \inst2|a\(0),
	datad => \inst|y.t1~q\,
	combout => \inst2|a~10_combout\);

-- Location: LCCOMB_X31_Y7_N4
\inst2|a[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|a[0]~7_combout\ = ((\inst|y.t2~q\) # (\inst|y.t26~q\)) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst|y.t2~q\,
	datad => \inst|y.t26~q\,
	combout => \inst2|a[0]~7_combout\);

-- Location: FF_X31_Y7_N1
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
	ena => \inst2|a[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|a\(0));

-- Location: LCCOMB_X31_Y7_N16
\inst2|a~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|a~6_combout\ = (!\inst16|a[1]~2_combout\ & (!\inst2|A1~0_combout\ & (\inst2|a\(0) $ (\inst2|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|a[1]~2_combout\,
	datab => \inst2|a\(0),
	datac => \inst2|a\(1),
	datad => \inst2|A1~0_combout\,
	combout => \inst2|a~6_combout\);

-- Location: FF_X31_Y7_N17
\inst2|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|a~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst2|a[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|a\(1));

-- Location: LCCOMB_X31_Y7_N10
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|a\(2) $ (((\inst2|a\(0) & \inst2|a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|a\(2),
	datab => \inst2|a\(0),
	datad => \inst2|a\(1),
	combout => \inst2|Add0~0_combout\);

-- Location: LCCOMB_X31_Y7_N6
\inst2|a~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|a~8_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & (!\inst2|A1~0_combout\ & \inst2|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datab => \inst|y.t1~q\,
	datac => \inst2|A1~0_combout\,
	datad => \inst2|Add0~0_combout\,
	combout => \inst2|a~8_combout\);

-- Location: FF_X31_Y7_N7
\inst2|a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|a~8_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst2|a[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|a\(2));

-- Location: LCCOMB_X31_Y7_N24
\inst2|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_combout\ = \inst2|a\(3) $ (((\inst2|a\(2) & (\inst2|a\(0) & \inst2|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|a\(2),
	datab => \inst2|a\(0),
	datac => \inst2|a\(3),
	datad => \inst2|a\(1),
	combout => \inst2|Add0~1_combout\);

-- Location: LCCOMB_X31_Y7_N28
\inst2|a~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|a~9_combout\ = (!\inst2|A1~0_combout\ & (\inst2|Add0~1_combout\ & (!\inst|y.t2~q\ & \inst|y.t1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|A1~0_combout\,
	datab => \inst2|Add0~1_combout\,
	datac => \inst|y.t2~q\,
	datad => \inst|y.t1~q\,
	combout => \inst2|a~9_combout\);

-- Location: FF_X31_Y7_N29
\inst2|a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|a~9_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst2|a[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|a\(3));

-- Location: LCCOMB_X31_Y7_N22
\inst2|A1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|A1~0_combout\ = (!\inst2|a\(2) & (!\inst2|a\(0) & (\inst2|a\(3) & \inst2|a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|a\(2),
	datab => \inst2|a\(0),
	datac => \inst2|a\(3),
	datad => \inst2|a\(1),
	combout => \inst2|A1~0_combout\);

-- Location: LCCOMB_X32_Y9_N20
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

-- Location: FF_X32_Y9_N21
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
	sclr => \inst16|a[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|A1~q\);

-- Location: LCCOMB_X29_Y9_N10
\inst|y~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~52_combout\ = (\inst|y.t20~q\ & (((\inst16|a\(1) & \inst16|a\(0))) # (!\inst42|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|a\(1),
	datab => \inst|y.t20~q\,
	datac => \inst42|Mux0~0_combout\,
	datad => \inst16|a\(0),
	combout => \inst|y~52_combout\);

-- Location: FF_X29_Y9_N11
\inst|y.t22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~52_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t22~q\);

-- Location: LCCOMB_X32_Y9_N26
\inst|En_seg7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|En_seg7~0_combout\ = (!\inst|y.t23~q\ & !\inst|y.t24~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t23~q\,
	datad => \inst|y.t24~q\,
	combout => \inst|En_seg7~0_combout\);

-- Location: LCCOMB_X32_Y9_N10
\inst36|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|Add0~0_combout\ = \inst36|a\(0) $ (\inst36|a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst36|a\(0),
	datad => \inst36|a\(1),
	combout => \inst36|Add0~0_combout\);

-- Location: LCCOMB_X32_Y9_N28
\inst36|a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|a~2_combout\ = (!\inst|En_seg7~0_combout\ & (\inst36|Equal0~0_combout\ & (!\inst16|a[1]~2_combout\ & \inst36|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|En_seg7~0_combout\,
	datab => \inst36|Equal0~0_combout\,
	datac => \inst16|a[1]~2_combout\,
	datad => \inst36|Add0~0_combout\,
	combout => \inst36|a~2_combout\);

-- Location: FF_X32_Y9_N29
\inst36|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst36|a~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst36|a\(1));

-- Location: LCCOMB_X32_Y9_N16
\inst36|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|Equal0~0_combout\ = ((!\inst36|a\(1)) # (!\inst36|a\(0))) # (!\inst36|a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst36|a\(2),
	datac => \inst36|a\(0),
	datad => \inst36|a\(1),
	combout => \inst36|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y9_N14
\inst36|a~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|a~3_combout\ = (!\inst16|a[1]~2_combout\ & (!\inst|En_seg7~0_combout\ & (!\inst36|a\(0) & \inst36|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|a[1]~2_combout\,
	datab => \inst|En_seg7~0_combout\,
	datac => \inst36|a\(0),
	datad => \inst36|Equal0~0_combout\,
	combout => \inst36|a~3_combout\);

-- Location: FF_X32_Y9_N15
\inst36|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst36|a~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst36|a\(0));

-- Location: LCCOMB_X32_Y9_N8
\inst36|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|a~0_combout\ = (!\inst36|a\(1)) # (!\inst36|a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst36|a\(0),
	datad => \inst36|a\(1),
	combout => \inst36|a~0_combout\);

-- Location: LCCOMB_X32_Y9_N30
\inst36|a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|a~1_combout\ = (!\inst16|a[1]~2_combout\ & (!\inst|En_seg7~0_combout\ & (\inst36|a\(2) $ (!\inst36|a~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|a[1]~2_combout\,
	datab => \inst|En_seg7~0_combout\,
	datac => \inst36|a\(2),
	datad => \inst36|a~0_combout\,
	combout => \inst36|a~1_combout\);

-- Location: FF_X32_Y9_N31
\inst36|a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst36|a~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst36|a\(2));

-- Location: LCCOMB_X32_Y9_N18
\inst36|seg_7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|seg_7~4_combout\ = (\inst36|a\(2) & (\inst36|a\(0) & (!\inst|En_seg7~0_combout\ & \inst36|a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst36|a\(2),
	datab => \inst36|a\(0),
	datac => \inst|En_seg7~0_combout\,
	datad => \inst36|a\(1),
	combout => \inst36|seg_7~4_combout\);

-- Location: FF_X32_Y9_N19
\inst36|seg_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1s~inputclkctrl_outclk\,
	d => \inst36|seg_7~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst16|a[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst36|seg_7~q\);

-- Location: LCCOMB_X31_Y9_N30
\inst|y~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~43_combout\ = (\inst|y.t23~q\ & !\inst36|seg_7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.t23~q\,
	datad => \inst36|seg_7~q\,
	combout => \inst|y~43_combout\);

-- Location: FF_X31_Y9_N31
\inst|y.t24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~43_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t24~q\);

-- Location: LCCOMB_X32_Y9_N12
\inst|y~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~41_combout\ = (\inst|y.t22~q\) # (\inst|y.t24~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.t22~q\,
	datad => \inst|y.t24~q\,
	combout => \inst|y~41_combout\);

-- Location: FF_X32_Y9_N13
\inst|y.t23\ : dffeas
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
	q => \inst|y.t23~q\);

-- Location: LCCOMB_X32_Y9_N24
\inst|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~2_combout\ = (\inst2|A1~q\ & ((\inst|y.t26~q\) # ((\inst|y.t23~q\ & \inst36|seg_7~q\)))) # (!\inst2|A1~q\ & (((\inst|y.t23~q\ & \inst36|seg_7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|A1~q\,
	datab => \inst|y.t26~q\,
	datac => \inst|y.t23~q\,
	datad => \inst36|seg_7~q\,
	combout => \inst|Selector0~2_combout\);

-- Location: LCCOMB_X31_Y9_N4
\inst|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~3_combout\ = (\inst|Selector0~2_combout\) # ((\Start~input_o\ & ((\inst|y.t2~q\) # (!\inst|y.t1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \Start~input_o\,
	datac => \inst|y.t2~q\,
	datad => \inst|Selector0~2_combout\,
	combout => \inst|Selector0~3_combout\);

-- Location: FF_X31_Y9_N5
\inst|y.t2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Selector0~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t2~q\);

-- Location: LCCOMB_X31_Y9_N24
\inst16|a[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|a[1]~2_combout\ = (\inst|y.t2~q\) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.t2~q\,
	datad => \inst|y.t1~q\,
	combout => \inst16|a[1]~2_combout\);

-- Location: FF_X30_Y9_N31
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
	sclr => \inst16|a[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|seg_4~q\);

-- Location: LCCOMB_X30_Y9_N24
\inst|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector3~1_combout\ = (\inst34|seg_4~q\ & (\inst|Selector3~0_combout\ & ((\inst16|f~q\)))) # (!\inst34|seg_4~q\ & ((\inst|y.t5~q\) # ((\inst|Selector3~0_combout\ & \inst16|f~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|seg_4~q\,
	datab => \inst|Selector3~0_combout\,
	datac => \inst|y.t5~q\,
	datad => \inst16|f~q\,
	combout => \inst|Selector3~1_combout\);

-- Location: FF_X30_Y9_N25
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

-- Location: LCCOMB_X28_Y8_N14
\inst30|a[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|a[0]~6_combout\ = \inst30|a\(0) $ (VCC)
-- \inst30|a[0]~7\ = CARRY(\inst30|a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|a\(0),
	datad => VCC,
	combout => \inst30|a[0]~6_combout\,
	cout => \inst30|a[0]~7\);

-- Location: LCCOMB_X28_Y8_N8
\inst30|a[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|a[1]~18_combout\ = ((\inst|y.t5~q\) # (!\inst10|Q1~0_combout\)) # (!\inst30|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|Equal2~1_combout\,
	datab => \inst|y.t5~q\,
	datad => \inst10|Q1~0_combout\,
	combout => \inst30|a[1]~18_combout\);

-- Location: LCCOMB_X28_Y8_N2
\inst30|a[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|a[1]~19_combout\ = (\inst|y.t5~q\) # ((!\inst10|Q1~0_combout\) # (!\inst|WideOr24~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t5~q\,
	datac => \inst|WideOr24~combout\,
	datad => \inst10|Q1~0_combout\,
	combout => \inst30|a[1]~19_combout\);

-- Location: FF_X28_Y8_N15
\inst30|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst30|a[0]~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst30|a[1]~18_combout\,
	ena => \inst30|a[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|a\(0));

-- Location: LCCOMB_X28_Y8_N16
\inst30|a[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|a[1]~8_combout\ = (\inst30|a\(1) & (!\inst30|a[0]~7\)) # (!\inst30|a\(1) & ((\inst30|a[0]~7\) # (GND)))
-- \inst30|a[1]~9\ = CARRY((!\inst30|a[0]~7\) # (!\inst30|a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst30|a\(1),
	datad => VCC,
	cin => \inst30|a[0]~7\,
	combout => \inst30|a[1]~8_combout\,
	cout => \inst30|a[1]~9\);

-- Location: FF_X28_Y8_N17
\inst30|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst30|a[1]~8_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst30|a[1]~18_combout\,
	ena => \inst30|a[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|a\(1));

-- Location: LCCOMB_X28_Y8_N18
\inst30|a[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|a[2]~10_combout\ = (\inst30|a\(2) & (\inst30|a[1]~9\ $ (GND))) # (!\inst30|a\(2) & (!\inst30|a[1]~9\ & VCC))
-- \inst30|a[2]~11\ = CARRY((\inst30|a\(2) & !\inst30|a[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst30|a\(2),
	datad => VCC,
	cin => \inst30|a[1]~9\,
	combout => \inst30|a[2]~10_combout\,
	cout => \inst30|a[2]~11\);

-- Location: FF_X28_Y8_N19
\inst30|a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst30|a[2]~10_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst30|a[1]~18_combout\,
	ena => \inst30|a[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|a\(2));

-- Location: LCCOMB_X28_Y8_N20
\inst30|a[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|a[3]~12_combout\ = (\inst30|a\(3) & (!\inst30|a[2]~11\)) # (!\inst30|a\(3) & ((\inst30|a[2]~11\) # (GND)))
-- \inst30|a[3]~13\ = CARRY((!\inst30|a[2]~11\) # (!\inst30|a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst30|a\(3),
	datad => VCC,
	cin => \inst30|a[2]~11\,
	combout => \inst30|a[3]~12_combout\,
	cout => \inst30|a[3]~13\);

-- Location: FF_X28_Y8_N21
\inst30|a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst30|a[3]~12_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst30|a[1]~18_combout\,
	ena => \inst30|a[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|a\(3));

-- Location: LCCOMB_X28_Y8_N22
\inst30|a[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|a[4]~14_combout\ = (\inst30|a\(4) & (\inst30|a[3]~13\ $ (GND))) # (!\inst30|a\(4) & (!\inst30|a[3]~13\ & VCC))
-- \inst30|a[4]~15\ = CARRY((\inst30|a\(4) & !\inst30|a[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|a\(4),
	datad => VCC,
	cin => \inst30|a[3]~13\,
	combout => \inst30|a[4]~14_combout\,
	cout => \inst30|a[4]~15\);

-- Location: FF_X28_Y8_N23
\inst30|a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst30|a[4]~14_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst30|a[1]~18_combout\,
	ena => \inst30|a[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|a\(4));

-- Location: LCCOMB_X28_Y8_N24
\inst30|a[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|a[5]~16_combout\ = \inst30|a[4]~15\ $ (\inst30|a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst30|a\(5),
	cin => \inst30|a[4]~15\,
	combout => \inst30|a[5]~16_combout\);

-- Location: FF_X28_Y8_N25
\inst30|a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst30|a[5]~16_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sclr => \inst30|a[1]~18_combout\,
	ena => \inst30|a[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|a\(5));

-- Location: LCCOMB_X28_Y8_N12
\inst30|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Equal2~0_combout\ = ((\inst30|a\(2)) # ((\inst30|a\(3)) # (!\inst30|a\(4)))) # (!\inst30|a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|a\(5),
	datab => \inst30|a\(2),
	datac => \inst30|a\(4),
	datad => \inst30|a\(3),
	combout => \inst30|Equal2~0_combout\);

-- Location: LCCOMB_X28_Y8_N26
\inst30|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Equal2~1_combout\ = ((\inst30|a\(0)) # (\inst30|Equal2~0_combout\)) # (!\inst30|a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|a\(1),
	datac => \inst30|a\(0),
	datad => \inst30|Equal2~0_combout\,
	combout => \inst30|Equal2~1_combout\);

-- Location: LCCOMB_X28_Y8_N30
\inst30|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|S~0_combout\ = (!\inst30|a\(5) & (!\inst30|a\(2) & (!\inst30|a\(4) & !\inst30|a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|a\(5),
	datab => \inst30|a\(2),
	datac => \inst30|a\(4),
	datad => \inst30|a\(3),
	combout => \inst30|S~0_combout\);

-- Location: LCCOMB_X28_Y8_N0
\inst30|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|S~1_combout\ = (\inst30|S~0_combout\ & !\inst30|a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|S~0_combout\,
	datad => \inst30|a\(1),
	combout => \inst30|S~1_combout\);

-- Location: LCCOMB_X28_Y8_N10
\inst30|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|S~2_combout\ = (\inst|WideOr24~combout\ & (((\inst30|S~q\)))) # (!\inst|WideOr24~combout\ & ((\inst30|S~1_combout\) # ((!\inst30|Equal2~1_combout\ & \inst30|S~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|Equal2~1_combout\,
	datab => \inst30|S~1_combout\,
	datac => \inst|WideOr24~combout\,
	datad => \inst30|S~q\,
	combout => \inst30|S~2_combout\);

-- Location: LCCOMB_X28_Y8_N4
\inst30|S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|S~3_combout\ = (!\inst|y.t5~q\ & (\inst10|Q1~0_combout\ & \inst30|S~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t5~q\,
	datac => \inst10|Q1~0_combout\,
	datad => \inst30|S~2_combout\,
	combout => \inst30|S~3_combout\);

-- Location: FF_X28_Y8_N5
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

-- Location: LCCOMB_X30_Y8_N12
\inst|y~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~47_combout\ = (\inst30|S~q\ & (\inst|y.t7_1~q\ & ((\inst9|S0~2_combout\) # (\inst9|S0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|S~q\,
	datab => \inst|y.t7_1~q\,
	datac => \inst9|S0~2_combout\,
	datad => \inst9|S0~5_combout\,
	combout => \inst|y~47_combout\);

-- Location: FF_X30_Y8_N13
\inst|y.t8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|y~47_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t8~q\);

-- Location: LCCOMB_X30_Y8_N8
\inst|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~1_combout\ = (\inst30|S~q\ & (((\inst34|seg_4~q\ & \inst|y.t5~q\)))) # (!\inst30|S~q\ & ((\inst|y.t7_1~q\) # ((\inst34|seg_4~q\ & \inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|S~q\,
	datab => \inst|y.t7_1~q\,
	datac => \inst34|seg_4~q\,
	datad => \inst|y.t5~q\,
	combout => \inst|Selector4~1_combout\);

-- Location: LCCOMB_X29_Y8_N8
\inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (!\inst6~0_combout\ & (\inst|y.t6~q\ & !\inst32|seg_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6~0_combout\,
	datac => \inst|y.t6~q\,
	datad => \inst32|seg_2~q\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCCOMB_X30_Y8_N26
\inst|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~2_combout\ = (\inst|y.t8~q\) # ((\inst|y.t9~q\) # ((\inst|Selector4~1_combout\) # (\inst|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t8~q\,
	datab => \inst|y.t9~q\,
	datac => \inst|Selector4~1_combout\,
	datad => \inst|Selector4~0_combout\,
	combout => \inst|Selector4~2_combout\);

-- Location: FF_X30_Y8_N27
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

-- Location: LCCOMB_X29_Y8_N6
\inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (\inst6~0_combout\ & (!\inst32|seg_2~q\ & ((\inst|y.t6~q\) # (\inst|y.t6_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t6~q\,
	datab => \inst6~0_combout\,
	datac => \inst|y.t6_1~q\,
	datad => \inst32|seg_2~q\,
	combout => \inst|Selector5~0_combout\);

-- Location: FF_X29_Y8_N7
\inst|y.t6_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Selector5~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t6_1~q\);

-- Location: LCCOMB_X30_Y8_N22
\inst|y~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~40_combout\ = (\inst|y.t6_1~q\ & !\inst6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.t6_1~q\,
	datad => \inst6~0_combout\,
	combout => \inst|y~40_combout\);

-- Location: FF_X30_Y8_N23
\inst|y.t7\ : dffeas
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
	q => \inst|y.t7~q\);

-- Location: LCCOMB_X30_Y8_N20
\inst|WideOr24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr24~combout\ = (!\inst|y.t7~q\ & (!\inst|y.t6_1~q\ & \inst|WideOr24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t7~q\,
	datac => \inst|y.t6_1~q\,
	datad => \inst|WideOr24~0_combout\,
	combout => \inst|WideOr24~combout\);

-- Location: LCCOMB_X30_Y10_N6
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

-- Location: LCCOMB_X30_Y10_N28
\inst18|Q1[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Q1[4]~18_combout\ = ((\inst|y.t2~q\) # ((\inst|y.t21~q\) # (\inst|y.t22~q\))) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst|y.t2~q\,
	datac => \inst|y.t21~q\,
	datad => \inst|y.t22~q\,
	combout => \inst18|Q1[4]~18_combout\);

-- Location: FF_X30_Y10_N7
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
	sclr => \inst16|a[1]~2_combout\,
	ena => \inst18|Q1[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Q1\(0));

-- Location: LCCOMB_X30_Y10_N8
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

-- Location: FF_X30_Y10_N9
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
	sclr => \inst16|a[1]~2_combout\,
	ena => \inst18|Q1[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Q1\(1));

-- Location: LCCOMB_X30_Y10_N10
\inst18|Q1[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Q1[2]~10_combout\ = ((\inst18|Q1\(2) $ (\inst10|Q1\(2) $ (!\inst18|Q1[1]~9\)))) # (GND)
-- \inst18|Q1[2]~11\ = CARRY((\inst18|Q1\(2) & ((\inst10|Q1\(2)) # (!\inst18|Q1[1]~9\))) # (!\inst18|Q1\(2) & (\inst10|Q1\(2) & !\inst18|Q1[1]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Q1\(2),
	datab => \inst10|Q1\(2),
	datad => VCC,
	cin => \inst18|Q1[1]~9\,
	combout => \inst18|Q1[2]~10_combout\,
	cout => \inst18|Q1[2]~11\);

-- Location: FF_X30_Y10_N11
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
	sclr => \inst16|a[1]~2_combout\,
	ena => \inst18|Q1[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Q1\(2));

-- Location: LCCOMB_X30_Y6_N22
\inst44|S0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S0~4_combout\ = (\inst|y.t1~q\ & (\inst18|Q1\(2) & !\inst|y.t2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t1~q\,
	datac => \inst18|Q1\(2),
	datad => \inst|y.t2~q\,
	combout => \inst44|S0~4_combout\);

-- Location: LCCOMB_X31_Y6_N28
\inst44|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Add0~0_combout\ = \inst44|cont\(3) $ (((\inst44|cont\(2) & (\inst44|cont\(1) & \inst44|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|cont\(2),
	datab => \inst44|cont\(1),
	datac => \inst44|cont\(0),
	datad => \inst44|cont\(3),
	combout => \inst44|Add0~0_combout\);

-- Location: LCCOMB_X31_Y6_N2
\inst44|cont[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|cont[3]~5_combout\ = ((\inst44|cont\(3) & ((\inst44|cont\(2)) # (\inst44|cont\(1))))) # (!\inst|y.t24~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|cont\(2),
	datab => \inst44|cont\(1),
	datac => \inst|y.t24~q\,
	datad => \inst44|cont\(3),
	combout => \inst44|cont[3]~5_combout\);

-- Location: LCCOMB_X31_Y6_N18
\inst44|cont[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|cont[3]~10_combout\ = (\inst|y.t2~q\) # ((!\inst44|cont[3]~5_combout\) # (!\inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datab => \inst|y.t1~q\,
	datad => \inst44|cont[3]~5_combout\,
	combout => \inst44|cont[3]~10_combout\);

-- Location: LCCOMB_X31_Y6_N24
\inst44|cont[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|cont[3]~7_combout\ = (\inst44|cont[3]~10_combout\ & (\inst44|Add0~0_combout\ & ((\inst44|cont[3]~9_combout\)))) # (!\inst44|cont[3]~10_combout\ & (((\inst44|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|Add0~0_combout\,
	datab => \inst44|cont[3]~10_combout\,
	datac => \inst44|cont\(3),
	datad => \inst44|cont[3]~9_combout\,
	combout => \inst44|cont[3]~7_combout\);

-- Location: FF_X31_Y6_N25
\inst44|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|cont[3]~7_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|cont\(3));

-- Location: LCCOMB_X32_Y6_N24
\inst44|cont[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|cont[3]~9_combout\ = (\inst|y.t1~q\ & (!\inst|y.t2~q\ & ((\inst44|Equal0~4_combout\) # (!\inst44|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst44|cont\(3),
	datac => \inst44|Equal0~4_combout\,
	datad => \inst|y.t2~q\,
	combout => \inst44|cont[3]~9_combout\);

-- Location: LCCOMB_X31_Y6_N20
\inst44|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|cont~4_combout\ = (\inst44|cont[3]~9_combout\ & (\inst44|cont\(0) $ (\inst44|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|cont\(0),
	datac => \inst44|cont\(1),
	datad => \inst44|cont[3]~9_combout\,
	combout => \inst44|cont~4_combout\);

-- Location: FF_X31_Y6_N21
\inst44|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|cont~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|cont[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|cont\(1));

-- Location: LCCOMB_X31_Y6_N30
\inst44|cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|cont~6_combout\ = (\inst44|cont[3]~9_combout\ & (\inst44|cont\(2) $ (((\inst44|cont\(0) & \inst44|cont\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|cont\(0),
	datab => \inst44|cont\(1),
	datac => \inst44|cont\(2),
	datad => \inst44|cont[3]~9_combout\,
	combout => \inst44|cont~6_combout\);

-- Location: FF_X31_Y6_N31
\inst44|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|cont~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|cont[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|cont\(2));

-- Location: LCCOMB_X31_Y6_N26
\inst44|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Equal0~4_combout\ = (!\inst44|cont\(2) & (!\inst44|cont\(1) & (!\inst44|cont\(0) & \inst44|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|cont\(2),
	datab => \inst44|cont\(1),
	datac => \inst44|cont\(0),
	datad => \inst44|cont\(3),
	combout => \inst44|Equal0~4_combout\);

-- Location: LCCOMB_X31_Y6_N6
\inst44|cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|cont~8_combout\ = (!\inst16|a[1]~2_combout\ & (!\inst44|cont\(0) & ((\inst44|Equal0~4_combout\) # (!\inst44|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|Equal0~4_combout\,
	datab => \inst16|a[1]~2_combout\,
	datac => \inst44|cont\(0),
	datad => \inst44|cont\(3),
	combout => \inst44|cont~8_combout\);

-- Location: FF_X31_Y6_N7
\inst44|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|cont~8_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|cont[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|cont\(0));

-- Location: LCCOMB_X31_Y6_N12
\inst44|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Equal0~9_combout\ = (\inst44|cont\(0) & (!\inst44|cont\(1) & (!\inst44|cont\(2) & \inst44|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|cont\(0),
	datab => \inst44|cont\(1),
	datac => \inst44|cont\(2),
	datad => \inst44|cont\(3),
	combout => \inst44|Equal0~9_combout\);

-- Location: LCCOMB_X30_Y6_N2
\inst44|S9[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S9[1]~2_combout\ = ((\inst|y.t2~q\) # ((\inst44|Equal0~9_combout\ & \inst|y.t24~q\))) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst|y.t2~q\,
	datac => \inst44|Equal0~9_combout\,
	datad => \inst|y.t24~q\,
	combout => \inst44|S9[1]~2_combout\);

-- Location: FF_X30_Y6_N23
\inst44|S9[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S0~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S9[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S9\(2));

-- Location: LCCOMB_X31_Y5_N12
\inst44|S6[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S6[2]~feeder_combout\ = \inst44|S0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst44|S0~4_combout\,
	combout => \inst44|S6[2]~feeder_combout\);

-- Location: LCCOMB_X31_Y6_N8
\inst44|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Equal0~0_combout\ = (!\inst44|cont\(0) & (!\inst44|cont\(3) & (\inst44|cont\(2) & \inst44|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|cont\(0),
	datab => \inst44|cont\(3),
	datac => \inst44|cont\(2),
	datad => \inst44|cont\(1),
	combout => \inst44|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y5_N24
\inst44|S6[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S6[3]~2_combout\ = (\inst|y.t2~q\) # (((\inst|y.t24~q\ & \inst44|Equal0~0_combout\)) # (!\inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datab => \inst|y.t1~q\,
	datac => \inst|y.t24~q\,
	datad => \inst44|Equal0~0_combout\,
	combout => \inst44|S6[3]~2_combout\);

-- Location: FF_X31_Y5_N13
\inst44|S6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S6[2]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S6[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S6\(2));

-- Location: LCCOMB_X30_Y6_N26
\inst44|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Equal0~3_combout\ = (\inst44|cont\(0) & (\inst44|cont\(2) & (\inst44|cont\(1) & !\inst44|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|cont\(0),
	datab => \inst44|cont\(2),
	datac => \inst44|cont\(1),
	datad => \inst44|cont\(3),
	combout => \inst44|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y6_N24
\inst44|S7[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S7[5]~2_combout\ = (\inst|y.t2~q\) # (((\inst44|Equal0~3_combout\ & \inst|y.t24~q\)) # (!\inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|Equal0~3_combout\,
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst|y.t24~q\,
	combout => \inst44|S7[5]~2_combout\);

-- Location: FF_X30_Y6_N1
\inst44|S7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S7[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S7\(2));

-- Location: LCCOMB_X31_Y6_N4
\inst44|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Equal0~2_combout\ = (!\inst44|cont\(0) & (!\inst44|cont\(1) & (\inst44|cont\(2) & !\inst44|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|cont\(0),
	datab => \inst44|cont\(1),
	datac => \inst44|cont\(2),
	datad => \inst44|cont\(3),
	combout => \inst44|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y6_N2
\inst44|S4[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S4[1]~2_combout\ = ((\inst|y.t2~q\) # ((\inst44|Equal0~2_combout\ & \inst|y.t24~q\))) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst|y.t2~q\,
	datac => \inst44|Equal0~2_combout\,
	datad => \inst|y.t24~q\,
	combout => \inst44|S4[1]~2_combout\);

-- Location: FF_X32_Y6_N27
\inst44|S4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S4[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S4\(2));

-- Location: LCCOMB_X32_Y6_N12
\inst44|S5[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S5[2]~feeder_combout\ = \inst44|S0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst44|S0~4_combout\,
	combout => \inst44|S5[2]~feeder_combout\);

-- Location: LCCOMB_X31_Y6_N14
\inst44|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Equal0~1_combout\ = (\inst44|cont\(0) & (!\inst44|cont\(1) & (\inst44|cont\(2) & !\inst44|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|cont\(0),
	datab => \inst44|cont\(1),
	datac => \inst44|cont\(2),
	datad => \inst44|cont\(3),
	combout => \inst44|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y6_N4
\inst44|S5[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S5[0]~2_combout\ = (\inst|y.t2~q\) # (((\inst44|Equal0~1_combout\ & \inst|y.t24~q\)) # (!\inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|Equal0~1_combout\,
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst|y.t24~q\,
	combout => \inst44|S5[0]~2_combout\);

-- Location: FF_X32_Y6_N13
\inst44|S5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S5[2]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S5[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S5\(2));

-- Location: LCCOMB_X32_Y6_N26
\inst1|B[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[2]~18_combout\ = (\inst2|a\(1) & (\inst2|a\(0))) # (!\inst2|a\(1) & ((\inst2|a\(0) & ((\inst44|S5\(2)))) # (!\inst2|a\(0) & (\inst44|S4\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|a\(1),
	datab => \inst2|a\(0),
	datac => \inst44|S4\(2),
	datad => \inst44|S5\(2),
	combout => \inst1|B[2]~18_combout\);

-- Location: LCCOMB_X30_Y6_N0
\inst1|B[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[2]~19_combout\ = (\inst2|a\(1) & ((\inst1|B[2]~18_combout\ & ((\inst44|S7\(2)))) # (!\inst1|B[2]~18_combout\ & (\inst44|S6\(2))))) # (!\inst2|a\(1) & (((\inst1|B[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S6\(2),
	datab => \inst2|a\(1),
	datac => \inst44|S7\(2),
	datad => \inst1|B[2]~18_combout\,
	combout => \inst1|B[2]~19_combout\);

-- Location: LCCOMB_X30_Y7_N20
\inst1|B[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[0]~3_combout\ = (\inst2|a\(3) & (\inst2|a\(0))) # (!\inst2|a\(3) & ((\inst2|a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|a\(0),
	datac => \inst2|a\(3),
	datad => \inst2|a\(2),
	combout => \inst1|B[0]~3_combout\);

-- Location: LCCOMB_X31_Y5_N14
\inst44|S1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S1[2]~feeder_combout\ = \inst44|S0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst44|S0~4_combout\,
	combout => \inst44|S1[2]~feeder_combout\);

-- Location: LCCOMB_X31_Y6_N0
\inst44|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Equal0~5_combout\ = (\inst44|cont\(0) & (!\inst44|cont\(1) & (!\inst44|cont\(2) & !\inst44|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|cont\(0),
	datab => \inst44|cont\(1),
	datac => \inst44|cont\(2),
	datad => \inst44|cont\(3),
	combout => \inst44|Equal0~5_combout\);

-- Location: LCCOMB_X31_Y5_N18
\inst44|S1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S1[2]~2_combout\ = (\inst|y.t2~q\) # (((\inst|y.t24~q\ & \inst44|Equal0~5_combout\)) # (!\inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datab => \inst|y.t1~q\,
	datac => \inst|y.t24~q\,
	datad => \inst44|Equal0~5_combout\,
	combout => \inst44|S1[2]~2_combout\);

-- Location: FF_X31_Y5_N15
\inst44|S1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S1[2]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S1\(2));

-- Location: LCCOMB_X31_Y7_N14
\inst44|S2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S2[2]~feeder_combout\ = \inst44|S0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst44|S0~4_combout\,
	combout => \inst44|S2[2]~feeder_combout\);

-- Location: LCCOMB_X31_Y6_N10
\inst44|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Equal0~6_combout\ = (!\inst44|cont\(0) & (!\inst44|cont\(3) & (!\inst44|cont\(2) & \inst44|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|cont\(0),
	datab => \inst44|cont\(3),
	datac => \inst44|cont\(2),
	datad => \inst44|cont\(1),
	combout => \inst44|Equal0~6_combout\);

-- Location: LCCOMB_X31_Y7_N2
\inst44|S2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S2[2]~2_combout\ = (\inst|y.t2~q\) # (((\inst|y.t24~q\ & \inst44|Equal0~6_combout\)) # (!\inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datab => \inst|y.t1~q\,
	datac => \inst|y.t24~q\,
	datad => \inst44|Equal0~6_combout\,
	combout => \inst44|S2[2]~2_combout\);

-- Location: FF_X31_Y7_N15
\inst44|S2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S2[2]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S2[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S2\(2));

-- Location: LCCOMB_X31_Y6_N16
\inst44|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Equal0~7_combout\ = (!\inst44|cont\(0) & (!\inst44|cont\(3) & (!\inst44|cont\(2) & !\inst44|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|cont\(0),
	datab => \inst44|cont\(3),
	datac => \inst44|cont\(2),
	datad => \inst44|cont\(1),
	combout => \inst44|Equal0~7_combout\);

-- Location: LCCOMB_X30_Y5_N18
\inst44|S0[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S0[0]~8_combout\ = (\inst|y.t2~q\) # (((\inst44|Equal0~7_combout\ & \inst|y.t24~q\)) # (!\inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|Equal0~7_combout\,
	datab => \inst|y.t2~q\,
	datac => \inst|y.t24~q\,
	datad => \inst|y.t1~q\,
	combout => \inst44|S0[0]~8_combout\);

-- Location: FF_X30_Y5_N31
\inst44|S0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S0[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S0\(2));

-- Location: LCCOMB_X30_Y5_N30
\inst1|B[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[2]~20_combout\ = (\inst2|a\(0) & (((\inst2|a\(1))))) # (!\inst2|a\(0) & ((\inst2|a\(1) & (\inst44|S2\(2))) # (!\inst2|a\(1) & ((\inst44|S0\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S2\(2),
	datab => \inst2|a\(0),
	datac => \inst44|S0\(2),
	datad => \inst2|a\(1),
	combout => \inst1|B[2]~20_combout\);

-- Location: LCCOMB_X31_Y6_N22
\inst44|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Equal0~8_combout\ = (!\inst44|cont\(2) & (\inst44|cont\(1) & (\inst44|cont\(0) & !\inst44|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|cont\(2),
	datab => \inst44|cont\(1),
	datac => \inst44|cont\(0),
	datad => \inst44|cont\(3),
	combout => \inst44|Equal0~8_combout\);

-- Location: LCCOMB_X29_Y6_N14
\inst44|S3[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S3[1]~2_combout\ = ((\inst|y.t2~q\) # ((\inst44|Equal0~8_combout\ & \inst|y.t24~q\))) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst|y.t2~q\,
	datac => \inst44|Equal0~8_combout\,
	datad => \inst|y.t24~q\,
	combout => \inst44|S3[1]~2_combout\);

-- Location: FF_X29_Y6_N25
\inst44|S3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S3[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S3\(2));

-- Location: LCCOMB_X29_Y6_N24
\inst1|B[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[2]~21_combout\ = (\inst1|B[2]~20_combout\ & (((\inst44|S3\(2)) # (!\inst2|a\(0))))) # (!\inst1|B[2]~20_combout\ & (\inst44|S1\(2) & ((\inst2|a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S1\(2),
	datab => \inst1|B[2]~20_combout\,
	datac => \inst44|S3\(2),
	datad => \inst2|a\(0),
	combout => \inst1|B[2]~21_combout\);

-- Location: LCCOMB_X29_Y6_N28
\inst44|S8[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S8[0]~2_combout\ = ((\inst|y.t2~q\) # ((\inst44|Equal0~4_combout\ & \inst|y.t24~q\))) # (!\inst|y.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t1~q\,
	datab => \inst|y.t2~q\,
	datac => \inst44|Equal0~4_combout\,
	datad => \inst|y.t24~q\,
	combout => \inst44|S8[0]~2_combout\);

-- Location: FF_X29_Y6_N3
\inst44|S8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S8\(2));

-- Location: LCCOMB_X29_Y6_N2
\inst1|B[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[2]~22_combout\ = (\inst1|B[0]~3_combout\ & (((\inst2|a\(3))))) # (!\inst1|B[0]~3_combout\ & ((\inst2|a\(3) & ((\inst44|S8\(2)))) # (!\inst2|a\(3) & (\inst1|B[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[0]~3_combout\,
	datab => \inst1|B[2]~21_combout\,
	datac => \inst44|S8\(2),
	datad => \inst2|a\(3),
	combout => \inst1|B[2]~22_combout\);

-- Location: LCCOMB_X30_Y7_N22
\inst1|B[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[2]~23_combout\ = (\inst1|B[2]~22_combout\ & ((\inst44|S9\(2)) # ((!\inst1|B[0]~3_combout\)))) # (!\inst1|B[2]~22_combout\ & (((\inst1|B[2]~19_combout\ & \inst1|B[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S9\(2),
	datab => \inst1|B[2]~19_combout\,
	datac => \inst1|B[2]~22_combout\,
	datad => \inst1|B[0]~3_combout\,
	combout => \inst1|B[2]~23_combout\);

-- Location: LCCOMB_X32_Y9_N22
\inst|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|S1~0_combout\ = (!\inst|y.t22~q\ & !\inst|y.t23~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.t22~q\,
	datad => \inst|y.t23~q\,
	combout => \inst|S1~0_combout\);

-- Location: LCCOMB_X31_Y7_N18
\inst1|B[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[0]~0_combout\ = (!\inst|S1~0_combout\ & (((!\inst2|a\(2) & !\inst2|a\(1))) # (!\inst2|a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|a\(2),
	datab => \inst2|a\(3),
	datac => \inst|S1~0_combout\,
	datad => \inst2|a\(1),
	combout => \inst1|B[0]~0_combout\);

-- Location: LCCOMB_X30_Y10_N4
\inst1|B[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[2]~24_combout\ = (\inst|y.t25~q\ & (\inst18|Q1\(2))) # (!\inst|y.t25~q\ & ((\inst|y.t26~q\ & (\inst18|Q1\(2))) # (!\inst|y.t26~q\ & ((\inst10|Q1\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Q1\(2),
	datab => \inst10|Q1\(2),
	datac => \inst|y.t25~q\,
	datad => \inst|y.t26~q\,
	combout => \inst1|B[2]~24_combout\);

-- Location: LCCOMB_X30_Y7_N28
\inst1|B[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[2]~25_combout\ = (\inst1|B[2]~23_combout\ & ((\inst1|B[0]~0_combout\) # ((\inst1|B[2]~24_combout\ & \inst|S1~0_combout\)))) # (!\inst1|B[2]~23_combout\ & (((\inst1|B[2]~24_combout\ & \inst|S1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[2]~23_combout\,
	datab => \inst1|B[0]~0_combout\,
	datac => \inst1|B[2]~24_combout\,
	datad => \inst|S1~0_combout\,
	combout => \inst1|B[2]~25_combout\);

-- Location: LCCOMB_X30_Y10_N12
\inst18|Q1[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Q1[3]~12_combout\ = (\inst18|Q1\(3) & ((\inst10|Q1\(3) & (\inst18|Q1[2]~11\ & VCC)) # (!\inst10|Q1\(3) & (!\inst18|Q1[2]~11\)))) # (!\inst18|Q1\(3) & ((\inst10|Q1\(3) & (!\inst18|Q1[2]~11\)) # (!\inst10|Q1\(3) & ((\inst18|Q1[2]~11\) # (GND)))))
-- \inst18|Q1[3]~13\ = CARRY((\inst18|Q1\(3) & (!\inst10|Q1\(3) & !\inst18|Q1[2]~11\)) # (!\inst18|Q1\(3) & ((!\inst18|Q1[2]~11\) # (!\inst10|Q1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Q1\(3),
	datab => \inst10|Q1\(3),
	datad => VCC,
	cin => \inst18|Q1[2]~11\,
	combout => \inst18|Q1[3]~12_combout\,
	cout => \inst18|Q1[3]~13\);

-- Location: FF_X30_Y10_N13
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
	sclr => \inst16|a[1]~2_combout\,
	ena => \inst18|Q1[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Q1\(3));

-- Location: LCCOMB_X30_Y6_N6
\inst44|S0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S0~3_combout\ = (\inst|y.t1~q\ & (\inst18|Q1\(3) & !\inst|y.t2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t1~q\,
	datac => \inst18|Q1\(3),
	datad => \inst|y.t2~q\,
	combout => \inst44|S0~3_combout\);

-- Location: FF_X30_Y6_N7
\inst44|S9[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S0~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S9[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S9\(3));

-- Location: LCCOMB_X31_Y5_N28
\inst44|S6[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S6[3]~feeder_combout\ = \inst44|S0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst44|S0~3_combout\,
	combout => \inst44|S6[3]~feeder_combout\);

-- Location: FF_X31_Y5_N29
\inst44|S6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S6[3]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S6[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S6\(3));

-- Location: FF_X30_Y6_N29
\inst44|S7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S7[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S7\(3));

-- Location: LCCOMB_X32_Y6_N0
\inst44|S5[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S5[3]~feeder_combout\ = \inst44|S0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst44|S0~3_combout\,
	combout => \inst44|S5[3]~feeder_combout\);

-- Location: FF_X32_Y6_N1
\inst44|S5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S5[3]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S5[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S5\(3));

-- Location: FF_X32_Y6_N23
\inst44|S4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S4[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S4\(3));

-- Location: LCCOMB_X32_Y6_N22
\inst1|B[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[3]~10_combout\ = (\inst2|a\(1) & (((\inst2|a\(0))))) # (!\inst2|a\(1) & ((\inst2|a\(0) & (\inst44|S5\(3))) # (!\inst2|a\(0) & ((\inst44|S4\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|a\(1),
	datab => \inst44|S5\(3),
	datac => \inst44|S4\(3),
	datad => \inst2|a\(0),
	combout => \inst1|B[3]~10_combout\);

-- Location: LCCOMB_X30_Y6_N28
\inst1|B[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[3]~11_combout\ = (\inst2|a\(1) & ((\inst1|B[3]~10_combout\ & ((\inst44|S7\(3)))) # (!\inst1|B[3]~10_combout\ & (\inst44|S6\(3))))) # (!\inst2|a\(1) & (((\inst1|B[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S6\(3),
	datab => \inst2|a\(1),
	datac => \inst44|S7\(3),
	datad => \inst1|B[3]~10_combout\,
	combout => \inst1|B[3]~11_combout\);

-- Location: LCCOMB_X31_Y5_N10
\inst44|S1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S1[3]~feeder_combout\ = \inst44|S0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst44|S0~3_combout\,
	combout => \inst44|S1[3]~feeder_combout\);

-- Location: FF_X31_Y5_N11
\inst44|S1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S1[3]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S1\(3));

-- Location: LCCOMB_X31_Y7_N12
\inst44|S2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S2[3]~feeder_combout\ = \inst44|S0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst44|S0~3_combout\,
	combout => \inst44|S2[3]~feeder_combout\);

-- Location: FF_X31_Y7_N13
\inst44|S2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S2[3]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S2[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S2\(3));

-- Location: FF_X30_Y5_N25
\inst44|S0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S0[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S0\(3));

-- Location: LCCOMB_X30_Y5_N24
\inst1|B[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[3]~12_combout\ = (\inst2|a\(0) & (((\inst2|a\(1))))) # (!\inst2|a\(0) & ((\inst2|a\(1) & (\inst44|S2\(3))) # (!\inst2|a\(1) & ((\inst44|S0\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S2\(3),
	datab => \inst2|a\(0),
	datac => \inst44|S0\(3),
	datad => \inst2|a\(1),
	combout => \inst1|B[3]~12_combout\);

-- Location: FF_X29_Y6_N31
\inst44|S3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S3[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S3\(3));

-- Location: LCCOMB_X29_Y6_N30
\inst1|B[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[3]~13_combout\ = (\inst1|B[3]~12_combout\ & (((\inst44|S3\(3)) # (!\inst2|a\(0))))) # (!\inst1|B[3]~12_combout\ & (\inst44|S1\(3) & ((\inst2|a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S1\(3),
	datab => \inst1|B[3]~12_combout\,
	datac => \inst44|S3\(3),
	datad => \inst2|a\(0),
	combout => \inst1|B[3]~13_combout\);

-- Location: LCCOMB_X29_Y6_N16
\inst1|B[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[3]~14_combout\ = (\inst1|B[0]~3_combout\ & ((\inst1|B[3]~11_combout\) # ((\inst2|a\(3))))) # (!\inst1|B[0]~3_combout\ & (((\inst1|B[3]~13_combout\ & !\inst2|a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[0]~3_combout\,
	datab => \inst1|B[3]~11_combout\,
	datac => \inst1|B[3]~13_combout\,
	datad => \inst2|a\(3),
	combout => \inst1|B[3]~14_combout\);

-- Location: FF_X29_Y6_N21
\inst44|S8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S8\(3));

-- Location: LCCOMB_X29_Y6_N20
\inst1|B[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[3]~15_combout\ = (\inst1|B[3]~14_combout\ & ((\inst44|S9\(3)) # ((!\inst2|a\(3))))) # (!\inst1|B[3]~14_combout\ & (((\inst44|S8\(3) & \inst2|a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S9\(3),
	datab => \inst1|B[3]~14_combout\,
	datac => \inst44|S8\(3),
	datad => \inst2|a\(3),
	combout => \inst1|B[3]~15_combout\);

-- Location: LCCOMB_X30_Y10_N26
\inst1|B[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[3]~16_combout\ = (\inst|y.t25~q\ & (\inst18|Q1\(3))) # (!\inst|y.t25~q\ & ((\inst|y.t26~q\ & (\inst18|Q1\(3))) # (!\inst|y.t26~q\ & ((\inst10|Q1\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Q1\(3),
	datab => \inst10|Q1\(3),
	datac => \inst|y.t25~q\,
	datad => \inst|y.t26~q\,
	combout => \inst1|B[3]~16_combout\);

-- Location: LCCOMB_X30_Y7_N8
\inst1|B[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[3]~17_combout\ = (\inst1|B[3]~15_combout\ & ((\inst1|B[0]~0_combout\) # ((\inst1|B[3]~16_combout\ & \inst|S1~0_combout\)))) # (!\inst1|B[3]~15_combout\ & (((\inst1|B[3]~16_combout\ & \inst|S1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[3]~15_combout\,
	datab => \inst1|B[0]~0_combout\,
	datac => \inst1|B[3]~16_combout\,
	datad => \inst|S1~0_combout\,
	combout => \inst1|B[3]~17_combout\);

-- Location: LCCOMB_X30_Y10_N14
\inst18|Q1[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Q1[4]~14_combout\ = ((\inst10|Q1\(4) $ (\inst18|Q1\(4) $ (!\inst18|Q1[3]~13\)))) # (GND)
-- \inst18|Q1[4]~15\ = CARRY((\inst10|Q1\(4) & ((\inst18|Q1\(4)) # (!\inst18|Q1[3]~13\))) # (!\inst10|Q1\(4) & (\inst18|Q1\(4) & !\inst18|Q1[3]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(4),
	datab => \inst18|Q1\(4),
	datad => VCC,
	cin => \inst18|Q1[3]~13\,
	combout => \inst18|Q1[4]~14_combout\,
	cout => \inst18|Q1[4]~15\);

-- Location: FF_X30_Y10_N15
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
	sclr => \inst16|a[1]~2_combout\,
	ena => \inst18|Q1[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Q1\(4));

-- Location: LCCOMB_X30_Y6_N14
\inst44|S0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S0~5_combout\ = (!\inst|y.t2~q\ & (\inst18|Q1\(4) & \inst|y.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst18|Q1\(4),
	datad => \inst|y.t1~q\,
	combout => \inst44|S0~5_combout\);

-- Location: FF_X30_Y6_N15
\inst44|S9[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S0~5_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S9[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S9\(4));

-- Location: LCCOMB_X31_Y5_N8
\inst44|S6[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S6[4]~feeder_combout\ = \inst44|S0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst44|S0~5_combout\,
	combout => \inst44|S6[4]~feeder_combout\);

-- Location: FF_X31_Y5_N9
\inst44|S6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S6[4]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S6[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S6\(4));

-- Location: FF_X30_Y6_N5
\inst44|S7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~5_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S7[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S7\(4));

-- Location: LCCOMB_X32_Y6_N16
\inst44|S5[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S5[4]~feeder_combout\ = \inst44|S0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst44|S0~5_combout\,
	combout => \inst44|S5[4]~feeder_combout\);

-- Location: FF_X32_Y6_N17
\inst44|S5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S5[4]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S5[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S5\(4));

-- Location: FF_X32_Y6_N7
\inst44|S4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~5_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S4[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S4\(4));

-- Location: LCCOMB_X32_Y6_N6
\inst1|B[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[4]~26_combout\ = (\inst2|a\(1) & (((\inst2|a\(0))))) # (!\inst2|a\(1) & ((\inst2|a\(0) & (\inst44|S5\(4))) # (!\inst2|a\(0) & ((\inst44|S4\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|a\(1),
	datab => \inst44|S5\(4),
	datac => \inst44|S4\(4),
	datad => \inst2|a\(0),
	combout => \inst1|B[4]~26_combout\);

-- Location: LCCOMB_X30_Y6_N4
\inst1|B[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[4]~27_combout\ = (\inst2|a\(1) & ((\inst1|B[4]~26_combout\ & ((\inst44|S7\(4)))) # (!\inst1|B[4]~26_combout\ & (\inst44|S6\(4))))) # (!\inst2|a\(1) & (((\inst1|B[4]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S6\(4),
	datab => \inst2|a\(1),
	datac => \inst44|S7\(4),
	datad => \inst1|B[4]~26_combout\,
	combout => \inst1|B[4]~27_combout\);

-- Location: LCCOMB_X31_Y5_N30
\inst44|S1[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S1[4]~feeder_combout\ = \inst44|S0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst44|S0~5_combout\,
	combout => \inst44|S1[4]~feeder_combout\);

-- Location: FF_X31_Y5_N31
\inst44|S1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S1[4]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S1\(4));

-- Location: LCCOMB_X31_Y7_N20
\inst44|S2[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S2[4]~feeder_combout\ = \inst44|S0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst44|S0~5_combout\,
	combout => \inst44|S2[4]~feeder_combout\);

-- Location: FF_X31_Y7_N21
\inst44|S2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S2[4]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S2[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S2\(4));

-- Location: FF_X30_Y5_N1
\inst44|S0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~5_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S0[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S0\(4));

-- Location: LCCOMB_X30_Y5_N0
\inst1|B[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[4]~28_combout\ = (\inst2|a\(0) & (((\inst2|a\(1))))) # (!\inst2|a\(0) & ((\inst2|a\(1) & (\inst44|S2\(4))) # (!\inst2|a\(1) & ((\inst44|S0\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S2\(4),
	datab => \inst2|a\(0),
	datac => \inst44|S0\(4),
	datad => \inst2|a\(1),
	combout => \inst1|B[4]~28_combout\);

-- Location: FF_X29_Y6_N5
\inst44|S3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~5_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S3[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S3\(4));

-- Location: LCCOMB_X29_Y6_N4
\inst1|B[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[4]~29_combout\ = (\inst1|B[4]~28_combout\ & (((\inst44|S3\(4)) # (!\inst2|a\(0))))) # (!\inst1|B[4]~28_combout\ & (\inst44|S1\(4) & ((\inst2|a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S1\(4),
	datab => \inst1|B[4]~28_combout\,
	datac => \inst44|S3\(4),
	datad => \inst2|a\(0),
	combout => \inst1|B[4]~29_combout\);

-- Location: FF_X29_Y6_N19
\inst44|S8[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~5_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S8\(4));

-- Location: LCCOMB_X29_Y6_N18
\inst1|B[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[4]~30_combout\ = (\inst1|B[0]~3_combout\ & (((\inst2|a\(3))))) # (!\inst1|B[0]~3_combout\ & ((\inst2|a\(3) & ((\inst44|S8\(4)))) # (!\inst2|a\(3) & (\inst1|B[4]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[0]~3_combout\,
	datab => \inst1|B[4]~29_combout\,
	datac => \inst44|S8\(4),
	datad => \inst2|a\(3),
	combout => \inst1|B[4]~30_combout\);

-- Location: LCCOMB_X29_Y7_N16
\inst1|B[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[4]~31_combout\ = (\inst1|B[0]~3_combout\ & ((\inst1|B[4]~30_combout\ & (\inst44|S9\(4))) # (!\inst1|B[4]~30_combout\ & ((\inst1|B[4]~27_combout\))))) # (!\inst1|B[0]~3_combout\ & (((\inst1|B[4]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S9\(4),
	datab => \inst1|B[4]~27_combout\,
	datac => \inst1|B[0]~3_combout\,
	datad => \inst1|B[4]~30_combout\,
	combout => \inst1|B[4]~31_combout\);

-- Location: LCCOMB_X30_Y10_N2
\inst1|B[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[4]~32_combout\ = (\inst|y.t25~q\ & (((\inst18|Q1\(4))))) # (!\inst|y.t25~q\ & ((\inst|y.t26~q\ & ((\inst18|Q1\(4)))) # (!\inst|y.t26~q\ & (\inst10|Q1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(4),
	datab => \inst18|Q1\(4),
	datac => \inst|y.t25~q\,
	datad => \inst|y.t26~q\,
	combout => \inst1|B[4]~32_combout\);

-- Location: LCCOMB_X30_Y7_N18
\inst1|B[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[4]~33_combout\ = (\inst1|B[4]~31_combout\ & ((\inst1|B[0]~0_combout\) # ((\inst1|B[4]~32_combout\ & \inst|S1~0_combout\)))) # (!\inst1|B[4]~31_combout\ & (((\inst1|B[4]~32_combout\ & \inst|S1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[4]~31_combout\,
	datab => \inst1|B[0]~0_combout\,
	datac => \inst1|B[4]~32_combout\,
	datad => \inst|S1~0_combout\,
	combout => \inst1|B[4]~33_combout\);

-- Location: LCCOMB_X30_Y10_N16
\inst18|Q1[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Q1[5]~16_combout\ = \inst10|Q1\(5) $ (\inst18|Q1[4]~15\ $ (\inst18|Q1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Q1\(5),
	datad => \inst18|Q1\(5),
	cin => \inst18|Q1[4]~15\,
	combout => \inst18|Q1[5]~16_combout\);

-- Location: FF_X30_Y10_N17
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
	sclr => \inst16|a[1]~2_combout\,
	ena => \inst18|Q1[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Q1\(5));

-- Location: LCCOMB_X30_Y10_N0
\inst1|B[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[5]~8_combout\ = (\inst|y.t25~q\ & (\inst18|Q1\(5))) # (!\inst|y.t25~q\ & ((\inst|y.t26~q\ & (\inst18|Q1\(5))) # (!\inst|y.t26~q\ & ((\inst10|Q1\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Q1\(5),
	datab => \inst10|Q1\(5),
	datac => \inst|y.t25~q\,
	datad => \inst|y.t26~q\,
	combout => \inst1|B[5]~8_combout\);

-- Location: LCCOMB_X30_Y6_N30
\inst44|S0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S0~2_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \inst18|Q1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst18|Q1\(5),
	combout => \inst44|S0~2_combout\);

-- Location: LCCOMB_X31_Y7_N26
\inst44|S2[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S2[5]~feeder_combout\ = \inst44|S0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst44|S0~2_combout\,
	combout => \inst44|S2[5]~feeder_combout\);

-- Location: FF_X31_Y7_N27
\inst44|S2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S2[5]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S2[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S2\(5));

-- Location: FF_X30_Y5_N17
\inst44|S0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S0[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S0\(5));

-- Location: LCCOMB_X30_Y5_N16
\inst1|B[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[5]~4_combout\ = (\inst2|a\(0) & (((\inst2|a\(1))))) # (!\inst2|a\(0) & ((\inst2|a\(1) & (\inst44|S2\(5))) # (!\inst2|a\(1) & ((\inst44|S0\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S2\(5),
	datab => \inst2|a\(0),
	datac => \inst44|S0\(5),
	datad => \inst2|a\(1),
	combout => \inst1|B[5]~4_combout\);

-- Location: LCCOMB_X31_Y5_N2
\inst44|S1[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S1[5]~feeder_combout\ = \inst44|S0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst44|S0~2_combout\,
	combout => \inst44|S1[5]~feeder_combout\);

-- Location: FF_X31_Y5_N3
\inst44|S1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S1[5]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S1\(5));

-- Location: FF_X29_Y6_N11
\inst44|S3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S3[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S3\(5));

-- Location: LCCOMB_X29_Y6_N10
\inst1|B[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[5]~5_combout\ = (\inst1|B[5]~4_combout\ & (((\inst44|S3\(5)) # (!\inst2|a\(0))))) # (!\inst1|B[5]~4_combout\ & (\inst44|S1\(5) & ((\inst2|a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[5]~4_combout\,
	datab => \inst44|S1\(5),
	datac => \inst44|S3\(5),
	datad => \inst2|a\(0),
	combout => \inst1|B[5]~5_combout\);

-- Location: FF_X29_Y6_N9
\inst44|S8[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S8\(5));

-- Location: LCCOMB_X29_Y6_N8
\inst1|B[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[5]~6_combout\ = (\inst2|a\(3) & (((\inst44|S8\(5)) # (\inst1|B[0]~3_combout\)))) # (!\inst2|a\(3) & (\inst1|B[5]~5_combout\ & ((!\inst1|B[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[5]~5_combout\,
	datab => \inst2|a\(3),
	datac => \inst44|S8\(5),
	datad => \inst1|B[0]~3_combout\,
	combout => \inst1|B[5]~6_combout\);

-- Location: FF_X30_Y6_N31
\inst44|S9[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S0~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S9[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S9\(5));

-- Location: LCCOMB_X31_Y5_N0
\inst44|S6[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S6[5]~feeder_combout\ = \inst44|S0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst44|S0~2_combout\,
	combout => \inst44|S6[5]~feeder_combout\);

-- Location: FF_X31_Y5_N1
\inst44|S6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S6[5]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S6[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S6\(5));

-- Location: FF_X30_Y6_N9
\inst44|S7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S7[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S7\(5));

-- Location: LCCOMB_X32_Y6_N8
\inst44|S5[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S5[5]~feeder_combout\ = \inst44|S0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst44|S0~2_combout\,
	combout => \inst44|S5[5]~feeder_combout\);

-- Location: FF_X32_Y6_N9
\inst44|S5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S5[5]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S5[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S5\(5));

-- Location: FF_X32_Y6_N19
\inst44|S4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S4[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S4\(5));

-- Location: LCCOMB_X32_Y6_N18
\inst1|B[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[5]~1_combout\ = (\inst2|a\(1) & (((\inst2|a\(0))))) # (!\inst2|a\(1) & ((\inst2|a\(0) & (\inst44|S5\(5))) # (!\inst2|a\(0) & ((\inst44|S4\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|a\(1),
	datab => \inst44|S5\(5),
	datac => \inst44|S4\(5),
	datad => \inst2|a\(0),
	combout => \inst1|B[5]~1_combout\);

-- Location: LCCOMB_X30_Y6_N8
\inst1|B[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[5]~2_combout\ = (\inst2|a\(1) & ((\inst1|B[5]~1_combout\ & ((\inst44|S7\(5)))) # (!\inst1|B[5]~1_combout\ & (\inst44|S6\(5))))) # (!\inst2|a\(1) & (((\inst1|B[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S6\(5),
	datab => \inst2|a\(1),
	datac => \inst44|S7\(5),
	datad => \inst1|B[5]~1_combout\,
	combout => \inst1|B[5]~2_combout\);

-- Location: LCCOMB_X30_Y5_N2
\inst1|B[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[5]~7_combout\ = (\inst1|B[5]~6_combout\ & ((\inst44|S9\(5)) # ((!\inst1|B[0]~3_combout\)))) # (!\inst1|B[5]~6_combout\ & (((\inst1|B[0]~3_combout\ & \inst1|B[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[5]~6_combout\,
	datab => \inst44|S9\(5),
	datac => \inst1|B[0]~3_combout\,
	datad => \inst1|B[5]~2_combout\,
	combout => \inst1|B[5]~7_combout\);

-- Location: LCCOMB_X30_Y7_N10
\inst1|B[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[5]~9_combout\ = (\inst1|B[5]~8_combout\ & ((\inst|S1~0_combout\) # ((\inst1|B[0]~0_combout\ & \inst1|B[5]~7_combout\)))) # (!\inst1|B[5]~8_combout\ & (\inst1|B[0]~0_combout\ & (\inst1|B[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[5]~8_combout\,
	datab => \inst1|B[0]~0_combout\,
	datac => \inst1|B[5]~7_combout\,
	datad => \inst|S1~0_combout\,
	combout => \inst1|B[5]~9_combout\);

-- Location: LCCOMB_X41_Y7_N10
\inst26|z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|z~2_combout\ = (\inst1|B[2]~25_combout\ & (!\inst1|B[3]~17_combout\ & (!\inst1|B[4]~33_combout\ & \inst1|B[5]~9_combout\))) # (!\inst1|B[2]~25_combout\ & (\inst1|B[4]~33_combout\ & (\inst1|B[3]~17_combout\ $ (!\inst1|B[5]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[2]~25_combout\,
	datab => \inst1|B[3]~17_combout\,
	datac => \inst1|B[4]~33_combout\,
	datad => \inst1|B[5]~9_combout\,
	combout => \inst26|z~2_combout\);

-- Location: LCCOMB_X41_Y7_N24
\inst26|B[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|B[5]~0_combout\ = (\inst1|B[3]~17_combout\ & (((!\inst1|B[2]~25_combout\ & \inst1|B[5]~9_combout\)) # (!\inst1|B[4]~33_combout\))) # (!\inst1|B[3]~17_combout\ & ((\inst1|B[4]~33_combout\ & ((\inst1|B[5]~9_combout\) # (!\inst1|B[2]~25_combout\))) # 
-- (!\inst1|B[4]~33_combout\ & ((!\inst1|B[5]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[2]~25_combout\,
	datab => \inst1|B[3]~17_combout\,
	datac => \inst1|B[4]~33_combout\,
	datad => \inst1|B[5]~9_combout\,
	combout => \inst26|B[5]~0_combout\);

-- Location: LCCOMB_X41_Y7_N22
\inst26|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|LessThan0~0_combout\ = (\inst1|B[5]~9_combout\ & ((\inst1|B[3]~17_combout\) # (\inst1|B[4]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|B[3]~17_combout\,
	datac => \inst1|B[4]~33_combout\,
	datad => \inst1|B[5]~9_combout\,
	combout => \inst26|LessThan0~0_combout\);

-- Location: LCCOMB_X41_Y7_N16
\inst26|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|z~0_combout\ = (\inst1|B[3]~17_combout\ & (!\inst1|B[5]~9_combout\ & ((\inst1|B[2]~25_combout\) # (!\inst1|B[4]~33_combout\)))) # (!\inst1|B[3]~17_combout\ & (\inst1|B[5]~9_combout\ & ((\inst1|B[4]~33_combout\) # (!\inst1|B[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[2]~25_combout\,
	datab => \inst1|B[3]~17_combout\,
	datac => \inst1|B[4]~33_combout\,
	datad => \inst1|B[5]~9_combout\,
	combout => \inst26|z~0_combout\);

-- Location: LCCOMB_X30_Y10_N20
\inst1|B[1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[1]~40_combout\ = (\inst|y.t26~q\ & (\inst18|Q1\(1))) # (!\inst|y.t26~q\ & ((\inst|y.t25~q\ & (\inst18|Q1\(1))) # (!\inst|y.t25~q\ & ((\inst10|Q1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Q1\(1),
	datab => \inst|y.t26~q\,
	datac => \inst|y.t25~q\,
	datad => \inst10|Q1\(1),
	combout => \inst1|B[1]~40_combout\);

-- Location: LCCOMB_X30_Y6_N10
\inst44|S0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S0~6_combout\ = (\inst|y.t1~q\ & (\inst18|Q1\(1) & !\inst|y.t2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t1~q\,
	datac => \inst18|Q1\(1),
	datad => \inst|y.t2~q\,
	combout => \inst44|S0~6_combout\);

-- Location: LCCOMB_X31_Y5_N16
\inst44|S6[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S6[1]~feeder_combout\ = \inst44|S0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst44|S0~6_combout\,
	combout => \inst44|S6[1]~feeder_combout\);

-- Location: FF_X31_Y5_N17
\inst44|S6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S6[1]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S6[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S6\(1));

-- Location: FF_X30_Y6_N21
\inst44|S7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S7[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S7\(1));

-- Location: LCCOMB_X32_Y6_N20
\inst44|S5[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S5[1]~feeder_combout\ = \inst44|S0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst44|S0~6_combout\,
	combout => \inst44|S5[1]~feeder_combout\);

-- Location: FF_X32_Y6_N21
\inst44|S5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S5[1]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S5[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S5\(1));

-- Location: FF_X32_Y6_N15
\inst44|S4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S4[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S4\(1));

-- Location: LCCOMB_X32_Y6_N14
\inst1|B[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[1]~34_combout\ = (\inst2|a\(1) & (((\inst2|a\(0))))) # (!\inst2|a\(1) & ((\inst2|a\(0) & (\inst44|S5\(1))) # (!\inst2|a\(0) & ((\inst44|S4\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|a\(1),
	datab => \inst44|S5\(1),
	datac => \inst44|S4\(1),
	datad => \inst2|a\(0),
	combout => \inst1|B[1]~34_combout\);

-- Location: LCCOMB_X30_Y6_N20
\inst1|B[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[1]~35_combout\ = (\inst2|a\(1) & ((\inst1|B[1]~34_combout\ & ((\inst44|S7\(1)))) # (!\inst1|B[1]~34_combout\ & (\inst44|S6\(1))))) # (!\inst2|a\(1) & (((\inst1|B[1]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S6\(1),
	datab => \inst2|a\(1),
	datac => \inst44|S7\(1),
	datad => \inst1|B[1]~34_combout\,
	combout => \inst1|B[1]~35_combout\);

-- Location: FF_X30_Y6_N11
\inst44|S9[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S0~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S9[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S9\(1));

-- Location: LCCOMB_X31_Y5_N6
\inst44|S1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S1[1]~feeder_combout\ = \inst44|S0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst44|S0~6_combout\,
	combout => \inst44|S1[1]~feeder_combout\);

-- Location: FF_X31_Y5_N7
\inst44|S1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S1[1]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S1\(1));

-- Location: FF_X30_Y5_N11
\inst44|S0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S0[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S0\(1));

-- Location: LCCOMB_X30_Y5_N10
\inst1|B[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[1]~36_combout\ = (\inst2|a\(0) & ((\inst44|S1\(1)) # ((\inst2|a\(1))))) # (!\inst2|a\(0) & (((\inst44|S0\(1) & !\inst2|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S1\(1),
	datab => \inst2|a\(0),
	datac => \inst44|S0\(1),
	datad => \inst2|a\(1),
	combout => \inst1|B[1]~36_combout\);

-- Location: LCCOMB_X31_Y7_N30
\inst44|S2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S2[1]~feeder_combout\ = \inst44|S0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst44|S0~6_combout\,
	combout => \inst44|S2[1]~feeder_combout\);

-- Location: FF_X31_Y7_N31
\inst44|S2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S2[1]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S2[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S2\(1));

-- Location: FF_X29_Y6_N1
\inst44|S3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S3[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S3\(1));

-- Location: LCCOMB_X29_Y6_N0
\inst1|B[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[1]~37_combout\ = (\inst1|B[1]~36_combout\ & (((\inst44|S3\(1)) # (!\inst2|a\(1))))) # (!\inst1|B[1]~36_combout\ & (\inst44|S2\(1) & ((\inst2|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[1]~36_combout\,
	datab => \inst44|S2\(1),
	datac => \inst44|S3\(1),
	datad => \inst2|a\(1),
	combout => \inst1|B[1]~37_combout\);

-- Location: FF_X29_Y6_N23
\inst44|S8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S8\(1));

-- Location: LCCOMB_X29_Y6_N22
\inst1|B[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[1]~38_combout\ = (\inst1|B[0]~3_combout\ & (((\inst2|a\(3))))) # (!\inst1|B[0]~3_combout\ & ((\inst2|a\(3) & ((\inst44|S8\(1)))) # (!\inst2|a\(3) & (\inst1|B[1]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[0]~3_combout\,
	datab => \inst1|B[1]~37_combout\,
	datac => \inst44|S8\(1),
	datad => \inst2|a\(3),
	combout => \inst1|B[1]~38_combout\);

-- Location: LCCOMB_X29_Y6_N26
\inst1|B[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[1]~39_combout\ = (\inst1|B[1]~38_combout\ & (((\inst44|S9\(1)) # (!\inst1|B[0]~3_combout\)))) # (!\inst1|B[1]~38_combout\ & (\inst1|B[1]~35_combout\ & ((\inst1|B[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[1]~35_combout\,
	datab => \inst44|S9\(1),
	datac => \inst1|B[1]~38_combout\,
	datad => \inst1|B[0]~3_combout\,
	combout => \inst1|B[1]~39_combout\);

-- Location: LCCOMB_X30_Y7_N12
\inst1|B[1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[1]~41_combout\ = (\inst1|B[1]~40_combout\ & ((\inst|S1~0_combout\) # ((\inst1|B[0]~0_combout\ & \inst1|B[1]~39_combout\)))) # (!\inst1|B[1]~40_combout\ & (\inst1|B[0]~0_combout\ & (\inst1|B[1]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[1]~40_combout\,
	datab => \inst1|B[0]~0_combout\,
	datac => \inst1|B[1]~39_combout\,
	datad => \inst|S1~0_combout\,
	combout => \inst1|B[1]~41_combout\);

-- Location: LCCOMB_X41_Y7_N2
\inst26|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|z~1_combout\ = (\inst1|B[2]~25_combout\ & (\inst1|B[4]~33_combout\ $ (((\inst1|B[3]~17_combout\) # (!\inst1|B[5]~9_combout\))))) # (!\inst1|B[2]~25_combout\ & ((\inst1|B[3]~17_combout\ & (\inst1|B[4]~33_combout\ & !\inst1|B[5]~9_combout\)) # 
-- (!\inst1|B[3]~17_combout\ & (!\inst1|B[4]~33_combout\ & \inst1|B[5]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[2]~25_combout\,
	datab => \inst1|B[3]~17_combout\,
	datac => \inst1|B[4]~33_combout\,
	datad => \inst1|B[5]~9_combout\,
	combout => \inst26|z~1_combout\);

-- Location: LCCOMB_X41_Y7_N0
\inst26|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add2~0_combout\ = (\inst26|z~0_combout\ & ((\inst1|B[1]~41_combout\) # (\inst26|z~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst26|z~0_combout\,
	datac => \inst1|B[1]~41_combout\,
	datad => \inst26|z~1_combout\,
	combout => \inst26|Add2~0_combout\);

-- Location: LCCOMB_X41_Y7_N8
\inst24|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux0~0_combout\ = (\inst26|B[5]~0_combout\ & (\inst26|z~2_combout\ $ (\inst26|LessThan0~0_combout\ $ (\inst26|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|z~2_combout\,
	datab => \inst26|B[5]~0_combout\,
	datac => \inst26|LessThan0~0_combout\,
	datad => \inst26|Add2~0_combout\,
	combout => \inst24|Mux0~0_combout\);

-- Location: LCCOMB_X41_Y7_N30
\inst24|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux1~0_combout\ = (\inst26|LessThan0~0_combout\ & (\inst26|z~2_combout\ $ (\inst26|B[5]~0_combout\ $ (!\inst26|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|z~2_combout\,
	datab => \inst26|B[5]~0_combout\,
	datac => \inst26|LessThan0~0_combout\,
	datad => \inst26|Add2~0_combout\,
	combout => \inst24|Mux1~0_combout\);

-- Location: LCCOMB_X41_Y7_N4
\inst24|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux2~0_combout\ = (!\inst26|B[5]~0_combout\ & (!\inst26|LessThan0~0_combout\ & (\inst26|z~2_combout\ $ (!\inst26|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|z~2_combout\,
	datab => \inst26|B[5]~0_combout\,
	datac => \inst26|LessThan0~0_combout\,
	datad => \inst26|Add2~0_combout\,
	combout => \inst24|Mux2~0_combout\);

-- Location: LCCOMB_X41_Y7_N14
\inst24|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux3~0_combout\ = (\inst26|B[5]~0_combout\ & (\inst26|z~2_combout\ $ (\inst26|LessThan0~0_combout\ $ (\inst26|Add2~0_combout\)))) # (!\inst26|B[5]~0_combout\ & (\inst26|LessThan0~0_combout\ & (\inst26|z~2_combout\ $ (\inst26|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|z~2_combout\,
	datab => \inst26|B[5]~0_combout\,
	datac => \inst26|LessThan0~0_combout\,
	datad => \inst26|Add2~0_combout\,
	combout => \inst24|Mux3~0_combout\);

-- Location: LCCOMB_X41_Y7_N12
\inst24|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux4~0_combout\ = (\inst26|B[5]~0_combout\ & ((\inst26|LessThan0~0_combout\) # (\inst26|z~2_combout\ $ (\inst26|Add2~0_combout\)))) # (!\inst26|B[5]~0_combout\ & (\inst26|z~2_combout\ $ (((\inst26|Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|z~2_combout\,
	datab => \inst26|B[5]~0_combout\,
	datac => \inst26|LessThan0~0_combout\,
	datad => \inst26|Add2~0_combout\,
	combout => \inst24|Mux4~0_combout\);

-- Location: LCCOMB_X41_Y7_N6
\inst24|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux5~0_combout\ = (\inst26|B[5]~0_combout\ & (!\inst26|LessThan0~0_combout\ & (\inst26|z~2_combout\ $ (\inst26|Add2~0_combout\)))) # (!\inst26|B[5]~0_combout\ & ((\inst26|z~2_combout\ $ (\inst26|Add2~0_combout\)) # 
-- (!\inst26|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|z~2_combout\,
	datab => \inst26|B[5]~0_combout\,
	datac => \inst26|LessThan0~0_combout\,
	datad => \inst26|Add2~0_combout\,
	combout => \inst24|Mux5~0_combout\);

-- Location: LCCOMB_X41_Y7_N20
\inst24|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux6~0_combout\ = (\inst26|B[5]~0_combout\ & (((!\inst26|LessThan0~0_combout\)))) # (!\inst26|B[5]~0_combout\ & (\inst26|LessThan0~0_combout\ & (\inst26|z~2_combout\ $ (\inst26|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|z~2_combout\,
	datab => \inst26|B[5]~0_combout\,
	datac => \inst26|LessThan0~0_combout\,
	datad => \inst26|Add2~0_combout\,
	combout => \inst24|Mux6~0_combout\);

-- Location: LCCOMB_X41_Y7_N28
\inst26|B[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|B[2]~2_combout\ = (\inst26|z~2_combout\ & (\inst26|z~1_combout\ $ ((!\inst1|B[1]~41_combout\)))) # (!\inst26|z~2_combout\ & (\inst26|z~1_combout\ & ((\inst1|B[1]~41_combout\) # (!\inst26|z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|z~2_combout\,
	datab => \inst26|z~1_combout\,
	datac => \inst1|B[1]~41_combout\,
	datad => \inst26|z~0_combout\,
	combout => \inst26|B[2]~2_combout\);

-- Location: LCCOMB_X41_Y7_N26
\inst26|B[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|B[3]~3_combout\ = (\inst26|z~0_combout\ & (((!\inst26|z~1_combout\ & !\inst1|B[1]~41_combout\)))) # (!\inst26|z~0_combout\ & (\inst26|z~2_combout\ & ((\inst26|z~1_combout\) # (\inst1|B[1]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|z~2_combout\,
	datab => \inst26|z~1_combout\,
	datac => \inst1|B[1]~41_combout\,
	datad => \inst26|z~0_combout\,
	combout => \inst26|B[3]~3_combout\);

-- Location: LCCOMB_X30_Y6_N18
\inst44|S0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S0~7_combout\ = (!\inst|y.t2~q\ & (\inst|y.t1~q\ & \inst18|Q1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t2~q\,
	datac => \inst|y.t1~q\,
	datad => \inst18|Q1\(0),
	combout => \inst44|S0~7_combout\);

-- Location: LCCOMB_X31_Y7_N8
\inst44|S2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S2[0]~feeder_combout\ = \inst44|S0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst44|S0~7_combout\,
	combout => \inst44|S2[0]~feeder_combout\);

-- Location: FF_X31_Y7_N9
\inst44|S2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S2[0]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S2[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S2\(0));

-- Location: FF_X30_Y5_N13
\inst44|S0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~7_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S0[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S0\(0));

-- Location: LCCOMB_X30_Y5_N12
\inst1|B[0]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[0]~44_combout\ = (\inst2|a\(1) & ((\inst44|S2\(0)) # ((\inst2|a\(0))))) # (!\inst2|a\(1) & (((\inst44|S0\(0) & !\inst2|a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S2\(0),
	datab => \inst2|a\(1),
	datac => \inst44|S0\(0),
	datad => \inst2|a\(0),
	combout => \inst1|B[0]~44_combout\);

-- Location: FF_X29_Y6_N7
\inst44|S3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~7_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S3[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S3\(0));

-- Location: LCCOMB_X31_Y5_N22
\inst44|S1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S1[0]~feeder_combout\ = \inst44|S0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst44|S0~7_combout\,
	combout => \inst44|S1[0]~feeder_combout\);

-- Location: FF_X31_Y5_N23
\inst44|S1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S1[0]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S1\(0));

-- Location: LCCOMB_X29_Y6_N6
\inst1|B[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[0]~45_combout\ = (\inst1|B[0]~44_combout\ & (((\inst44|S3\(0))) # (!\inst2|a\(0)))) # (!\inst1|B[0]~44_combout\ & (\inst2|a\(0) & ((\inst44|S1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[0]~44_combout\,
	datab => \inst2|a\(0),
	datac => \inst44|S3\(0),
	datad => \inst44|S1\(0),
	combout => \inst1|B[0]~45_combout\);

-- Location: FF_X29_Y6_N13
\inst44|S8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~7_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S8\(0));

-- Location: LCCOMB_X29_Y6_N12
\inst1|B[0]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[0]~46_combout\ = (\inst2|a\(3) & (((\inst44|S8\(0)) # (\inst1|B[0]~3_combout\)))) # (!\inst2|a\(3) & (\inst1|B[0]~45_combout\ & ((!\inst1|B[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[0]~45_combout\,
	datab => \inst2|a\(3),
	datac => \inst44|S8\(0),
	datad => \inst1|B[0]~3_combout\,
	combout => \inst1|B[0]~46_combout\);

-- Location: FF_X30_Y6_N19
\inst44|S9[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S0~7_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S9[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S9\(0));

-- Location: LCCOMB_X31_Y5_N20
\inst44|S6[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S6[0]~feeder_combout\ = \inst44|S0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst44|S0~7_combout\,
	combout => \inst44|S6[0]~feeder_combout\);

-- Location: FF_X31_Y5_N21
\inst44|S6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S6[0]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S6[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S6\(0));

-- Location: FF_X30_Y6_N17
\inst44|S7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~7_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S7[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S7\(0));

-- Location: LCCOMB_X32_Y6_N28
\inst44|S5[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|S5[0]~feeder_combout\ = \inst44|S0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst44|S0~7_combout\,
	combout => \inst44|S5[0]~feeder_combout\);

-- Location: FF_X32_Y6_N29
\inst44|S5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst44|S5[0]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \inst44|S5[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S5\(0));

-- Location: FF_X32_Y6_N11
\inst44|S4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst44|S0~7_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst44|S4[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|S4\(0));

-- Location: LCCOMB_X32_Y6_N10
\inst1|B[0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[0]~42_combout\ = (\inst2|a\(1) & (((\inst2|a\(0))))) # (!\inst2|a\(1) & ((\inst2|a\(0) & (\inst44|S5\(0))) # (!\inst2|a\(0) & ((\inst44|S4\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|a\(1),
	datab => \inst44|S5\(0),
	datac => \inst44|S4\(0),
	datad => \inst2|a\(0),
	combout => \inst1|B[0]~42_combout\);

-- Location: LCCOMB_X30_Y6_N16
\inst1|B[0]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[0]~43_combout\ = (\inst2|a\(1) & ((\inst1|B[0]~42_combout\ & ((\inst44|S7\(0)))) # (!\inst1|B[0]~42_combout\ & (\inst44|S6\(0))))) # (!\inst2|a\(1) & (((\inst1|B[0]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|S6\(0),
	datab => \inst2|a\(1),
	datac => \inst44|S7\(0),
	datad => \inst1|B[0]~42_combout\,
	combout => \inst1|B[0]~43_combout\);

-- Location: LCCOMB_X30_Y6_N12
\inst1|B[0]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[0]~47_combout\ = (\inst1|B[0]~46_combout\ & ((\inst44|S9\(0)) # ((!\inst1|B[0]~3_combout\)))) # (!\inst1|B[0]~46_combout\ & (((\inst1|B[0]~3_combout\ & \inst1|B[0]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[0]~46_combout\,
	datab => \inst44|S9\(0),
	datac => \inst1|B[0]~3_combout\,
	datad => \inst1|B[0]~43_combout\,
	combout => \inst1|B[0]~47_combout\);

-- Location: LCCOMB_X30_Y10_N22
\inst1|B[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[0]~48_combout\ = (\inst|y.t26~q\ & (((\inst18|Q1\(0))))) # (!\inst|y.t26~q\ & ((\inst|y.t25~q\ & ((\inst18|Q1\(0)))) # (!\inst|y.t25~q\ & (\inst10|Q1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q1\(0),
	datab => \inst|y.t26~q\,
	datac => \inst|y.t25~q\,
	datad => \inst18|Q1\(0),
	combout => \inst1|B[0]~48_combout\);

-- Location: LCCOMB_X30_Y7_N6
\inst1|B[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|B[0]~49_combout\ = (\inst1|B[0]~47_combout\ & ((\inst1|B[0]~0_combout\) # ((\inst1|B[0]~48_combout\ & \inst|S1~0_combout\)))) # (!\inst1|B[0]~47_combout\ & (((\inst1|B[0]~48_combout\ & \inst|S1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|B[0]~47_combout\,
	datab => \inst1|B[0]~0_combout\,
	datac => \inst1|B[0]~48_combout\,
	datad => \inst|S1~0_combout\,
	combout => \inst1|B[0]~49_combout\);

-- Location: LCCOMB_X41_Y7_N18
\inst26|B[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|B[1]~1_combout\ = (\inst26|z~2_combout\ & (((!\inst1|B[1]~41_combout\)))) # (!\inst26|z~2_combout\ & ((\inst1|B[1]~41_combout\ & ((!\inst26|z~0_combout\))) # (!\inst1|B[1]~41_combout\ & (\inst26|z~1_combout\ & \inst26|z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|z~2_combout\,
	datab => \inst26|z~1_combout\,
	datac => \inst1|B[1]~41_combout\,
	datad => \inst26|z~0_combout\,
	combout => \inst26|B[1]~1_combout\);

-- Location: LCCOMB_X14_Y30_N0
\inst25|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux0~0_combout\ = (\inst26|B[1]~1_combout\ & (((\inst26|B[3]~3_combout\)))) # (!\inst26|B[1]~1_combout\ & (\inst26|B[2]~2_combout\ $ (((!\inst26|B[3]~3_combout\ & \inst1|B[0]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|B[2]~2_combout\,
	datab => \inst26|B[3]~3_combout\,
	datac => \inst1|B[0]~49_combout\,
	datad => \inst26|B[1]~1_combout\,
	combout => \inst25|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y30_N22
\inst25|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux1~0_combout\ = (\inst26|B[2]~2_combout\ & ((\inst26|B[3]~3_combout\) # (\inst1|B[0]~49_combout\ $ (\inst26|B[1]~1_combout\)))) # (!\inst26|B[2]~2_combout\ & (\inst26|B[3]~3_combout\ & ((\inst26|B[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|B[2]~2_combout\,
	datab => \inst26|B[3]~3_combout\,
	datac => \inst1|B[0]~49_combout\,
	datad => \inst26|B[1]~1_combout\,
	combout => \inst25|Mux1~0_combout\);

-- Location: LCCOMB_X14_Y30_N28
\inst25|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux2~0_combout\ = (\inst26|B[2]~2_combout\ & (\inst26|B[3]~3_combout\)) # (!\inst26|B[2]~2_combout\ & (\inst26|B[1]~1_combout\ & ((\inst26|B[3]~3_combout\) # (!\inst1|B[0]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|B[2]~2_combout\,
	datab => \inst26|B[3]~3_combout\,
	datac => \inst1|B[0]~49_combout\,
	datad => \inst26|B[1]~1_combout\,
	combout => \inst25|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y30_N10
\inst25|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux3~0_combout\ = (\inst26|B[2]~2_combout\ & ((\inst26|B[3]~3_combout\) # (\inst1|B[0]~49_combout\ $ (!\inst26|B[1]~1_combout\)))) # (!\inst26|B[2]~2_combout\ & ((\inst26|B[1]~1_combout\ & (\inst26|B[3]~3_combout\)) # (!\inst26|B[1]~1_combout\ & 
-- ((\inst1|B[0]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|B[2]~2_combout\,
	datab => \inst26|B[3]~3_combout\,
	datac => \inst1|B[0]~49_combout\,
	datad => \inst26|B[1]~1_combout\,
	combout => \inst25|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y30_N12
\inst25|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux4~0_combout\ = (\inst1|B[0]~49_combout\) # ((\inst26|B[1]~1_combout\ & ((\inst26|B[3]~3_combout\))) # (!\inst26|B[1]~1_combout\ & (\inst26|B[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|B[2]~2_combout\,
	datab => \inst26|B[3]~3_combout\,
	datac => \inst1|B[0]~49_combout\,
	datad => \inst26|B[1]~1_combout\,
	combout => \inst25|Mux4~0_combout\);

-- Location: LCCOMB_X14_Y30_N14
\inst25|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux5~0_combout\ = (\inst26|B[2]~2_combout\ & ((\inst26|B[3]~3_combout\) # ((\inst1|B[0]~49_combout\ & \inst26|B[1]~1_combout\)))) # (!\inst26|B[2]~2_combout\ & ((\inst26|B[1]~1_combout\) # ((!\inst26|B[3]~3_combout\ & \inst1|B[0]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|B[2]~2_combout\,
	datab => \inst26|B[3]~3_combout\,
	datac => \inst1|B[0]~49_combout\,
	datad => \inst26|B[1]~1_combout\,
	combout => \inst25|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y30_N8
\inst25|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux6~0_combout\ = (\inst26|B[2]~2_combout\ & (!\inst26|B[3]~3_combout\ & ((!\inst26|B[1]~1_combout\) # (!\inst1|B[0]~49_combout\)))) # (!\inst26|B[2]~2_combout\ & (\inst26|B[3]~3_combout\ $ (((\inst26|B[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|B[2]~2_combout\,
	datab => \inst26|B[3]~3_combout\,
	datac => \inst1|B[0]~49_combout\,
	datad => \inst26|B[1]~1_combout\,
	combout => \inst25|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y8_N18
\inst|WideOr15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr15~1_combout\ = (\inst|y.t16~q\) # ((\inst|y.t26~q\) # ((\inst|y.t17~q\) # (\inst|y.t20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t16~q\,
	datab => \inst|y.t26~q\,
	datac => \inst|y.t17~q\,
	datad => \inst|y.t20~q\,
	combout => \inst|WideOr15~1_combout\);

-- Location: LCCOMB_X31_Y9_N28
\inst|WideOr15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr15~0_combout\ = (\inst|y.t24~q\) # ((\inst|y.t25~q\) # ((\inst|y.t21~q\) # (\inst|y.t21_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t24~q\,
	datab => \inst|y.t25~q\,
	datac => \inst|y.t21~q\,
	datad => \inst|y.t21_1~q\,
	combout => \inst|WideOr15~0_combout\);

-- Location: LCCOMB_X29_Y8_N26
\inst|WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr18~0_combout\ = (!\inst|y.t19~q\ & !\inst|y.t18~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t19~q\,
	datad => \inst|y.t18~q\,
	combout => \inst|WideOr18~0_combout\);

-- Location: LCCOMB_X31_Y9_N26
\inst|WideOr15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr15~2_combout\ = (\inst|WideOr15~1_combout\) # ((\inst|WideOr15~0_combout\) # ((!\inst|S1~0_combout\) # (!\inst|WideOr18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr15~1_combout\,
	datab => \inst|WideOr15~0_combout\,
	datac => \inst|WideOr18~0_combout\,
	datad => \inst|S1~0_combout\,
	combout => \inst|WideOr15~2_combout\);

-- Location: LCCOMB_X31_Y9_N16
\inst|WideOr16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr16~1_combout\ = (!\inst|y.t10~q\ & (!\inst|y.t15~q\ & (!\inst|y.t11~q\ & !\inst|y.t14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst|y.t11~q\,
	datad => \inst|y.t14~q\,
	combout => \inst|WideOr16~1_combout\);

-- Location: LCCOMB_X31_Y9_N14
\inst|WideOr16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr16~2_combout\ = (!\inst|y.t26~q\ & \inst|WideOr16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.t26~q\,
	datad => \inst|WideOr16~1_combout\,
	combout => \inst|WideOr16~2_combout\);

-- Location: LCCOMB_X29_Y8_N12
\inst|WideOr16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr16~0_combout\ = (\inst|y.t9~q\) # ((\inst|y.t25~q\) # ((\inst|y.t8~q\) # (\inst|y.t24~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t9~q\,
	datab => \inst|y.t25~q\,
	datac => \inst|y.t8~q\,
	datad => \inst|y.t24~q\,
	combout => \inst|WideOr16~0_combout\);

-- Location: LCCOMB_X29_Y8_N10
\inst|WideOr16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr16~3_combout\ = ((\inst|WideOr16~0_combout\) # ((\inst|y.t13~q\) # (\inst|y.t12~q\))) # (!\inst|WideOr16~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr16~2_combout\,
	datab => \inst|WideOr16~0_combout\,
	datac => \inst|y.t13~q\,
	datad => \inst|y.t12~q\,
	combout => \inst|WideOr16~3_combout\);

-- Location: LCCOMB_X29_Y9_N4
\inst|WideOr17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr17~1_combout\ = (!\inst|y.t21_1~q\ & (!\inst|y.t21~q\ & (!\inst|y.t7~q\ & !\inst|y.t5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t21_1~q\,
	datab => \inst|y.t21~q\,
	datac => \inst|y.t7~q\,
	datad => \inst|y.t5~q\,
	combout => \inst|WideOr17~1_combout\);

-- Location: LCCOMB_X30_Y9_N14
\inst|WideOr17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr17~2_combout\ = (!\inst|y.t15~q\ & (\inst|WideOr17~1_combout\ & (!\inst|y.t23~q\ & !\inst|y.t13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t15~q\,
	datab => \inst|WideOr17~1_combout\,
	datac => \inst|y.t23~q\,
	datad => \inst|y.t13~q\,
	combout => \inst|WideOr17~2_combout\);

-- Location: LCCOMB_X30_Y9_N22
\inst|WideOr17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr17~0_combout\ = (\inst|y.t6~q\) # ((\inst|y.t12~q\) # ((\inst|y.t14~q\) # (\inst|y.t4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t6~q\,
	datab => \inst|y.t12~q\,
	datac => \inst|y.t14~q\,
	datad => \inst|y.t4~q\,
	combout => \inst|WideOr17~0_combout\);

-- Location: LCCOMB_X29_Y9_N22
\inst|WideOr17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr17~3_combout\ = (\inst|y.t22~q\) # ((\inst|y.t20~q\) # ((\inst|WideOr17~0_combout\) # (!\inst|WideOr17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t22~q\,
	datab => \inst|y.t20~q\,
	datac => \inst|WideOr17~2_combout\,
	datad => \inst|WideOr17~0_combout\,
	combout => \inst|WideOr17~3_combout\);

-- Location: LCCOMB_X29_Y8_N4
\inst|WideOr18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr18~1_combout\ = (\inst|y.t2~q\) # ((\inst|y.t3~q\) # ((\inst|y.t6~q\) # (\inst|y.t7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t2~q\,
	datab => \inst|y.t3~q\,
	datac => \inst|y.t6~q\,
	datad => \inst|y.t7~q\,
	combout => \inst|WideOr18~1_combout\);

-- Location: LCCOMB_X29_Y8_N18
\inst|WideOr18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr18~2_combout\ = ((\inst|WideOr18~1_combout\) # ((!\inst|S1~0_combout\) # (!\inst|WideOr16~2_combout\))) # (!\inst|WideOr18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr18~0_combout\,
	datab => \inst|WideOr18~1_combout\,
	datac => \inst|WideOr16~2_combout\,
	datad => \inst|S1~0_combout\,
	combout => \inst|WideOr18~2_combout\);

-- Location: LCCOMB_X31_Y9_N8
\inst|WideOr19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr19~1_combout\ = (\inst|y.t25~q\) # ((\inst|y.t11~q\) # (\inst|y.t17~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t25~q\,
	datac => \inst|y.t11~q\,
	datad => \inst|y.t17~q\,
	combout => \inst|WideOr19~1_combout\);

-- Location: LCCOMB_X31_Y9_N18
\inst|WideOr19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr19~0_combout\ = (\inst|y.t3~q\) # ((\inst|y.t9~q\) # ((\inst|y.t19~q\) # (!\inst|y.t1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t3~q\,
	datab => \inst|y.t9~q\,
	datac => \inst|y.t1~q\,
	datad => \inst|y.t19~q\,
	combout => \inst|WideOr19~0_combout\);

-- Location: LCCOMB_X31_Y9_N6
\inst|WideOr19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr19~2_combout\ = ((\inst|WideOr19~1_combout\) # (\inst|WideOr19~0_combout\)) # (!\inst|WideOr17~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr17~2_combout\,
	datac => \inst|WideOr19~1_combout\,
	datad => \inst|WideOr19~0_combout\,
	combout => \inst|WideOr19~2_combout\);

-- Location: LCCOMB_X36_Y8_N0
\inst40|F[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|F[4]~0_combout\ = (\inst38|S2\(4) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst38|S2\(4),
	datad => \inst|y.t5~q\,
	combout => \inst40|F[4]~0_combout\);

-- Location: LCCOMB_X36_Y9_N28
\inst40|F[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|F[3]~1_combout\ = (\inst38|S2\(3) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|S2\(3),
	datab => \inst|y.t10~q\,
	datac => \inst|y.t15~q\,
	datad => \inst|y.t5~q\,
	combout => \inst40|F[3]~1_combout\);

-- Location: LCCOMB_X36_Y8_N30
\inst40|F[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|F[2]~2_combout\ = (\inst38|S2\(2) & ((\inst|y.t15~q\) # ((\inst|y.t10~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|S2\(2),
	datab => \inst|y.t15~q\,
	datac => \inst|y.t10~q\,
	datad => \inst|y.t5~q\,
	combout => \inst40|F[2]~2_combout\);

-- Location: LCCOMB_X36_Y8_N20
\inst40|F[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|F[1]~3_combout\ = (\inst38|S2\(1) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst38|S2\(1),
	datad => \inst|y.t5~q\,
	combout => \inst40|F[1]~3_combout\);

-- Location: LCCOMB_X36_Y8_N2
\inst40|F[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|F[0]~4_combout\ = (\inst38|S2\(0) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst38|S2\(0),
	datad => \inst|y.t5~q\,
	combout => \inst40|F[0]~4_combout\);

-- Location: LCCOMB_X36_Y8_N12
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

-- Location: LCCOMB_X36_Y8_N10
\inst41|F[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|F[3]~1_combout\ = (\inst38|S3\(3) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst38|S3\(3),
	datad => \inst|y.t5~q\,
	combout => \inst41|F[3]~1_combout\);

-- Location: LCCOMB_X36_Y8_N8
\inst41|F[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|F[2]~2_combout\ = (\inst38|S3\(2) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst38|S3\(2),
	datad => \inst|y.t5~q\,
	combout => \inst41|F[2]~2_combout\);

-- Location: LCCOMB_X36_Y8_N22
\inst41|F[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|F[1]~3_combout\ = (\inst38|S3\(1) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst38|S3\(1),
	datad => \inst|y.t5~q\,
	combout => \inst41|F[1]~3_combout\);

-- Location: LCCOMB_X36_Y8_N16
\inst41|F[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|F[0]~4_combout\ = (\inst38|S3\(0) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst38|S3\(0),
	datad => \inst|y.t5~q\,
	combout => \inst41|F[0]~4_combout\);

-- Location: LCCOMB_X28_Y13_N0
\inst42|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst42|Mux1~1_combout\ = (\inst42|Mux1~0_combout\ & \inst43|cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst42|Mux1~0_combout\,
	datad => \inst43|cont\(1),
	combout => \inst42|Mux1~1_combout\);

-- Location: LCCOMB_X28_Y9_N10
\inst42|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst42|Mux2~0_combout\ = (\inst43|cont\(3)) # ((\inst43|cont\(2)) # ((!\inst43|cont\(1) & !\inst43|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|cont\(1),
	datab => \inst43|cont\(3),
	datac => \inst43|cont\(2),
	datad => \inst43|cont\(0),
	combout => \inst42|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y9_N0
\inst42|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst42|Mux2~1_combout\ = (\inst42|Mux2~0_combout\) # ((\inst43|cont\(5)) # (\inst43|cont\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst42|Mux2~0_combout\,
	datab => \inst43|cont\(5),
	datac => \inst43|cont\(4),
	combout => \inst42|Mux2~1_combout\);

-- Location: LCCOMB_X36_Y8_N18
\inst100|F[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst100|F[4]~0_combout\ = (\inst38|S0\(4) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst38|S0\(4),
	datad => \inst|y.t5~q\,
	combout => \inst100|F[4]~0_combout\);

-- Location: LCCOMB_X36_Y8_N24
\inst100|F[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst100|F[3]~1_combout\ = (\inst38|S0\(3) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst38|S0\(3),
	datad => \inst|y.t5~q\,
	combout => \inst100|F[3]~1_combout\);

-- Location: LCCOMB_X35_Y8_N8
\inst100|F[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst100|F[2]~2_combout\ = (\inst38|S0\(2) & ((\inst|y.t5~q\) # ((\inst|y.t10~q\) # (\inst|y.t15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t5~q\,
	datab => \inst|y.t10~q\,
	datac => \inst38|S0\(2),
	datad => \inst|y.t15~q\,
	combout => \inst100|F[2]~2_combout\);

-- Location: LCCOMB_X35_Y8_N30
\inst100|F[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst100|F[1]~3_combout\ = (\inst38|S0\(1) & ((\inst|y.t5~q\) # ((\inst|y.t10~q\) # (\inst|y.t15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t5~q\,
	datab => \inst38|S0\(1),
	datac => \inst|y.t10~q\,
	datad => \inst|y.t15~q\,
	combout => \inst100|F[1]~3_combout\);

-- Location: LCCOMB_X35_Y8_N28
\inst100|F[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst100|F[0]~4_combout\ = (\inst38|S0\(0) & ((\inst|y.t5~q\) # ((\inst|y.t10~q\) # (\inst|y.t15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t5~q\,
	datab => \inst38|S0\(0),
	datac => \inst|y.t10~q\,
	datad => \inst|y.t15~q\,
	combout => \inst100|F[0]~4_combout\);

-- Location: LCCOMB_X34_Y8_N26
\inst39|F[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|F[4]~0_combout\ = (\inst38|S1\(4) & ((\inst|y.t15~q\) # ((\inst|y.t10~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t15~q\,
	datab => \inst|y.t10~q\,
	datac => \inst38|S1\(4),
	datad => \inst|y.t5~q\,
	combout => \inst39|F[4]~0_combout\);

-- Location: LCCOMB_X36_Y8_N6
\inst39|F[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|F[3]~1_combout\ = (\inst38|S1\(3) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t15~q\,
	datac => \inst38|S1\(3),
	datad => \inst|y.t5~q\,
	combout => \inst39|F[3]~1_combout\);

-- Location: LCCOMB_X36_Y8_N28
\inst39|F[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|F[2]~2_combout\ = (\inst38|S1\(2) & ((\inst|y.t10~q\) # ((\inst|y.t5~q\) # (\inst|y.t15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t10~q\,
	datab => \inst|y.t5~q\,
	datac => \inst38|S1\(2),
	datad => \inst|y.t15~q\,
	combout => \inst39|F[2]~2_combout\);

-- Location: LCCOMB_X34_Y8_N28
\inst39|F[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|F[1]~3_combout\ = (\inst38|S1\(1) & ((\inst|y.t10~q\) # ((\inst|y.t15~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|S1\(1),
	datab => \inst|y.t10~q\,
	datac => \inst|y.t15~q\,
	datad => \inst|y.t5~q\,
	combout => \inst39|F[1]~3_combout\);

-- Location: LCCOMB_X34_Y8_N20
\inst39|F[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|F[0]~4_combout\ = (\inst38|S1\(0) & ((\inst|y.t15~q\) # ((\inst|y.t10~q\) # (\inst|y.t5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t15~q\,
	datab => \inst|y.t10~q\,
	datac => \inst38|S1\(0),
	datad => \inst|y.t5~q\,
	combout => \inst39|F[0]~4_combout\);

ww_Led_p <= \Led_p~output_o\;

ww_En_cont <= \En_cont~output_o\;

ww_facil <= \facil~output_o\;

ww_medio <= \medio~output_o\;

ww_dificil <= \dificil~output_o\;

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


