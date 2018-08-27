library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

Entity Cont_1Reg is
port (reset, clock, load, enable: in std_logic;
			cont: out std_logic_vector (5 downto 0);
			S: Out std_logic);
end Cont_1Reg;

architecture sol of Cont_1Reg is
signal a: std_logic_vector(5 downto 0);
begin
process(clock,reset) is
begin

if reset ='0' then a<="000000"; S<='0';
 elsif (clock'event and clock='1') then
	if load='1' then
	a<="000000"; s<='0'; 
	else
	  if enable='1' then a<=a+"001";
	    if a="000000" then s<='1';
		 elsif a="111111" then a<="000000";
	    else s<='1';
	    end if;
	  end if;
	end if;
end if;
end process;
cont<=a;
end sol;