-- generic con size, input de vector con los datos
-- funcionamiento

-- process con for con if rising y dentro poner luz dependiendo de calor en vector

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

ENTITY MorseChar IS
  PORT (
    clk: IN std_logic;
    reset: IN std_logic;
    data: IN std_logic_vector(12 DOWNTO 0); -- 12 bits máximo de datos termina con 00
    led_data: OUT std_logic;
    end_char: OUT std_logic
  );
END MorseChar;


ARCHITECTURE Structure OF MorseChar IS

  SIGNAL bit_counter: std_logic_vector(3 downto 0);
  SIGNAL bit_counter_s: std_logic_vector(3 downto 0);
  SIGNAL end_char_s: std_logic;

BEGIN
  PROCESS (clk)
  BEGIN
    if rising_edge(clk) then
      bit_counter_s <= bit_counter + 1;
    END if;
  END PROCESS;
  
  -- si el bit anterior y este es 0 es fin de dato
  end_char_s <= data(to_integer(unsigned(bit_counter)) - 1) nor
                data(to_integer(unsigned(bit_counter)));

  -- se muestra el dato si es 1 en el vector (en morse se controla si se puede mostrar)
  led_data <= data(to_integer(unsigned(bit_counter)));

  -- si se resetea o es fin de dato el contador se pone a 0
  with (0=> reset, 1=> end_char_s) select
    bit_counter <= bit_counter_s when "00",
                   "0000" when others;


  with reset select
    end_char  <= '0' when '1',
                 end_char_s when others;
	
END Structure;



