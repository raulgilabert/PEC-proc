-------------------------------------------------------
--! @file
--! @brief Processador
-------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY proc IS
	PORT (clk : IN STD_LOGIC;
			boot : IN STD_LOGIC;
			datard_m : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			addr_m : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			data_wr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			wr_m : OUT STD_LOGIC;
			word_byte : OUT STD_LOGIC
	);
END proc;


ARCHITECTURE Structure OF proc IS

	COMPONENT unidad_control IS
	    PORT (boot      : IN  STD_LOGIC;
          clk       : IN  STD_LOGIC;
          datard_m  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			 aluout    : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		    tknbr     : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
          op        : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
          wrd       : OUT STD_LOGIC;
          addr_a    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_b    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          pc        : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          ins_dad   : OUT STD_LOGIC;
          in_d      : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
          immed_x2  : OUT STD_LOGIC;
          wr_m      : OUT STD_LOGIC;
          word_byte : OUT STD_LOGIC;
			 Rb_N		  : OUT STD_LOGIC
		 );
	END COMPONENT;
	
	COMPONENT datapath IS
		 PORT (clk      : IN  STD_LOGIC;
				 op       : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
				 wrd      : IN  STD_LOGIC;
				 addr_a   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
				 addr_b   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
				 addr_d   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
				 immed    : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 immed_x2 : IN  STD_LOGIC;
				 datard_m : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 ins_dad  : IN  STD_LOGIC;
				 pc       : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 in_d     : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
				 Rb_N     : IN STD_LOGIC;
				 addr_m   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				 data_wr  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				 aluout	 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				 tknbr    : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
		 );	
	END COMPONENT;

		SIGNAL immed_x2: std_logic;
		SIGNAL in_d: std_logic_vector(1 downto 0);
		SIGNAL ins_dad: std_logic;
		SIGNAL wrd: std_logic;
		SIGNAL op: std_logic_vector(4 downto 0);
		SIGNAL addr_a: std_logic_vector(2 downto 0);
		SIGNAL addr_b: std_logic_vector(2 downto 0);
		SIGNAL addr_d: std_logic_vector(2 downto 0);
		SIGNAL immed: std_logic_vector(15 downto 0);
		SIGNAL pc: std_logic_vector(15 downto 0);
		SIGNAL Rb_N : std_logic;
		SIGNAL aluout: std_logic_vector(15 downto 0);
		SIGNAL tknbr: std_logic_vector(1 downto 0);
BEGIN

		c0: unidad_control
			PORT map(
				boot => boot,
				clk => clk,
				datard_m => datard_m,
				aluout => aluout,
				tknbr => tknbr,
				op => op,
				wrd => wrd,
				addr_a => addr_a,
				addr_b => addr_b,
				addr_d => addr_d,
				immed => immed,
				pc => pc,
				ins_dad => ins_dad,
				in_d => in_d,
				immed_x2 => immed_x2,
				wr_m => wr_m,
				word_byte => word_byte,
				Rb_N => Rb_N
			);
		
		e0: datapath
			PORT map(
				clk => clk,
				immed_x2 => immed_x2,
				in_d => in_d,
				ins_dad => ins_dad,
				wrd => wrd,
				op => op,
				addr_a => addr_a,
				addr_b => addr_b,
				addr_d => addr_d,
				immed => immed,
				datard_m => datard_m,
				pc => pc,
				addr_m => addr_m,
				data_wr => data_wr,
				Rb_N => Rb_N,
				aluout => aluout,
				tknbr => tknbr
			);
END Structure;