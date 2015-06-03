	component Instrument_Unit is
		port (
			booster_mem_a            : out   std_logic_vector(14 downto 0);                    -- mem_a
			booster_mem_ba           : out   std_logic_vector(2 downto 0);                     -- mem_ba
			booster_mem_ck           : out   std_logic_vector(0 downto 0);                     -- mem_ck
			booster_mem_ck_n         : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
			booster_mem_cke          : out   std_logic_vector(0 downto 0);                     -- mem_cke
			booster_mem_cs_n         : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
			booster_mem_dm           : out   std_logic_vector(1 downto 0);                     -- mem_dm
			booster_mem_ras_n        : out   std_logic_vector(0 downto 0);                     -- mem_ras_n
			booster_mem_cas_n        : out   std_logic_vector(0 downto 0);                     -- mem_cas_n
			booster_mem_we_n         : out   std_logic_vector(0 downto 0);                     -- mem_we_n
			booster_mem_reset_n      : out   std_logic;                                        -- mem_reset_n
			booster_mem_dq           : inout std_logic_vector(15 downto 0) := (others => 'X'); -- mem_dq
			booster_mem_dqs          : inout std_logic_vector(1 downto 0)  := (others => 'X'); -- mem_dqs
			booster_mem_dqs_n        : inout std_logic_vector(1 downto 0)  := (others => 'X'); -- mem_dqs_n
			booster_mem_odt          : out   std_logic_vector(0 downto 0);                     -- mem_odt
			clk_clk                  : in    std_logic                     := 'X';             -- clk
			memory_mem_a             : out   std_logic_vector(12 downto 0);                    -- mem_a
			memory_mem_ba            : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck            : out   std_logic;                                        -- mem_ck
			memory_mem_ck_n          : out   std_logic;                                        -- mem_ck_n
			memory_mem_cke           : out   std_logic;                                        -- mem_cke
			memory_mem_cs_n          : out   std_logic;                                        -- mem_cs_n
			memory_mem_ras_n         : out   std_logic;                                        -- mem_ras_n
			memory_mem_cas_n         : out   std_logic;                                        -- mem_cas_n
			memory_mem_we_n          : out   std_logic;                                        -- mem_we_n
			memory_mem_reset_n       : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq            : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- mem_dq
			memory_mem_dqs           : inout std_logic                     := 'X';             -- mem_dqs
			memory_mem_dqs_n         : inout std_logic                     := 'X';             -- mem_dqs_n
			memory_mem_odt           : out   std_logic;                                        -- mem_odt
			memory_mem_dm            : out   std_logic;                                        -- mem_dm
			memory_oct_rzqin         : in    std_logic                     := 'X';             -- oct_rzqin
			oct_rzqin                : in    std_logic                     := 'X';             -- rzqin
			reset_reset_n            : in    std_logic                     := 'X';             -- reset_n
			status_local_init_done   : out   std_logic;                                        -- local_init_done
			status_local_cal_success : out   std_logic;                                        -- local_cal_success
			status_local_cal_fail    : out   std_logic;                                        -- local_cal_fail
			vga_r                    : out   std_logic_vector(7 downto 0);                     -- r
			vga_g                    : out   std_logic_vector(7 downto 0);                     -- g
			vga_b                    : out   std_logic_vector(7 downto 0);                     -- b
			vga_hs                   : out   std_logic;                                        -- hs
			vga_vs                   : out   std_logic;                                        -- vs
			vga_sync                 : out   std_logic;                                        -- sync
			vga_vga_clk              : out   std_logic;                                        -- vga_clk
			vga_blank                : out   std_logic                                         -- blank
		);
	end component Instrument_Unit;

	u0 : component Instrument_Unit
		port map (
			booster_mem_a            => CONNECTED_TO_booster_mem_a,            -- booster.mem_a
			booster_mem_ba           => CONNECTED_TO_booster_mem_ba,           --        .mem_ba
			booster_mem_ck           => CONNECTED_TO_booster_mem_ck,           --        .mem_ck
			booster_mem_ck_n         => CONNECTED_TO_booster_mem_ck_n,         --        .mem_ck_n
			booster_mem_cke          => CONNECTED_TO_booster_mem_cke,          --        .mem_cke
			booster_mem_cs_n         => CONNECTED_TO_booster_mem_cs_n,         --        .mem_cs_n
			booster_mem_dm           => CONNECTED_TO_booster_mem_dm,           --        .mem_dm
			booster_mem_ras_n        => CONNECTED_TO_booster_mem_ras_n,        --        .mem_ras_n
			booster_mem_cas_n        => CONNECTED_TO_booster_mem_cas_n,        --        .mem_cas_n
			booster_mem_we_n         => CONNECTED_TO_booster_mem_we_n,         --        .mem_we_n
			booster_mem_reset_n      => CONNECTED_TO_booster_mem_reset_n,      --        .mem_reset_n
			booster_mem_dq           => CONNECTED_TO_booster_mem_dq,           --        .mem_dq
			booster_mem_dqs          => CONNECTED_TO_booster_mem_dqs,          --        .mem_dqs
			booster_mem_dqs_n        => CONNECTED_TO_booster_mem_dqs_n,        --        .mem_dqs_n
			booster_mem_odt          => CONNECTED_TO_booster_mem_odt,          --        .mem_odt
			clk_clk                  => CONNECTED_TO_clk_clk,                  --     clk.clk
			memory_mem_a             => CONNECTED_TO_memory_mem_a,             --  memory.mem_a
			memory_mem_ba            => CONNECTED_TO_memory_mem_ba,            --        .mem_ba
			memory_mem_ck            => CONNECTED_TO_memory_mem_ck,            --        .mem_ck
			memory_mem_ck_n          => CONNECTED_TO_memory_mem_ck_n,          --        .mem_ck_n
			memory_mem_cke           => CONNECTED_TO_memory_mem_cke,           --        .mem_cke
			memory_mem_cs_n          => CONNECTED_TO_memory_mem_cs_n,          --        .mem_cs_n
			memory_mem_ras_n         => CONNECTED_TO_memory_mem_ras_n,         --        .mem_ras_n
			memory_mem_cas_n         => CONNECTED_TO_memory_mem_cas_n,         --        .mem_cas_n
			memory_mem_we_n          => CONNECTED_TO_memory_mem_we_n,          --        .mem_we_n
			memory_mem_reset_n       => CONNECTED_TO_memory_mem_reset_n,       --        .mem_reset_n
			memory_mem_dq            => CONNECTED_TO_memory_mem_dq,            --        .mem_dq
			memory_mem_dqs           => CONNECTED_TO_memory_mem_dqs,           --        .mem_dqs
			memory_mem_dqs_n         => CONNECTED_TO_memory_mem_dqs_n,         --        .mem_dqs_n
			memory_mem_odt           => CONNECTED_TO_memory_mem_odt,           --        .mem_odt
			memory_mem_dm            => CONNECTED_TO_memory_mem_dm,            --        .mem_dm
			memory_oct_rzqin         => CONNECTED_TO_memory_oct_rzqin,         --        .oct_rzqin
			oct_rzqin                => CONNECTED_TO_oct_rzqin,                --     oct.rzqin
			reset_reset_n            => CONNECTED_TO_reset_reset_n,            --   reset.reset_n
			status_local_init_done   => CONNECTED_TO_status_local_init_done,   --  status.local_init_done
			status_local_cal_success => CONNECTED_TO_status_local_cal_success, --        .local_cal_success
			status_local_cal_fail    => CONNECTED_TO_status_local_cal_fail,    --        .local_cal_fail
			vga_r                    => CONNECTED_TO_vga_r,                    --     vga.r
			vga_g                    => CONNECTED_TO_vga_g,                    --        .g
			vga_b                    => CONNECTED_TO_vga_b,                    --        .b
			vga_hs                   => CONNECTED_TO_vga_hs,                   --        .hs
			vga_vs                   => CONNECTED_TO_vga_vs,                   --        .vs
			vga_sync                 => CONNECTED_TO_vga_sync,                 --        .sync
			vga_vga_clk              => CONNECTED_TO_vga_vga_clk,              --        .vga_clk
			vga_blank                => CONNECTED_TO_vga_blank                 --        .blank
		);

