-------------------------------------------------------
--! @file
--! @brief 2:1 Unitat aritmeticològica
-------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY alu IS
    PORT (x  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          y  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
          w  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 z  : OUT STD_LOGIC);
END alu;


ARCHITECTURE Structure OF alu IS

SIGNAL i : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL o : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL o_ex : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL no : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL suma : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sub : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sha : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL shl : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL cmplt : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL cmple : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL cmpeq : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL cmpltu : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL cmpleu : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL movi : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL movhi : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL mul : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mulh : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL mulhu : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL div : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL divu : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL res : STD_LOGIC_VECTOR(15 DOWNTO 0);

BEGIN
    -- es pot optimitzar sobretot les de comparacio
    i <= x and y;
    o <= x or y;
    o_ex <= x xor y;
    no <= not x;
	 suma <= std_logic_vector(unsigned(x) + unsigned(y));
    sub <= std_logic_vector(unsigned(x) - unsigned(y));
    sha <= std_logic_vector(shift_left(signed(x), to_integer(unsigned(y)))) when y(15) = '1'
            else std_logic_vector(shift_right(signed(x), to_integer(unsigned(y))));
    shl <= std_logic_vector(shift_left(unsigned(x), to_integer(unsigned(y)))) when y(15) = '1'
            else std_logic_vector(shift_right(unsigned(x), to_integer(unsigned(y))));
    cmplt <= x"0001" when signed(x) < signed(y) else x"0000";
    cmple <= x"0001" when signed(x) = signed(y) or signed(x) < signed(y) else x"0000";
    cmpeq <= x"0001" when signed(x) = signed(y) else x"0000";
    cmpltu <= x"0001" when unsigned(x) < unsigned(y) else x"0000";
    cmpleu <= x"0001" when unsigned(x) = unsigned(y) or unsigned(x) < unsigned(y) else x"0000";
    movi <= y;
    movhi <= y(7 downto 0) & x(7 downto 0);
    mul <= std_logic_vector(signed(x)*signed(y));
    mulh <= mul(31 downto 16);
    mulhu <= std_logic_vector(unsigned(mul))(31 downto 16);
    div <= std_logic_vector(signed(x)/signed(y));
    divu <= std_logic_vector(unsigned(x)/unsigned(y));

    with op select
        res <= movi when "00000",
             movhi when "00001",
             i when "00010",
             o when "00011", 
             o_ex when "00100",
             no when "00101",
             suma when "00110",
             sub when "00111",
             sha when "01000",
             shl when "01001",
             cmplt when "01010",
             cmple when "01011",
             cmpeq when "01100",
             cmpltu when "01101",
             cmpleu when "01110",
             mul(15 downto 0) when "01111",
             mulh when "10000",
             mulhu when "10001",
             div when "10010",
             divu when "10011",
             x when "1011-",
             "XXXXXXXXXXXXXXXX" when others;             
        
	z <= res(0) xor res(1) xor res(2) xor res(3) xor res(4) xor res(5) xor res(6) 
             xor res(7) xor res(8) xor res(9) xor res(10) xor res(11) xor res(12) xor res(13)
             xor res(14) xor res(15);

	w <= res;
	
END Structure;