library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

Entity Reg_Color is 

Port(Clock,Reset,Enable,Load : 	IN std_logic;
	Colores   : In std_logic_vector (3 downto 0);
	S: Out std_logic_vector (3 downto 0));
End Reg_Color;

Architecture sol of Reg_Color is 
SIGNAL Q1: STD_LOGIC_VECTOR(3 downto 0);
Begin
		
	PROCESS(Clock, Reset,Load)
	BEGIN
		if (reset='0') then Q1 <= "0000";
		elsif (clock'event and clock='1') then
			if load='1' then Q1 <= "0000"; 
			else 
				if enable='1' then Q1<=Colores;	
				end if;
			end if;
		end if;
	END PROCESS;
	S <= Q1;
end sol;
