LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

LIBRARY work;
USE work.renacuajo_pkg.all;

ENTITY tlb IS
    PORT (
        clk     : IN  STD_LOGIC;
        boot    : IN  STD_LOGIC;
        we      : IN  STD_LOGIC; -- ctivar si es vol mapejar
        flush   : IN  STD_LOGIC;
        v_a_f   : IN  STD_LOGIC; -- quan es vol mapejar una pagina virtual a fisica
        addr    : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
        tag_in  : IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
        v_tag   : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        f_tag   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        --Excepcions
        miss    : OUT STD_LOGIC;
        pag_inv : OUT STD_LOGIC; -- pagina invalida
        pag_priv: OUT STD_LOGIC; -- pagina privilagiada
        pag_ill : OUT STD_LOGIC  -- pagina read_only
    );
END tlb;

ARCHITECTURE Structure OF tlb IS
    TYPE t_virtual is array(0 to 7) of std_logic_vector(3 downto 0);
    TYPE t_fisica is array(0 to 7) of std_logic_vector(5 downto 0); -- dos bits extra per marcar si es valida (bit 5) o si es nomes de lectura (bit 4)

    SIGNAL virtual : t_virtual;
    SIGNAL fisica : t_fisica;

    SIGNAL miss_s : STD_LOGIC;
    SIGNAL sortida : STD_LOGIC_VECTOR(5 DOWNTO 0);
    SIGNAL pag_tlb : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN

    PROCESS(clk, boot)
    BEGIN
		if rising_edge(clk) then 
			  if boot = '1' then -- inicialitzacio 3 per usuari i 5 per sistema
					fisica(0) <= "100000"; --usuari
					virtual(0) <= x"0";
					fisica(1) <= "100001";
					virtual(1) <= x"1";
					fisica(2) <= "100010";
					virtual(2) <= x"2";
					fisica(3) <= "101000"; --sistema
					virtual(3) <= x"8";
					fisica(4) <= "101100";
					virtual(4) <= x"C";
					fisica(5) <= "101101";
					virtual(5) <= x"D";
					fisica(6) <= "101110";
					virtual(6) <= x"E";
					fisica(7) <= "101111";
					virtual(7) <= x"F";
            elsif flush = '1' then     -- invalidem totes les pàgines
                for i in 0 to 7 loop
                    fisica(i)(5) <= '0';
                end loop;
            elsif we = '1' then
                if v_a_f = '1' then
                    fisica(to_integer(unsigned(addr))) <= tag_in;
                else 
                    virtual(to_integer(unsigned(addr))) <= tag_in(3 downto 0);
                END if;
            END if;
        END if;
    END PROCESS;

        pag_tlb <= x"0" when v_tag = virtual(0) else
                   x"1" when v_tag = virtual(1) else
                   x"2" when v_tag = virtual(2) else
                   x"3" when v_tag = virtual(3) else
                   x"4" when v_tag = virtual(4) else
                   x"5" when v_tag = virtual(5) else
                   x"6" when v_tag = virtual(6) else
                   x"7" when v_tag = virtual(7) else
                   x"8";

        sortida <= fisica(to_integer(unsigned(pag_tlb(2 downto 0))));
        f_tag <= sortida(3 downto 0) when miss_s = '0' else x"0";
        miss <= miss_s;
    -- Excepcions
        miss_s <= '1' when pag_tlb = x"8" else '0';
        pag_inv <= '1' when sortida(5) = '0' else '0';
        pag_priv <= '1' when sortida(3 downto 0) > x"8" and (sortida(3 downto 0) < x"A" or sortida(3 downto 0) > x"B") else '0'; -- Permetem ñes addr de VGA
        pag_ill <= '1' when sortida(4) = '1' else '0';

END Structure;