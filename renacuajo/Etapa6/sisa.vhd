LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY sisa IS
    PORT (CLOCK_50  : IN    STD_LOGIC;
          SRAM_ADDR : out   std_logic_vector(17 downto 0);
          SRAM_DQ   : inout std_logic_vector(15 downto 0);
          SRAM_UB_N : out   std_logic;
          SRAM_LB_N : out   std_logic;
          SRAM_CE_N : out   std_logic := '1';
          SRAM_OE_N : out   std_logic := '1';
          SRAM_WE_N : out   std_logic := '1';
			 LEDG		  : OUT	 std_LOGIC_VECTOR(7 DOWNTO 0);
			 LEDR		  : OUT	 std_LOGIC_VECTOR(7 DOWNTO 0);
			 HEX0 	  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			 HEX1 	  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			 HEX2		  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			 HEX3		  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			 SW 		  : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
			 KEY		  : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 VGA_R     : out std_logic_vector(7 downto 0); -- vga red pixel value
			 VGA_G     : out std_logic_vector(7 downto 0); -- vga green pixel value
          VGA_B     : out std_logic_vector(7 downto 0); -- vga blue pixel value
			 VGA_HS 	  : out std_logic; -- vga control signal
          VGA_VS    : out std_logic -- vga control signal
		);
	 END sisa;

ARCHITECTURE Structure OF sisa IS

	COMPONENT proc IS
		PORT (
			clk 			: IN STD_LOGIC;
			boot 			: IN STD_LOGIC;
			datard_m 	: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			addr_m 		: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			data_wr 		: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			wr_m 			: OUT STD_LOGIC;
			word_byte	: OUT STD_LOGIC;
			addr_io	  	: out std_LOGIC_VECTOR(7 DOWNTO 0);
			rd_io			: IN std_LOGIC_vector(15 downto 0);
			wr_io			: out std_LOGIC_vector(15 downto 0);
			rd_in			: out std_LOGIC;
			wr_out 		: out std_logic
		);
	END COMPONENT;
	
	COMPONENT MemoryController IS
		PORT (
			CLOCK_50  	: in  std_logic;
	      addr      	: in  std_logic_vector(15 downto 0);
          wr_data   	: in  std_logic_vector(15 downto 0);
          rd_data   	: out std_logic_vector(15 downto 0);
          we        	: in  std_logic;
          byte_m    	: in  std_logic;
          -- se�ales para la placa de desarrollo
          SRAM_ADDR 	: out   std_logic_vector(17 downto 0);
          SRAM_DQ   	: inout std_logic_vector(15 downto 0);
          SRAM_UB_N 	: out   std_logic;
          SRAM_LB_N 	: out   std_logic;
          SRAM_CE_N 	: out   std_logic := '1';
          SRAM_OE_N 	: out   std_logic := '1';
          SRAM_WE_N 	: out   std_logic := '1'
		);
	END COMPONENT;
	
	COMPONENT controladores_io IS
		PORT (
			boot			: IN STD_LOGIC;
			CLOCK_50    : IN std_logic;
			addr_io		: in STD_LOGIC_VECTOR(7 DOWNTO 0);
			wr_io			: IN STD_LOGIC_VECTOR(15 downto 0);
			rd_io			: OUT STD_LOGIC_VECTOR(15 downto 0);
			wr_out		: IN std_LOGIC;
			rd_in			: IN STD_LOGIC;
			led_verdes  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			led_rojos	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			hex			: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			n_hex			: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			SW				: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
			KEY			: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			addr_mem		: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			addr_VGA		: OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
			we_VGA		: OUT STD_LOGIC;
			wr_data_VGA	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			rd_data_VGA	: IN STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT driver7display IS 
		PORT (
			hex		: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			n_hex		: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			HEX0 	  	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX1 	  	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX2		: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX3		: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT vga_controller IS
		PORT (
			clk_50mhz      : in  std_logic; -- system clock signal
         reset          : in  std_logic; -- system reset
         blank_out      : out std_logic; -- vga control signal
         csync_out      : out std_logic; -- vga control signal
         red_out        : out std_logic_vector(7 downto 0); -- vga red pixel value
         green_out      : out std_logic_vector(7 downto 0); -- vga green pixel value
         blue_out       : out std_logic_vector(7 downto 0); -- vga blue pixel value
         horiz_sync_out : out std_logic; -- vga control signal
         vert_sync_out  : out std_logic; -- vga control signal
         --
         addr_vga          : in std_logic_vector(12 downto 0);
         we                : in std_logic;
         wr_data           : in std_logic_vector(15 downto 0);
         rd_data           : out std_logic_vector(15 downto 0);
         byte_m            : in std_logic;
		 vga_cursor        : in std_logic_vector(15 downto 0);  -- simplemente lo ignoramos, este controlador no lo tiene implementado
         vga_cursor_enable : in std_logic
		);	
	END COMPONENT;
	
	SIGNAL rd_data_s 		: std_LOGIC_VECTOR(15 downto 0);
	SIGNAL addr_s 			: STD_LOGIC_VECTOR(15 downto 0);
	SIGNAL wr_data_s 		: STD_LOGIC_VECTOR(15 downto 0);
	SIGNAL we_s 			: STD_LOGIC;
	SIGNAL byte_m_s 		: STD_LOGIC;
	SIGNAL clk_neg 		: STD_LOGIC;
	SIGNAL counter 		: STD_LOGIC_VECTOR(2 downto 0):="111";
	SIGNAL addr_io_s		: STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL rd_io_s			: STD_LOGIC_VECTOR(15 downto 0);
	SIGNAL wr_io_s			: STD_LOGIC_VECTOR(15 downto 0);
	SIGNAL rd_in_s			: STD_LOGIC;
	SIGNAL wr_out_s		: STD_LOGIC;
	SIGNAL hex_s			: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL n_hex_s			: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL addr_VGA_s		: STD_LOGIC_VECTOR(12 DOWNTO 0);
	SIGNAL we_VGA_s		: STD_LOGIC;
	SIGNAL wr_data_VGA_s	: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL rd_data_VGA_s	: STD_LOGIC_VECTOR(15 DOWNTO 0);
BEGIN

	PROCESS (CLOCK_50)
	BEGIN
		if rising_edge(CLOCK_50) then 
			counter <= counter - 1;
		END if;
	END PROCESS;
	
	clk_neg <= counter(2);

	pro0: proc
		PORT map (
			clk => clk_neg,
			boot => SW(9),
			datard_m => rd_data_s,
			addr_m => addr_s,
			data_wr => wr_data_s,
			wr_m => we_s,
			word_byte => byte_m_s,
			addr_io => addr_io_s,
			rd_io => rd_io_s,
			wr_io => wr_io_s,
			rd_in => rd_in_s,
			wr_out => wr_out_s
		);
		
	mem0: MemoryController
		PORT map (
			CLOCK_50 => CLOCK_50,
			addr => addr_s,
			wr_data => wr_data_s,
			rd_data => rd_data_s,
			we => we_s,
			byte_m => byte_m_s,
			SRAM_ADDR => SRAM_ADDR,
			SRAM_DQ => SRAM_DQ,
			SRAM_UB_N => SRAM_UB_N,
			SRAM_LB_N => SRAM_LB_N,
			SRAM_CE_N => SRAM_CE_N,
			SRAM_OE_N => SRAM_OE_N,
			SRAM_WE_N => SRAM_WE_N
		);
		
		io0: controladores_io
			PORT map (
				boot => SW(9),
				CLOCK_50 => CLOCK_50,   
				addr_io => addr_io_s,
				wr_io	=> wr_io_s,
				rd_io => rd_io_s,
				wr_out => wr_out_s,
				rd_in => rd_in_s,
				led_verdes => LEDG,
				led_rojos => LEDR, 
				hex => hex_s,
				n_hex => n_hex_s,
				KEY => KEY,
				SW => SW,
				addr_mem => addr_s,
				addr_VGA => addr_VGA_s,
				we_VGA => we_VGA_s,
				wr_data_VGA => wr_data_VGA_s,
				rd_data_VGA => rd_data_VGA_s
			);
			
		disp: driver7display
			PORT map (
				hex => hex_s,
				n_hex => n_hex_s,
				HEX0 => HEX0,
				HEX1 => HEX1,
				HEX2 => HEX2,
				HEX3 => HEX3
			);
			
		vga_con: vga_controller
			PORT map (
				clk_50mhz => CLOCK_50,
				reset => SW(9), 
				red_out => VGA_R,
				green_out => VGA_G,
				blue_out => VGA_B,
				horiz_sync_out => VGA_HS,
				vert_sync_out => VGA_VS,
				addr_vga => addr_VGA_s,     
				we => we_VGA_s,
				wr_data => wr_data_VGA_s,
				rd_data => rd_data_VGA_s,
				byte_m => byte_m_s,
				vga_cursor => x"0000",
				vga_cursor_enable => '0'
			);

END Structure;