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
		 PORT ( ir        : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
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

	COMPONENT multi IS 
		PORT (  clk       : IN  STD_LOGIC;
				boot      : IN  STD_LOGIC;
				ldpc_l    : IN  STD_LOGIC;
				wrd_l     : IN  STD_LOGIC;
				wr_m_l    : IN  STD_LOGIC;
				w_b       : IN  STD_LOGIC;
				ldpc      : OUT STD_LOGIC;
				wrd       : OUT STD_LOGIC;
				wr_m      : OUT STD_LOGIC;
				ldir      : OUT STD_LOGIC;
				ins_dad   : OUT STD_LOGIC;
				word_byte : OUT STD_LOGIC
		);
	END COMPONENT;


	SIGNAL ir: std_logic_vector(15 downto 0);
	SIGNAL ir_reg: std_logic_vector(15 downto 0);
	SIGNAL pc_s: std_logic_vector(15 downto 0);
	SIGNAL ldpc: std_logic;
	SIGNAL ldir: std_logic;
	SIGNAL ldpc_s: std_logic;
	SIGNAL wrd_s: std_logic;
	SIGNAL wr_m_s: std_logic;
	SIGNAL word_byte_s: std_logic;
	
BEGIN
	PROCESS (clk)
	BEGIN
		if rising_edge(clk) then
			if boot = '1' then
				pc_s <= x"C000";
			elsif ldpc = '0' then
				pc_s <= pc_s;
			else
				pc_s <= pc_s + 2;
			END if;
			
			if boot = '1' then 
				ir <= x"0000";
			elsif ldir = '1' then
				ir <= datard_m;
			else
				ir <= ir;
			END if;
		END if;
	END PROCESS;

	pc <= pc_s;
	
	m: multi
		PORT map(
			clk => clk,
			boot => boot,
			ldpc_l => ldpc_s,
			wrd_l => wrd_s,
			wr_m_l => wr_m_s,
			w_b => word_byte_s,
			ldpc => ldpc,
			wrd => wrd,
			wr_m => wr_m,
			ldir => ldir,
			ins_dad => ins_dad,
			word_byte => word_byte
		);
	
	c_l: control_l
		PORT map(
			ir => ir,
			op => op,
			ldpc => ldpc_s,
			wrd => wrd_s,
			addr_a => addr_a,
			addr_b => addr_b,
			addr_d => addr_d,
			immed => immed,
			wr_m => wr_m_s,
			in_d => in_d,
			immed_x2 => immed_x2,
			word_byte => word_byte_s
		);
	
END Structure;