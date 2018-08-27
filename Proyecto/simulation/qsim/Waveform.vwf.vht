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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/20/2018 17:48:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Proyecto
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Proyecto_vhd_vec_tst IS
END Proyecto_vhd_vec_tst;
ARCHITECTURE Proyecto_arch OF Proyecto_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Amarillo : STD_LOGIC;
SIGNAL Azul : STD_LOGIC;
SIGNAL Clock : STD_LOGIC;
SIGNAL Clock_1s : STD_LOGIC;
SIGNAL Clock_100k : STD_LOGIC;
SIGNAL Consultar : STD_LOGIC;
SIGNAL cont : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL dificil : STD_LOGIC;
SIGNAL Disp_Decenas : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Disp_Unidades : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL En_cont : STD_LOGIC;
SIGNAL ESTADOS : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL facil : STD_LOGIC;
SIGNAL Jugar : STD_LOGIC;
SIGNAL Led_Am : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Led_Az : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Led_Oport : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Led_p : STD_LOGIC;
SIGNAL Led_R : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Led_V : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL medio : STD_LOGIC;
SIGNAL Puntos : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Reset : STD_LOGIC;
SIGNAL Rojo : STD_LOGIC;
SIGNAL Start : STD_LOGIC;
SIGNAL Verde : STD_LOGIC;
COMPONENT Proyecto
	PORT (
	Amarillo : IN STD_LOGIC;
	Azul : IN STD_LOGIC;
	Clock : IN STD_LOGIC;
	Clock_1s : IN STD_LOGIC;
	Clock_100k : IN STD_LOGIC;
	Consultar : IN STD_LOGIC;
	cont : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	dificil : OUT STD_LOGIC;
	Disp_Decenas : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Disp_Unidades : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	En_cont : OUT STD_LOGIC;
	ESTADOS : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	facil : OUT STD_LOGIC;
	Jugar : IN STD_LOGIC;
	Led_Am : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Led_Az : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Led_Oport : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	Led_p : OUT STD_LOGIC;
	Led_R : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Led_V : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	medio : OUT STD_LOGIC;
	Puntos : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	Reset : IN STD_LOGIC;
	Rojo : IN STD_LOGIC;
	Start : IN STD_LOGIC;
	Verde : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Proyecto
	PORT MAP (
-- list connections between master ports and signals
	Amarillo => Amarillo,
	Azul => Azul,
	Clock => Clock,
	Clock_1s => Clock_1s,
	Clock_100k => Clock_100k,
	Consultar => Consultar,
	cont => cont,
	dificil => dificil,
	Disp_Decenas => Disp_Decenas,
	Disp_Unidades => Disp_Unidades,
	En_cont => En_cont,
	ESTADOS => ESTADOS,
	facil => facil,
	Jugar => Jugar,
	Led_Am => Led_Am,
	Led_Az => Led_Az,
	Led_Oport => Led_Oport,
	Led_p => Led_p,
	Led_R => Led_R,
	Led_V => Led_V,
	medio => medio,
	Puntos => Puntos,
	Reset => Reset,
	Rojo => Rojo,
	Start => Start,
	Verde => Verde
	);

-- Clock_100k
t_prcs_Clock_100k: PROCESS
BEGIN
LOOP
	Clock_100k <= '0';
	WAIT FOR 50 ps;
	Clock_100k <= '1';
	WAIT FOR 50 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock_100k;

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 5000 ps;
	Clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;

-- Clock_1s
t_prcs_Clock_1s: PROCESS
BEGIN
LOOP
	Clock_1s <= '0';
	WAIT FOR 10000 ps;
	Clock_1s <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock_1s;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '0';
	WAIT FOR 10000 ps;
	Reset <= '1';
WAIT;
END PROCESS t_prcs_Reset;

-- Start
t_prcs_Start: PROCESS
BEGIN
	Start <= '0';
	WAIT FOR 10000 ps;
	Start <= '1';
	WAIT FOR 20000 ps;
	Start <= '0';
WAIT;
END PROCESS t_prcs_Start;

-- Jugar
t_prcs_Jugar: PROCESS
BEGIN
	Jugar <= '0';
	WAIT FOR 10000 ps;
	Jugar <= '1';
	WAIT FOR 50000 ps;
	Jugar <= '0';
WAIT;
END PROCESS t_prcs_Jugar;

-- Consultar
t_prcs_Consultar: PROCESS
BEGIN
	Consultar <= '0';
WAIT;
END PROCESS t_prcs_Consultar;

-- Rojo
t_prcs_Rojo: PROCESS
BEGIN
	Rojo <= '0';
	WAIT FOR 170000 ps;
	Rojo <= '1';
	WAIT FOR 20000 ps;
	Rojo <= '0';
WAIT;
END PROCESS t_prcs_Rojo;

-- Verde
t_prcs_Verde: PROCESS
BEGIN
	Verde <= '0';
	WAIT FOR 350000 ps;
	Verde <= '1';
	WAIT FOR 30000 ps;
	Verde <= '0';
WAIT;
END PROCESS t_prcs_Verde;

-- Amarillo
t_prcs_Amarillo: PROCESS
BEGIN
	Amarillo <= '0';
	WAIT FOR 700000 ps;
	Amarillo <= '1';
	WAIT FOR 30000 ps;
	Amarillo <= '0';
WAIT;
END PROCESS t_prcs_Amarillo;

-- Azul
t_prcs_Azul: PROCESS
BEGIN
	Azul <= '0';
	WAIT FOR 530000 ps;
	Azul <= '1';
	WAIT FOR 30000 ps;
	Azul <= '0';
WAIT;
END PROCESS t_prcs_Azul;
END Proyecto_arch;
