library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

entity Cont_Up is
port (Clock,Reset,enable,load: in std_logic;
		Nivel: out std_logic_vector(1 downto 0);
		Facil, Medio, Dificil: out std_logic);
end Cont_Up;
architecture solucion of Cont_Up is
signal a: std_logic_vector(1 downto 0);
signal f,m,d: std_logic;
begin
process(clock,reset) is
begin
if reset ='0' then
	a<="00"; f<='0'; m<='0'; d<='0';
	
	elsif clock'event and clock='1' then
	if load='1' then a<="00"; f<='0'; m<='0'; d<='0';
	else
	 if enable='1' then a<=a+"01"; end if;
  	  if a="10" then f<='0'; m<='0'; d<='1'; end if;
	  if a="01" then f<='0'; m<='1'; d<='0'; end if;
	  if a="00" then f<='1'; m<='0'; d<='0'; end if;
	  if a="11" then a<="00"; end if;	 
	end if;
end if;
end process;
Nivel<=a;
Facil<=f; Medio<=m; Dificil<=d;
end solucion;