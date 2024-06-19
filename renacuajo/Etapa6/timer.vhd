library ieee;
use ieee.std_logic_1164.all;

use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Timer is
    PORT (
        CLOCK_50            		: IN  STD_LOGIC;
        contador_milisegundos		: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );


END Timer;

ARCHITECTURE Structure OF Timer IS

signal contador_ciclos          : STD_LOGIC_VECTOR(15 downto 0):=x"0000";
signal contador_milisegundos_s  : STD_LOGIC_VECTOR(15 downto 0):=x"0000";

BEGIN

process(CLOCK_50)
begin
    if rising_edge(CLOCK_50) then
        if contador_ciclos=0 then
            contador_ciclos<=x"C350"; -- tiempo de ciclo=20ns(50Mhz) 1ms=50000ciclos
            if contador_milisegundos_s>0 then
                contador_milisegundos_s <= contador_milisegundos_s-1;
            end if;
        else
            contador_ciclos <= contador_ciclos-1;
        end if;
    end if;
end process;

contador_milisegundos <= contador_milisegundos_s;

END Structure;