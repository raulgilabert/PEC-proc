library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity SRAMController is
    port (clk         : in    std_logic;
          -- se�ales para la placa de desarrollo
          SRAM_ADDR   : out   std_logic_vector(17 downto 0); -- adreça dades
          SRAM_DQ     : inout std_logic_vector(15 downto 0); -- bus de dades
          SRAM_UB_N   : out   std_logic; -- upper byte
          SRAM_LB_N   : out   std_logic; -- lower byte
          SRAM_CE_N   : out   std_logic := '1'; -- chip enable
          SRAM_OE_N   : out   std_logic := '1'; -- output enable
          SRAM_WE_N   : out   std_logic := '1'; -- write enable
          -- se�ales internas del procesador
          address     : in    std_logic_vector(15 downto 0) := x"0000";
          dataReaded  : out   std_logic_vector(15 downto 0);
          dataToWrite : in    std_logic_vector(15 downto 0);
          WR          : in    std_logic;
          byte_m      : in    std_logic := '0');
end SRAMController;

architecture comportament of SRAMController is
	
begin
	PROCESS (clk)
	BEGIN
		if rising_edge(clk) then
			if WR = '0' then
				SRAM_ADDR <= 
			END if;
		END if;
	
	END;

end comportament;
