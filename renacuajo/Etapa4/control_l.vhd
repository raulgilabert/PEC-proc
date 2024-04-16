-------------------------------------------------------
--! @file
--! @brief Lògica del control
-------------------------------------------------------

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
	
BEGIN

	with ir(15 DOWNTO 12) & ir(5 DOWNTO 0) select
		op <= "0000" & ir(8) when "0101------", --MOVI o MOVHI
			  "00010" when "0000000---",        --AND
			  "00011" when "0000001---",		 --OR
			  "00100" when "0000010---",        --XOR
			  "00101" when "0000011---",        --NOT
			  "00110" when "0000100---", 		--ADD
			  "00111" when "0000101---",        --SUB
			  "01000" when "0000110---",        --SHA
			  "01001" when "0000111---",        --SHL
			  "01010" when "0001000---",        --CMPLT
			  "01011" when "0001001---",        --CMPLE
			  "01100" when "0001011---",        --CMPEQ
			  "01101" when "0001100---",        --CMPLTU
			  "01110" when "0001101---",        --CMPLEU
			  "01111" when "1000000---",        --MUL
			  "10000" when "1000001---",        --MULH
			  "10001" when "1000010---",        --MULHU
			  "10010" when "1000100---",        --DIV
			  "10011" when "1000101---",        --DIVU
			  "1010" & ir(8) when "0110------", --BZ o BNZ
			  "10110" when "1010000000",        --JZ
			  "10111" when "1010000001",        --JNZ
			  "11000" when "1010000011",        --JMP
			  "11001" when "1010000100",        --JAL 
			  "XXXXX" when others;    

	with ir(15 downto 12) select
		Rb_N <= '1' when "0010", --ADDI
				'1' when "0011", --LD	
				'1' when "0100", --ST
				'1' when "0101", --MOVI i MOVHI
				'1' when "1101", --LDB
				'1' when "1110", --STB
				--'1' when "0110", --BZ i BNZ	   --aqui no ha de passar el immed
				--'1' when "1010", --JZ, JNZ i JAL
				'0' when others;

	with ir(15 downto 12) select
		addr_a <= ir(11 downto 9) when "0101",
					 ir(8 downto 6) when others;

	addr_d <= ir(11 downto 9);
	with ir(15 downto 12) select
		addr_b <= ir(11 downto 9) when "0100",
					 ir(11 downto 9) when "1110",
					 ir(2 downto 0) when others;

	with ir(15 downto 12) select
		immed <= ir(7) & ir(7) & ir(7) & ir(7) & ir(7) & ir(7) & ir(7) & ir(7) & ir(7 downto 0) when "0101",
					ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5 downto 0) when others;


	with ir(15 downto 12) select
		wrd <= '1' when "0000", 						--op arit
			   '1' when "0001", 						--comparacions
			   '1' when "0010", 						--addi
			   '1' when "0011", 						--ld
			   '1' when "0101", 						--movi i movhi
			   '0' when "1010", 	--jal
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
						'1' when "0110",
						'0' when others;
						
	with ir(15 downto 12) select -- ara in_d te dos bits
		in_d <= "01" when "0011",   --st
				  "01" when "1101", --stb
				  "10" when "1010", --jal
				  "00" when others;
	
END Structure;
