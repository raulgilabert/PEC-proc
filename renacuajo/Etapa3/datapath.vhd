LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY datapath IS
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
          in_d     : IN  STD_LOGIC;
		  Rb_N     : IN  STD_LOGIC;
          addr_m   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          data_wr  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END datapath;


ARCHITECTURE Structure OF datapath IS

	COMPONENT regfile IS
		 PORT (clk    : IN  STD_LOGIC;
				 wrd    : IN  STD_LOGIC;
				 d      : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 addr_a : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
				 addr_b : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
				 addr_d : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
				 a      : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				 b      : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT alu IS
		 PORT (x  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 y  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 op : IN  STD_LOGIC_VECTOR(4 downto 0);
				 w  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT;
			
	SIGNAL ra: std_logic_vector(15 downto 0);	
	SIGNAL rb: std_logic_vector(15 downto 0);	
	SIGNAL rd: std_logic_vector(15 downto 0);
	SIGNAL d: std_logic_vector(15 downto 0);
	SIGNAL rd_alu: std_logic_vector(15 downto 0);
	SIGNAL rd_mem: std_logic_vector(15 downto 0);
	SIGNAL immed_out: std_logic_vector(15 downto 0);
	SIGNAL rb_out: std_logic_vector(15 downto 0);
BEGIN

	reg0: regfile
		PORT map(
			clk => clk,
			wrd => wrd,
			d => d,
			addr_a => addr_a,
			addr_b => addr_b,
			addr_d => addr_d,
			a => ra,
			b => rb
		);
		
	alu0: alu
		PORT map(
			x => ra,
			y => rb_out,
			op => op,
			w => rd_alu
		);


	with in_d select
		rd <= rd_alu when '0',
				rd_mem when others;
				
	with ins_dad select
		addr_m <= pc when '0',
					 rd_alu when others;
					 
	with immed_x2 select
		immed_out <= immed when '0',
						 immed(14 downto 0) & '0' when others;
	
	data_wr <= rb;

	with Rb_N select
		rb_out <= rb when '1',
				  immed_out when others; 

	with in_d select
		d <= rd when '0',
			  datard_m when others;
	
END Structure;