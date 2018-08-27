library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

Entity Cont_Down is 

Port(Clock,Reset,Enable,Load : 	IN std_logic;
	A0: In std_logic_vector (5 downto 0);
	Oprt: Out std_logic_vector (5 downto 0));
End Cont_Down;

Architecture sol of Cont_Down is 
signal cont: std_logic_vector(5 downto 0);
begin
process(clock,reset) is
begin
if reset ='0' then
 cont<=A0;
 elsif clock'event and clock='1' then
	if load='1' then
	 cont<=A0;
	else
	  if enable='1' then
	 	cont<=cont-'1';
		if cont="000000" then cont<=A0; end if;
	  end if;
	end if;
end if;
end process;
Oprt<=cont;
end sol;
