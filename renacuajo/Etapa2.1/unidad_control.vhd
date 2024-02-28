LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;


ENTITY unidad_control IS
    PORT (boot      : IN  STD_LOGIC;
          clk       : IN  STD_LOGIC;
          datard_m  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op        : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
          wrd       : OUT STD_LOGIC;
          addr_a    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_b    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          pc        : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          ins_dad   : OUT STD_LOGIC;
          in_d      : OUT STD_LOGIC;
          immed_x2  : OUT STD_LOGIC;
          wr_m      : OUT STD_LOGIC;
          word_byte : OUT STD_LOGIC);
END unidad_control;

ARCHITECTURE Structure OF unidad_control IS

	COMPONENT control_l IS
		 PORT (ir        : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 op        : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
				 ldpc      : OUT STD_LOGIC;
				 wrd       : OUT STD_LOGIC;
				 addr_a    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
				 addr_b    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
				 addr_d    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
				 immed     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				 wr_m      : OUT STD_LOGIC;
				 in_d      : OUT STD_LOGIC;
				 immed_x2  : OUT STD_LOGIC;
				 word_byte : OUT STD_LOGIC
		);
	END COMPONENT;

	SIGNAL new_pc	: STD_LOGIC_VECTOR(15 downto 0);
	SIGNAL ldpc		: STD_LOGIC;
	SIGNAL ir		: STD_LOGIC_VECTOR(15 downto 0);
BEGIN

		
	
	pc <= new_pc;
		
	PROCESS (clk)
	BEGIN
	
		if rising_edge(clk) then
			if boot = '1' then
				new_pc <= x"C000";
				ir <= x"0000";
			elsif ldpc = '0' then
				new_pc <= new_pc;
			else 
				new_pc <= new_pc + 2;
			END if;
		END if;
	END PROCESS;
				
	c0: control_l
		PORT map(
			ir => ir,
			op => op,
			ldpc => ldpc,
			wrd => wrd,
			addr_a => addr_a,
			addr_d => addr_d,
			immed => immed
		);
			

END Structure;