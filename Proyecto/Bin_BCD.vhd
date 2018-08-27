library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity Bin_BCD is
    GENERIC(
        NBITS  : integer :=  6; -- Cantidad de bits del número binario.
        NSALIDA: integer :=  8  -- Cantidad de bits de salida en formato BCD.
    );
    PORT(
        A: in  STD_LOGIC_VECTOR(NBITS-1   downto 0);
        B: out STD_LOGIC_VECTOR(NSALIDA-1 downto 0)
    );
end Bin_BCD;
 
architecture Behavioral of Bin_BCD is
begin
    proceso_bcd: process(A)
        variable z: STD_LOGIC_VECTOR(NBITS+NSALIDA-1 downto 0);
    begin
        -- Inicialización de datos en cero.
        z := (others => '0');
        -- Se realizan los primeros tres corrimientos.
        z(NBITS+2 downto 3) := A;
        -- Ciclo para las iteraciones restantes.
        for i in 0 to NBITS-4 loop
            -- Unidades (4 bits).
            if z(NBITS+3 downto NBITS) > 4 then
                z(NBITS+3 downto NBITS) := z(NBITS+3 downto NBITS) + 3;
            end if;
            -- Decenas (4 bits).
            if z(NBITS+7 downto NBITS+4) > 4 then
                z(NBITS+7 downto NBITS+4) := z(NBITS+7 downto NBITS+4) + 3;
            end if;
				-- Corrimiento a la izquierda.
            z(NBITS+NSALIDA-1 downto 1) := z(NBITS+NSALIDA-2 downto 0);
        end loop;
        -- Pasando datos de variable Z, correspondiente a BCD.
        B <= z(NBITS+NSALIDA-1 downto NBITS);
    end process;
end Behavioral;