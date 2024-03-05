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

    SIGNAL state: STD_LOGIC;

begin

    -- Aqui iria la m�quina de estados del modelos de Moore que gestiona el multiciclo
    -- Aqui irian la generacion de las senales de control que su valor depende del ciclo en que se esta.
    PROCESS (clk)
    BEGIN
        if rising_edge(clk) then 
            if boot = '1' then 
                state <= '0';
            else 
                state <= not state; 
            END if;
        END if;
    END PROCESS;

    ldir <= not state;
    ins_dad <= state;

    with state select
		wrd <= wrd_l when state = '1',
			   '0' when others;
	
	with state select 
		wr_m <= wr_m_l when state = '1',
				'0' when others;
	
	with state select
		word_byte <= w_b when state '1',
					 '0' when others;

	with state select
		ldpc <= ldpc_l when state = '1';
				'0' when others; 
				

        


end Structure;
