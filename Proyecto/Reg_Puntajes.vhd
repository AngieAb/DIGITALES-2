library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

Entity Reg_Puntajes is 
Port(Clock,Reset,En_reg,En_rev,Load : 	IN std_logic;
	A0: In std_logic_vector (5 downto 0);
	dir: In std_logic_vector (3 downto 0);
	P0,P1,P2,P3,P4,P5,P6,P7,P8,P9: Out std_logic_vector (5 downto 0);
	Cont_i: out std_logic_vector(3 downto 0);
	Reg_P: out std_logic);
	
End Reg_Puntajes;

Architecture sol of Reg_Puntajes is 
signal S0,S1,S2,S3,S4,S5,S6,S7,S8,S9: std_logic_vector(5 downto 0);
signal cont: std_logic_vector(3 downto 0);
begin
process(clock,reset) is
begin
if (reset='0') then
S0<="000000";
S1<="000000";
S2<="000000";
S3<="000000";
S4<="000000";
S5<="000000";
S6<="000000";
S7<="000000";
S8<="000000";
S9<="000000";
Cont<="0000";

elsif (clock'event and clock='1') then
	if load='1' then
	S0<="000000";
	S1<="000000";
   S2<="000000";
   S3<="000000";
   S4<="000000";
   S5<="000000";
   S6<="000000";
   S7<="000000";
   S8<="000000";
   S9<="000000";
	Cont<="0000";

	else
		if En_reg='1' then
			      if dir="0000" then S0<=A0; Reg_P<='0';
				elsif dir="0001" then S1<=A0; Reg_P<='0';
				elsif dir="0010" then S2<=A0; Reg_P<='0';
				elsif dir="0011" then S3<=A0; Reg_P<='0';
				elsif dir="0100" then S4<=A0; Reg_P<='0';
				elsif dir="0101" then S5<=A0; Reg_P<='0';
				elsif dir="0110" then S6<=A0; Reg_P<='0';
				elsif dir="0111" then S7<=A0; Reg_P<='0';
				elsif dir="1000" then S8<=A0; Reg_P<='0';
				elsif dir="1001" then S9<=A0; Reg_P<='0';
				end if;
		 end if;
		 if En_rev='1' then
      		if (A0>S0) then cont<="0000"; Reg_P<='1'; S1<=S0; S2<=S1; S3<=S2; S4<=S3; S5<=S4; S6<=S5; S7<=S6; S8<=S7; S9<=S8;
				elsif (A0>S1) then cont<="0001"; Reg_P<='1'; S2<=S1; S3<=S2; S4<=S3; S5<=S4; S6<=S5; S7<=S6; S8<=S7; S9<=S8;
				elsif (A0>S2) then cont<="0010"; Reg_P<='1'; S3<=S2; S4<=S3; S5<=S4; S6<=S5; S7<=S6; S8<=S7; S9<=S8;
				elsif (A0>S3) then cont<="0011"; Reg_P<='1'; S4<=S3; S5<=S4; S6<=S5; S7<=S6; S8<=S7; S9<=S8;
				elsif (A0>S4) then cont<="0100"; Reg_P<='1'; S5<=S4; S6<=S5; S7<=S6; S8<=S7; S9<=S8;
				elsif (A0>S5) then cont<="0101"; Reg_P<='1'; S6<=S5; S7<=S6; S8<=S7; S9<=S8;
				elsif (A0>S6) then cont<="0110"; Reg_P<='1'; S7<=S6; S8<=S7; S9<=S8;
				elsif (A0>S7) then cont<="0111"; Reg_P<='1'; S8<=S7; S9<=S8;
				elsif (A0>S8) then cont<="1000"; Reg_P<='1'; S9<=S8;
				elsif (A0>S9) then cont<="1001"; Reg_P<='1';
				end if;
		end if;
		end if;			
	end if;
end process;
cont_i<=cont;
P0<=S0;
P1<=S1;
P2<=S2;
P3<=S3;
P4<=S4;
P5<=S5;
P6<=S6;
P7<=S7;
P8<=S8;
P9<=S9;

end sol;
