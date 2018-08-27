library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

Entity Mux_10a1 is 

Port(S : IN std_logic_vector (3 downto 0);
	  A0,A1,A2,A3,A4,A5,A6,A7,A8,A9: In std_logic_vector (5 downto 0);
	  F: Out std_logic_vector (5 downto 0));
End Mux_10a1;

Architecture sol of Mux_10a1 is 
Begin 
	with S select
	F<=A0 when "0000",
	   A1 when "0001",
		A2 when "0010",
		A3 when "0011",
		A4 when "0100",
		A5 when "0101",
		A6 when "0110",
		A7 when "0111",
		A8 when "1000",
		A9 when "1001",
	  "000000" when others;
end sol;
