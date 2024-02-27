LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY datapath IS
    PORT (clk    : IN STD_LOGIC;
          op     : IN STD_LOGIC;
          wrd    : IN STD_LOGIC;
          addr_a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed  : IN STD_LOGIC_VECTOR(15 DOWNTO 0));
END datapath;


ARCHITECTURE Structure OF datapath IS

	COMPONENT regfile IS
		 PORT (clk    : IN  STD_LOGIC;
				 wrd    : IN  STD_LOGIC;
				 d      : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 addr_a : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
				 addr_d : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
				 a      : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT alu IS
		 PORT (x  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 y  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 op : IN  STD_LOGIC;
				 w  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT;
			
	SIGNAL ra: std_logic_vector(15 downto 0);	
	SIGNAL rd: std_logic_vector(15 downto 0);
BEGIN

	reg0: regfile
		PORT map(
			clk => clk,
			wrd => wrd,
			d => rd,
			addr_a => addr_a,
			addr_d => addr_d,
			a => ra
		);
		
	alu0: alu
		PORT map(
			x => ra,
			y => immed,
			op => op,
			w => rd
		);

END Structure;