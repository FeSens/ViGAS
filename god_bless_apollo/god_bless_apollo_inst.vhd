	component god_bless_apollo is
		port (
			clk_clk              : in    std_logic                     := 'X';             -- clk
			reset_reset_n        : in    std_logic                     := 'X';             -- reset_n
			memory_mem_a         : out   std_logic_vector(14 downto 0);                    -- mem_a
			memory_mem_ba        : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck        : out   std_logic_vector(0 downto 0);                     -- mem_ck
			memory_mem_ck_n      : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
			memory_mem_cke       : out   std_logic_vector(0 downto 0);                     -- mem_cke
			memory_mem_cs_n      : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
			memory_mem_dm        : out   std_logic_vector(3 downto 0);                     -- mem_dm
			memory_mem_ras_n     : out   std_logic_vector(0 downto 0);                     -- mem_ras_n
			memory_mem_cas_n     : out   std_logic_vector(0 downto 0);                     -- mem_cas_n
			memory_mem_we_n      : out   std_logic_vector(0 downto 0);                     -- mem_we_n
			memory_mem_reset_n   : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq        : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			memory_mem_dqs       : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n     : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			memory_mem_odt       : out   std_logic_vector(0 downto 0);                     -- mem_odt
			oct_rzqin            : in    std_logic                     := 'X';             -- rzqin
			memory_0_mem_a       : out   std_logic_vector(12 downto 0);                    -- mem_a
			memory_0_mem_ba      : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_0_mem_ck      : out   std_logic;                                        -- mem_ck
			memory_0_mem_ck_n    : out   std_logic;                                        -- mem_ck_n
			memory_0_mem_cke     : out   std_logic;                                        -- mem_cke
			memory_0_mem_cs_n    : out   std_logic;                                        -- mem_cs_n
			memory_0_mem_ras_n   : out   std_logic;                                        -- mem_ras_n
			memory_0_mem_cas_n   : out   std_logic;                                        -- mem_cas_n
			memory_0_mem_we_n    : out   std_logic;                                        -- mem_we_n
			memory_0_mem_reset_n : out   std_logic;                                        -- mem_reset_n
			memory_0_mem_dq      : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- mem_dq
			memory_0_mem_dqs     : inout std_logic                     := 'X';             -- mem_dqs
			memory_0_mem_dqs_n   : inout std_logic                     := 'X';             -- mem_dqs_n
			memory_0_mem_odt     : out   std_logic;                                        -- mem_odt
			memory_0_mem_dm      : out   std_logic;                                        -- mem_dm
			memory_0_oct_rzqin   : in    std_logic                     := 'X';             -- oct_rzqin
			vga_green            : out   std_logic_vector(7 downto 0);                     -- green
			vga_red              : out   std_logic_vector(7 downto 0);                     -- red
			vga_blue             : out   std_logic_vector(7 downto 0);                     -- blue
			vga_hs               : out   std_logic;                                        -- hs
			vga_vs               : out   std_logic;                                        -- vs
			vga_vga_clk          : out   std_logic;                                        -- vga_clk
			vga_vga_sync         : out   std_logic;                                        -- vga_sync
			vga_vga_blank        : out   std_logic                                         -- vga_blank
		);
	end component god_bless_apollo;

	u0 : component god_bless_apollo
		port map (
			clk_clk              => CONNECTED_TO_clk_clk,              --      clk.clk
			reset_reset_n        => CONNECTED_TO_reset_reset_n,        --    reset.reset_n
			memory_mem_a         => CONNECTED_TO_memory_mem_a,         --   memory.mem_a
			memory_mem_ba        => CONNECTED_TO_memory_mem_ba,        --         .mem_ba
			memory_mem_ck        => CONNECTED_TO_memory_mem_ck,        --         .mem_ck
			memory_mem_ck_n      => CONNECTED_TO_memory_mem_ck_n,      --         .mem_ck_n
			memory_mem_cke       => CONNECTED_TO_memory_mem_cke,       --         .mem_cke
			memory_mem_cs_n      => CONNECTED_TO_memory_mem_cs_n,      --         .mem_cs_n
			memory_mem_dm        => CONNECTED_TO_memory_mem_dm,        --         .mem_dm
			memory_mem_ras_n     => CONNECTED_TO_memory_mem_ras_n,     --         .mem_ras_n
			memory_mem_cas_n     => CONNECTED_TO_memory_mem_cas_n,     --         .mem_cas_n
			memory_mem_we_n      => CONNECTED_TO_memory_mem_we_n,      --         .mem_we_n
			memory_mem_reset_n   => CONNECTED_TO_memory_mem_reset_n,   --         .mem_reset_n
			memory_mem_dq        => CONNECTED_TO_memory_mem_dq,        --         .mem_dq
			memory_mem_dqs       => CONNECTED_TO_memory_mem_dqs,       --         .mem_dqs
			memory_mem_dqs_n     => CONNECTED_TO_memory_mem_dqs_n,     --         .mem_dqs_n
			memory_mem_odt       => CONNECTED_TO_memory_mem_odt,       --         .mem_odt
			oct_rzqin            => CONNECTED_TO_oct_rzqin,            --      oct.rzqin
			memory_0_mem_a       => CONNECTED_TO_memory_0_mem_a,       -- memory_0.mem_a
			memory_0_mem_ba      => CONNECTED_TO_memory_0_mem_ba,      --         .mem_ba
			memory_0_mem_ck      => CONNECTED_TO_memory_0_mem_ck,      --         .mem_ck
			memory_0_mem_ck_n    => CONNECTED_TO_memory_0_mem_ck_n,    --         .mem_ck_n
			memory_0_mem_cke     => CONNECTED_TO_memory_0_mem_cke,     --         .mem_cke
			memory_0_mem_cs_n    => CONNECTED_TO_memory_0_mem_cs_n,    --         .mem_cs_n
			memory_0_mem_ras_n   => CONNECTED_TO_memory_0_mem_ras_n,   --         .mem_ras_n
			memory_0_mem_cas_n   => CONNECTED_TO_memory_0_mem_cas_n,   --         .mem_cas_n
			memory_0_mem_we_n    => CONNECTED_TO_memory_0_mem_we_n,    --         .mem_we_n
			memory_0_mem_reset_n => CONNECTED_TO_memory_0_mem_reset_n, --         .mem_reset_n
			memory_0_mem_dq      => CONNECTED_TO_memory_0_mem_dq,      --         .mem_dq
			memory_0_mem_dqs     => CONNECTED_TO_memory_0_mem_dqs,     --         .mem_dqs
			memory_0_mem_dqs_n   => CONNECTED_TO_memory_0_mem_dqs_n,   --         .mem_dqs_n
			memory_0_mem_odt     => CONNECTED_TO_memory_0_mem_odt,     --         .mem_odt
			memory_0_mem_dm      => CONNECTED_TO_memory_0_mem_dm,      --         .mem_dm
			memory_0_oct_rzqin   => CONNECTED_TO_memory_0_oct_rzqin,   --         .oct_rzqin
			vga_green            => CONNECTED_TO_vga_green,            --      vga.green
			vga_red              => CONNECTED_TO_vga_red,              --         .red
			vga_blue             => CONNECTED_TO_vga_blue,             --         .blue
			vga_hs               => CONNECTED_TO_vga_hs,               --         .hs
			vga_vs               => CONNECTED_TO_vga_vs,               --         .vs
			vga_vga_clk          => CONNECTED_TO_vga_vga_clk,          --         .vga_clk
			vga_vga_sync         => CONNECTED_TO_vga_vga_sync,         --         .vga_sync
			vga_vga_blank        => CONNECTED_TO_vga_vga_blank         --         .vga_blank
		);

