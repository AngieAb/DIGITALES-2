library ieee;
use ieee.std_logic_1164.all;
entity Controlador is
port ( Clock, Reset, Start, Jugar, Consulta, Or_Colores, Acierto, Mayor_a12, Son_7s, Son_4s, Son_3s, Son_2s, Son_1s, Facil, Medio, Dificil, Reg_Pts, Fin, son_10, Reg_1C: in std_logic;
		 En_ale, L_ale, En_Reg, L_Reg, En_Rc, L_Rc, En_Clr, En_Pts, L_Pts, En_Cd, L_Cd, En_Cp, L_Cp, En_Rpts, L_Rpts, En_Acu, L_Acu, En_Cm, L_Cm, En_seg1, L_seg, So, S1, S2,En_seg2, En_seg3, En_seg4, En_seg7, L_cont, En_cont, En_rev: out std_logic;
		 estados: out std_logic_vector (4 downto 0));
 end Controlador;
 architecture solucion of Controlador is
type estado is (t1,t2,t3,t4,t5,t6,t7, t7_1,t8,t9,t10,t11,t12,t12_1,t13,t14,t15,t16,t17,t17_1,t18,t19,t20,t21, t21_1, t22,t23,t24,t25,t26 );
	signal y: estado;
begin
	process (Reset, clock)
	begin
		if Reset='0' then y<=t1;
		elsif clock'event and clock='1' then
	case y is
	when t1 => if Start='0' then y<=t1; else y<=t2; end if;
	when t2 => if Start='1' then y<=t2; else y<=t3; end if;
	when t3 => if Jugar='0' then if Consulta='0' then y<=t3; else y<=t25; end if; else y<=t4; end if; 
	when t4 => if Jugar='1' then y<=t4; else if Facil='0' then if Medio='0' then if Dificil='0' then y<=t20; else y<=t15; end if; else y<=t10; end if; else y<=t5; end if; end if;
	when t5 => if Son_4s='0' then y<=t5; else y<=t6; end if;
	when t6 => if Son_2s='0' then if Reg_1C='0' then if  Or_Colores='0' then y<=t6; else y<=t7; end if; else y<=t6; end if; else y<=t20; end if;
	when t7 => y<=t7_1;
	when t7_1 => if Acierto='0' then y<=t9; else y<=t8; end if;
	when t8 => y<=t6;
	when t9 => y<=t6;
	when t10 => if Son_3s='0' then y<=t10; else y<=t11; end if;
	when t11 => if Son_1s='0' then if Reg_1C='0' then If Or_Colores='0' then y<=t11; else y<=t12; end if; else y<=t11; end if; else y<=t20; end if;
	when t12 => y<= t12_1;
	when t12_1 => if Acierto='0' then y<=t14; else y<=t13; end if;
	when t13 => y<=t11;
	when t14 => y<=t11;
	when t15 => if Son_2s='0' then y<=t15; else y<=t16; end if;
	when t16 => if Son_1s='0' then if Reg_1C='0' then If Or_Colores='0' then y<=t16; else y<=t17; end if; else y<=t16; end if; else y<=t20; end if;
	when t17 => y<=t17_1;
	when t17_1 => if Acierto='0' then y<=t19; else y<=t18; end if;
	when t18 => y<=t16;
	when t19 => y<=t16;
	when t20 => if Fin='0' then If Mayor_a12='0' then y<=t4; else y<=t21; end if; else y<=t22; end if;
	when t21 => y<=t21_1; 
	when t21_1 => y<=t4;
	when t22 => If Reg_Pts='0' then y<=t24; else y<=t23; end if;
	when t23 => y<=t24;
	when t24 => if Son_7s='0' then y<=t24; else y<=t2; end if;
	when t25 => If son_2s='0' then y<=t25; else y<=t26; end if;
	when t26 => If son_10='0' then y<=t25; else y<=t2; end if;
	

	
	end case;
		end if;
	end process;
	
process(y)
begin
	 En_ale<='0'; L_ale<='0'; En_Reg<='0'; L_Reg<='0'; En_Rc<='0'; L_Rc<='0'; En_Clr<='0'; En_Pts<='0'; L_Pts<='0'; En_Cd<='0'; L_Cd<='0'; En_Cp<='0'; L_Cp<='0'; En_Rpts<='0'; L_Rpts<='0'; En_Acu<='0'; 
	 L_Acu<='0'; En_Cm<='0'; L_Cm<='0'; En_seg1<='0'; L_seg<='0'; So<='0'; S1<='0'; S2<='0'; estados<="00000";En_seg2<='0';En_seg3<='0';En_seg4<='0';En_seg7<='0'; L_cont<='0'; En_cont<='0'; En_rev<='0';
	 
	 
	case y is
    
	when t1 => L_Ale<='1'; L_Reg<='1'; L_Rc<='1'; L_Pts<='1'; L_Acu<='1'; L_Cd<='1'; L_Cp<='1'; L_Rpts<='1'; L_Cm<='1'; L_Seg<='1'; L_cont<='1'; estados<="00001";
	when t2 => L_Reg<='1'; L_Rc<='1'; L_Pts<='1'; L_Acu<='1'; L_Cd<='1'; L_Cp<='1'; L_Cm<='1'; L_Seg<='1'; L_cont<='1'; estados<="00010";
	when t3 => estados<="00011";
	when t4 => En_Ale<='1'; estados<="00100";
	when t5 => En_Reg<='1'; So<='1'; En_seg4<='1'; L_cont<='1'; estados<="00101";
	when t6 => En_seg2<='1'; estados<="00110";
	when t7 => En_Rc<='1'; En_seg2<='1'; En_cont<='1'; estados<="00111";
	when t7_1 => En_seg2<='1'; estados<="00000";
	when t8 => En_Pts<='1'; En_Clr<='1'; En_seg2<='1'; estados<="01000";
	when t9 => En_Clr<='1'; En_Cd<='1'; En_seg2<='1'; estados<="01001";
	when t10 => En_Reg<='1'; So<='1'; En_seg3<='1'; L_cont<='1'; estados<="01010";
	when t11 => En_seg1<='1'; estados<="01011";
	when t12 => En_Rc<='1'; En_seg1<='1'; En_cont<='1'; estados<="01100";
	when t12_1 => En_seg1<='1'; estados<="00000";
	when t13 => En_Pts<='1'; En_Clr<='1';En_seg1<='1'; estados<="01101";
	when t14 => En_Clr<='1'; En_Cd<='1';En_seg1<='1'; estados<="01110";
	when t15 => En_Reg<='1'; So<='1'; En_seg2<='1'; L_cont<='1'; estados<="01111";
	when t16 => En_seg1<='1';estados<="10000";
	when t17 => En_Rc<='1';En_seg1<='1'; En_cont<='1'; estados<="10001";
	when t17_1 => En_seg1<='1'; estados<="00000";
	when t18 => En_Pts<='1'; En_Clr<='1';En_seg1<='1'; estados<="10010";
	when t19 => En_Clr<='1'; En_Cd<='1';En_seg1<='1'; estados<="10011";
	when t20 => estados<="10100";
	when t21 => En_Cp<='1'; L_Pts<='1'; En_Acu<='1'; estados<="10101";
	when t21_1 => estados<="10101";
	when t22 => En_Acu<='1'; S1<='1'; En_rev<='1'; estados<="10110";
	when t23 => En_Rpts<='1'; S1<='1'; estados<="10111";
	when t24 => En_seg7<='1'; S1<='1'; estados<="11000";
	when t25 => En_seg2<='1';S2<='1'; estados<="11001";
	when t26 => L_seg<='1'; S2<='1'; En_Cm<='1'; estados<="11010";
	
	END Case;

end process;
end solucion;