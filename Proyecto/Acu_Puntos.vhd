library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

Entity Acu_Puntos is 

Port(Clock,Reset,Enable,Load : 	IN std_logic;
	A0: In std_logic_vector (5 downto 0);
	A1: In std_logic_vector (5 downto 0);
	T_pts: Out std_logic_vector (5 downto 0));
End Acu_Puntos;

Architecture sol of Acu_Puntos is 
SIGNAL Q1: STD_LOGIC_VECTOR(5 downto 0);
BEGIN
	
	PROCESS(clock, reset,load)
	BEGIN
		if (reset='0') then Q1 <= "000000";
		elsif (clock'event and clock='1') then
			if load='1' then Q1 <= "000000"; 
			else 
				if enable='1' then Q1 <= (A0+A1);	
				end if;
			end if;
		end if;
	END PROCESS;
	T_pts <= Q1;
end sol;
