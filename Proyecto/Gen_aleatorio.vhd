library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

Entity Gen_aleatorio is 

Port(Clock,Reset,Enable,Load : 	IN std_logic;
	Cont: In std_logic_vector (4 downto 0);
	Led_R, Led_V, Led_Am, Led_Az, Q: Out std_logic_vector (4 downto 0));
End Gen_aleatorio;

Architecture sol of Gen_aleatorio is 

signal So,S1,S2,S3,S4: std_logic_vector(4 downto 0);
signal Cont_i: std_logic_vector(6 downto 0);

Begin
 Process(clock,reset,enable) is
 begin

 if Reset ='0' then So<="00000"; S1<="00000"; S2<="00000"; S3<="00000"; S4<="00000"; Cont_i<="0000000";
 
 elsif (clock'event and clock='1') then 
	if load='1' then So<="00000"; S1<="00000"; S2<="00000"; S3<="00000"; S4<="00000"; Cont_i<="0000000";
	 else
	   if enable='1' then So<=Cont; So<=So+'1'; Cont_i<=Cont_i+'1';
			if Cont_i="0011001" then S1<=So(0)&So(1)&So(2)&So(3)&So(4); end if;
			if Cont_i="0110010" then S2<=So(0)&So(1)&So(2)&So(3)&So(4); end if;
			if Cont_i="1001011" then S3<=So(0)&So(1)&So(2)&So(3)&So(4); end if;
			if Cont_i="1100100" then S4<=So(0)&So(1)&So(2)&So(3)&So(4); end if;
			if So="11111" then So<="00000"; end if;
			if Cont_i="1100100" then Cont_i<="0000000"; end if;
	   else So<=Cont; 
	   end if;
	 end if;
	end if;
end process;
Q<=So;
Led_R<=S1;
Led_V<=S2;
Led_Am<=S3;
Led_Az<=S4;
end sol;
