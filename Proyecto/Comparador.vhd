library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity Comparador is
	Port ( A,B: in STD_LOGIC_VECTOR(5 downto 0);
		    A_mayorigual_B : OUT STD_LOGIC);
end Comparador;

Architecture sol of Comparador is
Begin
	A_mayorigual_B<='1' when (A>B)or(A=B) else '0';
end sol;