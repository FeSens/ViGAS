	component FPGA_VGA is
		port (
			clk_clk            : in    std_logic                     := 'X';             -- clk
			reset_reset_n      : in    std_logic                     := 'X';             -- reset_n
			memory_mem_a       : out   std_logic_vector(12 downto 0);                    -- mem_a
			memory_mem_ba      : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck      : out   std_logic;                                        -- mem_ck
			memory_mem_ck_n    : out   std_logic;                                        -- mem_ck_n
			memory_mem_cke     : out   std_logic;                                        -- mem_cke
			memory_mem_cs_n    : out   std_logic;                                        -- mem_cs_n
			memory_mem_ras_n   : out   std_logic;                                        -- mem_ras_n
			memory_mem_cas_n   : out   std_logic;                                        -- mem_cas_n
			memory_mem_we_n    : out   std_logic;                                        -- mem_we_n
			memory_mem_reset_n : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq      : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- mem_dq
			memory_mem_dqs     : inout std_logic                     := 'X';             -- mem_dqs
			memory_mem_dqs_n   : inout std_logic                     := 'X';             -- mem_dqs_n
			memory_mem_odt     : out   std_logic;                                        -- mem_odt
			memory_mem_dm      : out   std_logic;                                        -- mem_dm
			memory_oct_rzqin   : in    std_logic                     := 'X';             -- oct_rzqin
			fpga_vga_red       : out   std_logic_vector(1 downto 0);                     -- red
			fpga_vga_green     : out   std_logic_vector(1 downto 0);                     -- green
			fpga_vga_blue      : out   std_logic_vector(1 downto 0);                     -- blue
			fpga_vga_vga_hs    : out   std_logic;                                        -- vga_hs
			fpga_vga_vga_vs    : out   std_logic;                                        -- vga_vs
			fpga_vga_vga_clk   : out   std_logic;                                        -- vga_clk
			fpga_vga_vga_sync  : out   std_logic;                                        -- vga_sync
			fpga_vga_vga_blank : out   std_logic                                         -- vga_blank
		);
	end component FPGA_VGA;

	u0 : component FPGA_VGA
		port map (
			clk_clk            => CONNECTED_TO_clk_clk,            --      clk.clk
			reset_reset_n      => CONNECTED_TO_reset_reset_n,      --    reset.reset_n
			memory_mem_a       => CONNECTED_TO_memory_mem_a,       --   memory.mem_a
			memory_mem_ba      => CONNECTED_TO_memory_mem_ba,      --         .mem_ba
			memory_mem_ck      => CONNECTED_TO_memory_mem_ck,      --         .mem_ck
			memory_mem_ck_n    => CONNECTED_TO_memory_mem_ck_n,    --         .mem_ck_n
			memory_mem_cke     => CONNECTED_TO_memory_mem_cke,     --         .mem_cke
			memory_mem_cs_n    => CONNECTED_TO_memory_mem_cs_n,    --         .mem_cs_n
			memory_mem_ras_n   => CONNECTED_TO_memory_mem_ras_n,   --         .mem_ras_n
			memory_mem_cas_n   => CONNECTED_TO_memory_mem_cas_n,   --         .mem_cas_n
			memory_mem_we_n    => CONNECTED_TO_memory_mem_we_n,    --         .mem_we_n
			memory_mem_reset_n => CONNECTED_TO_memory_mem_reset_n, --         .mem_reset_n
			memory_mem_dq      => CONNECTED_TO_memory_mem_dq,      --         .mem_dq
			memory_mem_dqs     => CONNECTED_TO_memory_mem_dqs,     --         .mem_dqs
			memory_mem_dqs_n   => CONNECTED_TO_memory_mem_dqs_n,   --         .mem_dqs_n
			memory_mem_odt     => CONNECTED_TO_memory_mem_odt,     --         .mem_odt
			memory_mem_dm      => CONNECTED_TO_memory_mem_dm,      --         .mem_dm
			memory_oct_rzqin   => CONNECTED_TO_memory_oct_rzqin,   --         .oct_rzqin
			fpga_vga_red       => CONNECTED_TO_fpga_vga_red,       -- fpga_vga.red
			fpga_vga_green     => CONNECTED_TO_fpga_vga_green,     --         .green
			fpga_vga_blue      => CONNECTED_TO_fpga_vga_blue,      --         .blue
			fpga_vga_vga_hs    => CONNECTED_TO_fpga_vga_vga_hs,    --         .vga_hs
			fpga_vga_vga_vs    => CONNECTED_TO_fpga_vga_vga_vs,    --         .vga_vs
			fpga_vga_vga_clk   => CONNECTED_TO_fpga_vga_vga_clk,   --         .vga_clk
			fpga_vga_vga_sync  => CONNECTED_TO_fpga_vga_vga_sync,  --         .vga_sync
			fpga_vga_vga_blank => CONNECTED_TO_fpga_vga_vga_blank  --         .vga_blank
		);

