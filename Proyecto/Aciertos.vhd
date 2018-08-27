library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

Entity Aciertos is 

Port(A0,A1: In std_logic_vector (3 downto 0);
	S0: 	Out std_logic);
End Aciertos;

Architecture sol of Aciertos is
signal Q0,Q1,Q2,Q3: std_logic;
Begin 
	Q0<='1' when (A0(0)=A1(0) and A1="0001") else '0';
	Q1<='1' when (A0(1)=A1(1) and A1="0010") else '0';
	Q2<='1' when (A0(2)=A1(2) and A1="0100") else '0';
	Q3<='1' when (A0(3)=A1(3) and A1="1000") else '0';
	S0<='1' when (Q0='1' or Q1='1' or Q2='1' or Q3='1') else '0';
end sol;
