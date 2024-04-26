library ieee;
USE ieee.std_logic_1164.all;

entity multi is
    port(clk       : IN  STD_LOGIC;
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
         word_byte : OUT STD_LOGIC);
end entity;

architecture Structure of multi is

    -- Aqui iria la declaracion de las los estados de la maquina de estados
		TYPE state_t is (F, DEMW);
    SIGNAL state: state_t;

begin

    -- Aqui iria la mï¿½quina de estados del modelos de Moore que gestiona el multiciclo
    -- Aqui irian la generacion de las senales de control que su valor depende del ciclo en que se esta.
    PROCESS (clk)
    BEGIN
        if rising_edge(clk) then 
            if boot = '1' then 
                state <= F;
            elsif state = F then 
					state <= DEMW;
				else 
					state <= F;
            END if;
        END if;
    END PROCESS;
	
	PROCESS (state)
	BEGIN
		case state is
            when F =>   
                ldpc <= '0';
                ldir <= '1';
                wrd <= '0';
                wr_m <= '0';
                word_byte <= '0';
					 ins_dad <= '0';
            when DEMW =>
                ldir <= '0';
                ins_dad <= '1';
                wrd <= wrd_l;
                wr_m <= wr_m_l;
                word_byte <= w_b;
                ldpc <= ldpc_l;
		END case;
	END PROCESS;
				

        


end Structure;