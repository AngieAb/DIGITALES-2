library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

entity Mux_3a1 is
port(
	s1,s0: in std_logic;
	A0, A1, A2: in std_logic_vector(5 downto 0);
	B: out std_logic_vector(5 downto 0));
end Mux_3a1;

architecture sol of Mux_3a1 is

begin

process(s0,s1)
begin
	if s1='0' then
		if s0='0' then B<=A0(5 downto 0);
		else B<=A1(5 downto 0);
		end if;
	else
		if s0='0' then B<=A2(5 downto 0);
		end if;
	end if;
end process;
end sol;