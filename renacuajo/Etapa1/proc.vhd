LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY proc IS
    PORT (boot     : IN  STD_LOGIC;
          clk      : IN  STD_LOGIC;
          datard_m : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          addr_m   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END proc;


ARCHITECTURE Structure OF proc IS

	COMPONENT control_l IS
		PORT(
			ir			: IN	STD_LOGIC_VECTOR(15 downto 0);
			op			: OUT STD_LOGIC;
			ldpc		: OUT STD_LOGIC;
			wrd		: OUT STD_LOGIC;
			addr_a	: OUT STD_LOGIC_VECTOR(2 downto 0);
			addr_d	: OUT STD_LOGIC_VECTOR(2 downto 0);
			immed		: OUT STD_LOGIC_VECTOR(15 downto 0)
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

	SIGNAL op		: STD_LOGIC;
	SIGNAL wrd		: STD_LOGIC;
	SIGNAL addr_a 	: STD_LOGIC_VECTOR(2 downto 0);
	SIGNAL addr_d	: STD_LOGIC_VECTOR(2 downto 0);
	SIGNAL immed	: STD_LOGIC_VECTOR(15 downto 0);
	
BEGIN

	c0: control_l
		PORT map(
			ir => datard_m,
			op => op,
			ldpc 
		);

END Structure;