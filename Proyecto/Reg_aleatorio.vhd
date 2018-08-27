library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

Entity Reg_aleatorio is 
Port(Clock,Reset,Enable,Load : 	IN std_logic;
	A0,A1,A2,A3: In std_logic_vector (4 downto 0);
	Reg_R, Reg_V, Reg_Am, Reg_Az: Out std_logic_vector (4 downto 0));
End Reg_aleatorio;

Architecture sol of Reg_aleatorio is 
signal S0, S1, S2, S3: std_logic_vector(4 downto 0);

begin
process(clock,reset) is
begin
if (reset='0') then
S0<="00000";
S1<="00000";
S2<="00000";
S3<="00000";

elsif (clock'event and clock='1') then
	if load='1' then
	S0<="00000";
	S1<="00000";
	S2<="00000";
	S3<="00000";

	else
		if enable='1' then
			   S0<=A0;
				S1<=A1;
				S2<=A2;
				S3<=A3;
			end if;
		end if;			
	end if;
end process;
Reg_R<=S0;
Reg_V<=S1;
Reg_Am<=S2;
Reg_Az<=S3;

end sol;
