LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY control_l IS
    PORT (ir        : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op        : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
          ldpc      : OUT STD_LOGIC;
          wrd       : OUT STD_LOGIC;
          addr_a    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_b    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          wr_m      : OUT STD_LOGIC;
          in_d      : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
          immed_x2  : OUT STD_LOGIC;
          word_byte : OUT STD_LOGIC;
		    Rb_N      : OUT STD_LOGIC);
END control_l; 

ARCHITECTURE Structure OF control_l IS
	SIGNAL arit_log: std_logic_vector(4 downto 0);
	SIGNAL cmp: std_logic_vector(4 downto 0);
	SIGNAL mul_div: std_logic_vector(4 downto 0);
	SIGNAL jump: std_logic_vector(4 downto 0);
	SIGNAL jump_wd: std_logic;
BEGIN

	with ir(5 downto 3) select
		arit_log <= "00010" when "000", -- AND
						"00011" WHEN "001", -- OR
						"00100" WHEN "010", -- XOR
						"00101" WHEN "011", -- NOT
						"00110" WHEN "100", -- ADD
						"00111" WHEN "101", -- SUB
						"01000" WHEN "110", -- SHA
						"01001" WHEN others;-- SHL
						
	with ir(5 downto 3) select
		cmp <= "01010" when "000", -- CMPLT
				 "01011" WHEN "001", -- CMPLE
				 "01100" WHEN "011", -- CMPEQ
				 "01101" WHEN "100", -- CMPLTU
				 "01110" WHEN others;-- CMPLEU

	with ir(5 downto 3) select
		mul_div <= "01111" when "000", -- MUL
					  "10000" WHEN "001", -- MULH
					  "10001" WHEN "010", -- MULHU
					  "10010" WHEN "100", -- DIV
					  "10011" WHEN others;-- DIVU
				 
	with ir(2 downto 0) select
		jump <= "10110" when "000", -- JZ
				  "10111" when "001", -- JNZ
				  "11000" when "011", -- JMP
				  "11001" when others;-- JAL
				 
	with ir(15 DOWNTO 12) select
		op <= "0000" & ir(8) when "0101", --MOVI i MOVHI
			  arit_log when "0000",        --ARIT_LOGIC
			  cmp when "0001",        --CMP
			  mul_div when "1000",        --MUL & DIV
			  "00110" when "0011", --LD
			  "00110" when "0100", -- ST
			  "00110" when "1011", --LDB
			  "00110" when "1100", -- STB
			  "00110" when "0010", -- ADDI
			  "1010" & ir(8) when "0110", -- BZ & BNZ
			  jump when "1010",
			  "XXXXX" when others;    
		


	with ir(15 downto 12) select
		Rb_N <= '1' when "0010", --ADDI
				'1' when "0011", --LD	
				'1' when "0100", --ST
				'1' when "0101", --MOVI i MOVHI
				'1' when "1101", --LDB
				'1' when "1110", --STB
				'0' when others;

	with ir(15 downto 12) select
		addr_a <= ir(11 downto 9) when "0101",
					 ir(8 downto 6) when others;

	addr_d <= ir(11 downto 9);
	with ir(15 downto 12) select
		addr_b <= ir(11 downto 9) when "0100",
					 ir(11 downto 9) when "1110",
					 ir(11 downto 9) when "0110",
					 ir(2 downto 0) when others;

	with ir(15 downto 12) select
		immed <= ir(7) & ir(7) & ir(7) & ir(7) & ir(7) & ir(7) & ir(7) & ir(7) & ir(7 downto 0) when "0101",
					ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5 downto 0) when others;

					
	with ir(2 downto 0) select
		jump_wd <= '1' when "100",
					  '0' when others;
					

	with ir(15 downto 12) select
		wrd <= '1' when "0000", 						--op arit
			   '1' when "0001", 						--comparacions
			   '1' when "0010", 						--addi
			   '1' when "0011", 						--ld
			   '1' when "0101", 						--movi i movhi
				'1' when "1000",						-- mul & div
			   jump_wd when "1010", 	--jal
			   '1' when "1101",							--ldb
			   '0' when others;

	 with ir(15 downto 12) select
		wr_m <= '1' when "0100",
				  '1' when "1110",
				  '0' when others;
				  
	with ir(15 downto 12) select
		word_byte <= '1' when "1101",
						 '1' when "1110",
						 '0' when others;
	
	with (ir) select
		ldpc <= '0' when x"FFFF",
				  '1' when others;
				  
	with ir(15 downto 12) select
		immed_x2 <= '1' when "0011",
						'1' when "0100",
						'1' when "0110",
						'0' when others;
						
	with ir(15 downto 12) select -- ara in_d te dos bits
		in_d <= "01" when "0011",   --st
				  "01" when "1101", --stb
				  "10" when "1010", --jal
				  "00" when others;
	
END Structure;
