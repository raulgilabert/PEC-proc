LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;        --Esta libreria sera necesaria si usais conversiones TO_INTEGER
USE ieee.std_logic_unsigned.all; --Esta libreria sera necesaria si usais conversiones CONV_INTEGER

ENTITY regfile IS
    PORT (clk    : IN  STD_LOGIC;
          wrd    : IN  STD_LOGIC;
          d      : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          addr_a : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          a      : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END regfile;


ARCHITECTURE Structure OF regfile IS
	TYPE t_regs is array(0 to 7) of std_logic_vector(15 downto 0);
	SIGNAL regs: t_regs;

BEGIN
	PROCESS (clk)
	BEGIN
		if rising_edge(clk) then
			if (wrd = '1') then
				regs(to_integer(unsigned(addr_d))) <= d;
			END if;
		END if;
	END PROCESS;
	
	a <= regs(to_integer(unsigned(addr_a)));
END Structure;