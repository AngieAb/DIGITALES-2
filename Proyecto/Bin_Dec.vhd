library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Bin_Dec is
port (A: in std_logic_vector (5 downto 0);
      B: out std_logic_vector (2 downto 0));
        end Bin_Dec;
architecture solution of Bin_Dec is
begin


with A select
 
B<="000" when "000000", --0
	"100" when "000001", --1
	"110" when "000010", --2
	"111" when others; --3

end solution;
