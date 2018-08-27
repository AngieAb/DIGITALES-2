library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

Entity Mux_2a1 is 

Port(S1: IN std_logic;
	  A0,A1: In std_logic_vector (4 downto 0);
	  F: Out std_logic_vector (4 downto 0));
End Mux_2a1;

Architecture sol of Mux_2a1 is 
Begin 
process(s1)
begin
if (s1='0') then
	F<=A0(4 downto 0);
else
	F<=A1(4 downto 0);
end if;
end process;
end sol;
