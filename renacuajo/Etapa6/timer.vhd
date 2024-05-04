LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Timer IS
    PORT (
        CLOCK_50    : IN  STD_LOGIC;
        comptador_cicles : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        comptador_milisegons : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
END Timer;

ARCHITECTURE Structure OF Timer IS

signal contador_ciclos : STD_LOGIC_VECTOR(15 downto 0):=x"0000";
signal contador_milisegundos : STD_LOGIC_VECTOR(15 downto 0):=x"0000";

BEGIN

    process(CLOCK_50)
    begin
        if rising_edge(CLOCK_50) then
            if contador_ciclos=0 then
                contador_ciclos<=x"C350"; -- tiempo de ciclo=20ns(50Mhz) 1ms=50000ciclos
                if contador_milisegundos>0 then
                    contador_milisegundos <= contador_milisegundos-1;
                end if;
            else
                contador_ciclos <= contador_ciclos-1;
            end if;
        end if;
    end process;

    comptador_cicles <= contador_ciclos;
    comptador_milisegons <= contador_milisegundos;

END Structure;