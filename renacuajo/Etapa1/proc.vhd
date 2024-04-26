LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY proc IS
    PORT (boot     : IN  STD_LOGIC;
          clk      : IN  STD_LOGIC;
          datard_m : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          addr_m   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END proc;


ARCHITECTURE Structure OF proc IS

	COMPONENT unidad_control IS
		PORT(
			boot   : IN  STD_LOGIC;
          clk    : IN  STD_LOGIC;
          ir     : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op     : OUT STD_LOGIC;
          wrd    : OUT STD_LOGIC;
          addr_a : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          pc     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT datapath IS
		PORT(
			clk		: IN STD_LOGIC;
			op			: IN STD_LOGIC;
			wrd		: IN STD_LOGIC;
			addr_a	: IN STD_LOGIC_VECTOR(2 downto 0);
			addr_d	: IN STD_LOGIC_VECTOR(2 downto 0);
			immed		: IN STD_LOGIC_VECTOR(15 downto 0)
		);
	END COMPONENT;
	
	SIGNAL op_s		: STD_LOGIC;
	SIGNAL wrd_s		: STD_LOGIC;
	SIGNAL addr_a_s 	: STD_LOGIC_VECTOR(2 downto 0);
	SIGNAL addr_d_s	: STD_LOGIC_VECTOR(2 downto 0);
	SIGNAL immed_s	: STD_LOGIC_VECTOR(15 downto 0);
	
	
BEGIN

	c0 : unidad_control
		PORT map (
			boot => boot,
			clk => clk,
			ir => datard_m,
			op => op_s,
			wrd => wrd_s,
			addr_a => addr_a_s,
			addr_d => addr_d_s,
			immed => immed_s,
			pc => addr_m
		);
		

	e0: datapath
		PORT map (
			clk => clk,
			op => op_s,
			wrd => wrd_s,
			addr_a => addr_a_s,
			addr_d => addr_d_s,
			immed => immed_s
		);
		
END Structure;