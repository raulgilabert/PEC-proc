LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

LIBRARY work;
USE work.renacuajo_pkg.all;

ENTITY control_l IS
    PORT (ir         : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op         : OUT INST;
          ldpc       : OUT STD_LOGIC;
          wrd        : OUT STD_LOGIC;
          addr_a     : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_b     : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d     : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed      : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          wr_m       : OUT STD_LOGIC;
          in_d       : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
          immed_x2   : OUT STD_LOGIC;
          word_byte  : OUT STD_LOGIC;
		    Rb_N       : OUT STD_LOGIC;
			 addr_io	   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			 wr_out		: OUT STD_LOGIC;
			 rd_in		: OUT STD_LOGIC
		 );
END control_l; 

ARCHITECTURE Structure OF control_l IS
	SIGNAL arit_log: INST;
	SIGNAL cmp: INST;
	SIGNAL mul_div: INST;
	SIGNAL jump: INST;
	SIGNAL move: INST;
	SIGNAL branch: INST;
	SIGNAL IO: INST;
	SIGNAL jump_wd: std_logic;
BEGIN

	with ir(5 downto 3) select
		arit_log <= AND_I when "000", -- AND
					OR_I  WHEN "001", -- OR
					XOR_I WHEN "010", -- XOR
					NOT_I WHEN "011", -- NOT
					ADD_I WHEN "100", -- ADD
					SUB_I WHEN "101", -- SUB
					SHA_I WHEN "110", -- SHA
					SHL_I WHEN others;-- SHL
						
	with ir(5 downto 3) select
		cmp <= CMPLT_I when "000", -- CMPLT
			   CMPLE_I WHEN "001", -- CMPLE
			   CMPEQ_I WHEN "011", -- CMPEQ
			   CMPLTU_I WHEN "100", -- CMPLTU
			   CMPLEU_I WHEN others;-- CMPLEU

	with ir(5 downto 3) select
		mul_div <= MUL_I when "000", -- MUL
				   MULH_I WHEN "001", -- MULH
				   MULHU_I WHEN "010", -- MULHU
				   DIV_I WHEN "100", -- DIV
				   DIVU_I WHEN others;-- DIVU
				 
	with ir(2 downto 0) select
		jump <= JZ_I when "000", -- JZ
				JNZ_I when "001", -- JNZ
				JMP_I when "011", -- JMP
				JAL_I when others;-- JAL

	with ir(8) select
		move <= MOVI_I when '0', -- MOVI
				MOVHI_I when others; -- MOVHI
	
	with ir(8) select
		branch <= BZ_I when '0', -- BZ
				  BNZ_I when others; -- BNZ
				  
	with ir(8) select
		io <= IN_I when '0', -- BZ
				OUT_I when others; -- BNZ
				  
				  
	with ir(15 DOWNTO 12) select
		op <= arit_log when "0000", --ARIT_LOGIC
			  cmp when "0001", --CMP
			  ADDI_I when "0010", -- ADDI
			  LD_I when "0011", --LD
			  ST_I when "0100", -- ST
			  move when "0101", --MOVI i MOVHI
			  branch when "0110", -- BZ & BNZ
			  mul_div when "1000", --MUL & DIV
			  jump when "1010", --JAL
		      LDB_I when "1101", --LDB
			  STB_I when "1110", -- STB
			  HALT_I when "1111", -- HALT
			  NOP_I when others;

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
					 ir(11 downto 9) when "0111",
					 ir(11 downto 9) when "1010",
					 ir(2 downto 0) when others;

	with ir(15 downto 12) select
		immed <= ir(7) & ir(7) & ir(7) & ir(7) & ir(7) & ir(7) & ir(7) & ir(7) & ir(7 downto 0) when "0101",
					ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5) & ir(5 downto 0) when others;

					
	with ir(2 downto 0) select
		jump_wd <= '1' when "100",
					  '0' when others;
					

	wrd <= '1' when ir(15 downto 12) = "0000" else --op arit
			 '1' when ir(15 downto 12) = "0001" else --cmp
			 '1' when ir(15 downto 12) = "0010" else --addi
			 '1' when ir(15 downto 12) = "0011" else --ld
			 '1' when ir(15 downto 12) = "0101" else --movi movhiº
			 '1' when ir(15 downto 12) = "1000" else -- mul & div
			 jump_wd when ir(15 downto 12) = "1010" else --jal
			 '1' when ir(15 downto 12) = "1101" else --ldb
			 '1' when ir(15 downto 12) = "0111" and ir(8) = '0' else --in
			 '0';
					
	--with ir(15 downto 12) select
		--wrd <= '1' when "0000", 						--op arit
			--   '1' when "0001", 						--comparacions
			  -- '1' when "0010", 						--addi
			   --'1' when "0011", 						--ld
			  -- '1' when "0101", 						--movi i movhi
				--'1' when "1000",						-- mul & div
			   --jump_wd when "1010", 	--jal
			   --'1' when "1101",			--ldb
			   --'0' when others;

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
		
	in_d <= "01" when ir(15 downto 12) = "0011" else --st
			  "01" when ir(15 downto 12) = "1101" else --stb
			  "10" when ir(15 downto 12) = "1010" else --jal
			  "11" when ir(15 downto 12) = "0111" and ir(8) = '0' else --in
			  "00";
		
	--with ir(15 downto 12) select -- ara in_d te dos bits
		--in_d <= "01" when "0011",   --st
			--	  "01" when "1101", --stb
				--  "10" when "1010", --jal
				  --"00" when others;
	
	wr_out <= '1' when ir(15 downto 12) = "0111" and ir(8) = '1'  else --OUT
				 '0';

	rd_in <= '1' when ir(15 downto 12) = "0111" and ir(8) = '0' else --IN
				'0';
	
	addr_io <= ir(7 downto 0);

END Structure;
