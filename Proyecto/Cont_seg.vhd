library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

Entity Cont_seg is 

Port(Clock,Reset,Enable,Load : 	IN std_logic;
	   S1,S2,S3,S4,S7: Out std_logic;
		Cont: out std_logic_vector(5 downto 0));
End Cont_seg;

Architecture sol of Cont_seg is 
signal a: std_logic_vector(5 downto 0);
Begin 
process(clock,reset) is
begin

if reset ='0' then a<="000000"; S1<='0'; S2<='0'; S3<='0'; S4<='0'; S7<='0';
 elsif (clock'event and clock='1') then
	if load='1' then
	a<="000000";  S1<='0'; S2<='0'; S3<='0'; S4<='0'; S7<='0';
	else
	  if enable='1' then a<=a+'1';
	    if a="000111" then a<="000000"; s7<='1'; else S7<='0'; end if;
		 if a="000100" then s4<='1'; else S4<='0'; end if;
		 if a="000011" then s3<='1'; else S3<='0'; end if;
		 if a="000010" then s2<='1'; else S2<='0'; end if;
		 if a="000001" then s1<='1'; else S1<='0'; end if;
	     
	  else a<="000000"; S1<='0'; S2<='0'; S3<='0'; S4<='0'; S7<='0';
	  end if;
	end if;
end if;
end process;
cont<=a;
end sol;