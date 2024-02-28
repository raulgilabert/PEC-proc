LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY alu IS
    PORT (x  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          y  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
          w  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END alu;


ARCHITECTURE Structure OF alu IS


BEGIN

	with op select
		w <= y when "00",
			  y(7 downto 0) & x(7 downto 0) when "01",
			  std_logic_vector(to_signed(to_integer(signed(x), 16) + to_integer(signed(y), 16))) when others;
			  
END Structure;