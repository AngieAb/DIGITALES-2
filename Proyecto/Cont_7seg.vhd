library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

Entity Cont_7seg is
port (reset, clock, load, enable: in std_logic;
		seg_7: Out std_logic);
end Cont_7seg;

architecture sol of Cont_7seg is
signal a: std_logic_vector(2 downto 0);
begin
process(clock,reset) is
begin

if reset ='0' then a<="000"; seg_7<='0';
 elsif (clock'event and clock='1') then
	if load='1' then
	a<="000"; seg_7<='0'; 
	else
	  if enable='1' then
	    if a="111" then a<="000"; seg_7<='1';
	    else a<=a+"001"; seg_7<='0';
	    end if;
		else a<="000"; seg_7<='0';
	  end if;
	end if;
end if;
end process;
end sol;