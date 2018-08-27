library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity Fin_Juego is
	Port ( A: in STD_LOGIC_VECTOR(1 downto 0);
	       B: in STD_LOGIC_VECTOR(5 downto 0);
		    Fin : OUT STD_LOGIC);
end Fin_Juego;

Architecture sol of Fin_Juego is
Begin
	Fin<='1' when (A="11" or B="00") else '0';
end sol;