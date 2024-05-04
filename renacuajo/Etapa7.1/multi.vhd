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

    -- Aqui iria la m quina de estados del modelos de Moore que gestiona el multiciclo
    -- Aqui irian la generacion de las senales de control que su valor depende del ciclo en que se esta.
    PROCESS (clk, boot)
    BEGIN
        if boot = '1' then 
            state <= F;
        elsif rising_edge(clk) then 
            case state is
                F =>
                    state <= DEMW;
                DEMW => 
                    state <= F;
            END case;
        END if;
    END PROCESS;

    ldir <= '1' when state = F else '0';
    ins_dad <= '0' when state = F else '1';

    wrd <= wrd_l when state = DEMW else '0';
    wr_m <= wr_m_l when state = DEMW else '0';
    word_byte <= w_b when state = DEMW else '0';
    ldpc <= ldpc_l when state = DEMW else '0';

end Structure;