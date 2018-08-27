library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

Entity Hay_3Leds is 

Port(A0,A1,A2,A3: In std_logic_vector (4 downto 0);
	S0,S1,S2,S3: 	Out std_logic);
End Hay_3Leds;

Architecture sol of Hay_3Leds is 
Begin
 with A0 select
 S0<='1' when "11100",
     '1' when "11101",
     '1' when "01110",
     '1' when "00111",
	  '1' when "10111",
	  '1' when "11110",
	  '1' when "01111",
	  '1' when "11111",
	  '0' when others;
	  
 with A1 select
 S1<='1' when "11100",
     '1' when "11101",
     '1' when "01110",
     '1' when "00111",
	  '1' when "10111",
	  '1' when "11110",
	  '1' when "01111",
	  '1' when "11111",
	  '0' when others;
	  
 with A2 select
 S2<='1' when "11100",
     '1' when "11101",
     '1' when "01110",
     '1' when "00111",
	  '1' when "10111",
	  '1' when "11110",
	  '1' when "01111",
	  '1' when "11111",
	  '0' when others;
	  
 with A3 select
 S3<='1' when "11100",
     '1' when "11101",
     '1' when "01110",
     '1' when "00111",
	  '1' when "10111",
	  '1' when "11110",
	  '1' when "01111",
	  '1' when "11111",
	  '0' when others;
 
end sol;
