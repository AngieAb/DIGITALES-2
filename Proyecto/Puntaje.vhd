library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

Entity Puntaje is 

Port(Clock,Reset,En_0,En_1,Load : 	IN std_logic;
	A0: In std_logic_vector (5 downto 0);
	Puntos: Out std_logic_vector (5 downto 0));
End Puntaje;

Architecture sol of Puntaje is 
SIGNAL Q1: STD_LOGIC_VECTOR(5 downto 0);
BEGIN
	
	PROCESS(clock, reset,load)
	BEGIN
		if (reset='0') then Q1 <= "000000";
		elsif (clock'event and clock='1') then
			if load='1' then Q1 <= "000000"; 
			else 
				if (En_0='1' and En_1='1') then Q1<= A0+"000011";	
				elsif (En_0='1' and En_1='0') then 
				  if Q1="000000" then Q1 <= "000000";
				  elsif Q1="000001" then Q1 <= "000000";
				  else Q1<= A0-"000010";
				  end if;
				else Q1<=A0;
				end if;
			end if;
		end if;
	END PROCESS;
	Puntos<= Q1;
end sol;
