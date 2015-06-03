	component IntrumentUnit is
		port (
			clk_clk                     : in    std_logic                     := 'X';             -- clk
			memory_mem_a                : out   std_logic_vector(12 downto 0);                    -- mem_a
			memory_mem_ba               : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck               : out   std_logic;                                        -- mem_ck
			memory_mem_ck_n             : out   std_logic;                                        -- mem_ck_n
			memory_mem_cke              : out   std_logic;                                        -- mem_cke
			memory_mem_cs_n             : out   std_logic;                                        -- mem_cs_n
			memory_mem_ras_n            : out   std_logic;                                        -- mem_ras_n
			memory_mem_cas_n            : out   std_logic;                                        -- mem_cas_n
			memory_mem_we_n             : out   std_logic;                                        -- mem_we_n
			memory_mem_reset_n          : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq               : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- mem_dq
			memory_mem_dqs              : inout std_logic                     := 'X';             -- mem_dqs
			memory_mem_dqs_n            : inout std_logic                     := 'X';             -- mem_dqs_n
			memory_mem_odt              : out   std_logic;                                        -- mem_odt
			memory_mem_dm               : out   std_logic;                                        -- mem_dm
			memory_oct_rzqin            : in    std_logic                     := 'X';             -- oct_rzqin
			reset_reset_n               : in    std_logic                     := 'X';             -- reset_n
			space_0_conduit_end_red     : out   std_logic_vector(7 downto 0);                     -- red
			space_0_conduit_end_green   : out   std_logic_vector(7 downto 0);                     -- green
			space_0_conduit_end_blue    : out   std_logic_vector(7 downto 0);                     -- blue
			space_0_conduit_end_hs      : out   std_logic;                                        -- hs
			space_0_conduit_end_vs      : out   std_logic;                                        -- vs
			space_0_conduit_end_vga_clk : out   std_logic;                                        -- vga_clk
			space_0_conduit_end_sync    : out   std_logic;                                        -- sync
			space_0_conduit_end_blank   : out   std_logic                                         -- blank
		);
	end component IntrumentUnit;

	u0 : component IntrumentUnit
		port map (
			clk_clk                     => CONNECTED_TO_clk_clk,                     --                 clk.clk
			memory_mem_a                => CONNECTED_TO_memory_mem_a,                --              memory.mem_a
			memory_mem_ba               => CONNECTED_TO_memory_mem_ba,               --                    .mem_ba
			memory_mem_ck               => CONNECTED_TO_memory_mem_ck,               --                    .mem_ck
			memory_mem_ck_n             => CONNECTED_TO_memory_mem_ck_n,             --                    .mem_ck_n
			memory_mem_cke              => CONNECTED_TO_memory_mem_cke,              --                    .mem_cke
			memory_mem_cs_n             => CONNECTED_TO_memory_mem_cs_n,             --                    .mem_cs_n
			memory_mem_ras_n            => CONNECTED_TO_memory_mem_ras_n,            --                    .mem_ras_n
			memory_mem_cas_n            => CONNECTED_TO_memory_mem_cas_n,            --                    .mem_cas_n
			memory_mem_we_n             => CONNECTED_TO_memory_mem_we_n,             --                    .mem_we_n
			memory_mem_reset_n          => CONNECTED_TO_memory_mem_reset_n,          --                    .mem_reset_n
			memory_mem_dq               => CONNECTED_TO_memory_mem_dq,               --                    .mem_dq
			memory_mem_dqs              => CONNECTED_TO_memory_mem_dqs,              --                    .mem_dqs
			memory_mem_dqs_n            => CONNECTED_TO_memory_mem_dqs_n,            --                    .mem_dqs_n
			memory_mem_odt              => CONNECTED_TO_memory_mem_odt,              --                    .mem_odt
			memory_mem_dm               => CONNECTED_TO_memory_mem_dm,               --                    .mem_dm
			memory_oct_rzqin            => CONNECTED_TO_memory_oct_rzqin,            --                    .oct_rzqin
			reset_reset_n               => CONNECTED_TO_reset_reset_n,               --               reset.reset_n
			space_0_conduit_end_red     => CONNECTED_TO_space_0_conduit_end_red,     -- space_0_conduit_end.red
			space_0_conduit_end_green   => CONNECTED_TO_space_0_conduit_end_green,   --                    .green
			space_0_conduit_end_blue    => CONNECTED_TO_space_0_conduit_end_blue,    --                    .blue
			space_0_conduit_end_hs      => CONNECTED_TO_space_0_conduit_end_hs,      --                    .hs
			space_0_conduit_end_vs      => CONNECTED_TO_space_0_conduit_end_vs,      --                    .vs
			space_0_conduit_end_vga_clk => CONNECTED_TO_space_0_conduit_end_vga_clk, --                    .vga_clk
			space_0_conduit_end_sync    => CONNECTED_TO_space_0_conduit_end_sync,    --                    .sync
			space_0_conduit_end_blank   => CONNECTED_TO_space_0_conduit_end_blank    --                    .blank
		);

