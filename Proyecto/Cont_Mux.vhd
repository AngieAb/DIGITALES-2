library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

entity Cont_Mux is
port (clock,reset,enable,load: in std_logic;
		So: out std_logic;
		Q: out std_logic_vector(3 downto 0));
end Cont_Mux;
architecture solucion of Cont_Mux is
signal a: std_logic_vector(3 downto 0);
signal A1: std_logic;
begin
process(clock,reset) is
begin
if reset ='0' then
	a<="0000"; A1<='0';
	elsif clock'event and clock='1' then
	if load='1' then
	a<="0000"; A1<='0';
	else
	if enable='1' then
	a<=a+"0001";
	if a="1010" then a<="0000"; A1<='1'; end if;
	end if;
	end if;
end if;

end process;
Q<=a;
SO<=a1;

end solucion;