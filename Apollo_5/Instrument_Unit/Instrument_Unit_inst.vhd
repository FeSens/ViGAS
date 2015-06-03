	component Instrument_Unit is
		port (
			rocket_mem_a            : out   std_logic_vector(14 downto 0);                    -- mem_a
			rocket_mem_ba           : out   std_logic_vector(2 downto 0);                     -- mem_ba
			rocket_mem_ck           : out   std_logic_vector(0 downto 0);                     -- mem_ck
			rocket_mem_ck_n         : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
			rocket_mem_cke          : out   std_logic_vector(0 downto 0);                     -- mem_cke
			rocket_mem_cs_n         : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
			rocket_mem_dm           : out   std_logic_vector(3 downto 0);                     -- mem_dm
			rocket_mem_ras_n        : out   std_logic_vector(0 downto 0);                     -- mem_ras_n
			rocket_mem_cas_n        : out   std_logic_vector(0 downto 0);                     -- mem_cas_n
			rocket_mem_we_n         : out   std_logic_vector(0 downto 0);                     -- mem_we_n
			rocket_mem_reset_n      : out   std_logic;                                        -- mem_reset_n
			rocket_mem_dq           : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			rocket_mem_dqs          : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			rocket_mem_dqs_n        : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			rocket_mem_odt          : out   std_logic_vector(0 downto 0);                     -- mem_odt
			memory_0_mem_a          : out   std_logic_vector(12 downto 0);                    -- mem_a
			memory_0_mem_ba         : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_0_mem_ck         : out   std_logic;                                        -- mem_ck
			memory_0_mem_ck_n       : out   std_logic;                                        -- mem_ck_n
			memory_0_mem_cke        : out   std_logic;                                        -- mem_cke
			memory_0_mem_cs_n       : out   std_logic;                                        -- mem_cs_n
			memory_0_mem_ras_n      : out   std_logic;                                        -- mem_ras_n
			memory_0_mem_cas_n      : out   std_logic;                                        -- mem_cas_n
			memory_0_mem_we_n       : out   std_logic;                                        -- mem_we_n
			memory_0_mem_reset_n    : out   std_logic;                                        -- mem_reset_n
			memory_0_mem_dq         : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- mem_dq
			memory_0_mem_dqs        : inout std_logic                     := 'X';             -- mem_dqs
			memory_0_mem_dqs_n      : inout std_logic                     := 'X';             -- mem_dqs_n
			memory_0_mem_odt        : out   std_logic;                                        -- mem_odt
			memory_0_mem_dm         : out   std_logic;                                        -- mem_dm
			memory_0_oct_rzqin      : in    std_logic                     := 'X';             -- oct_rzqin
			oct_rzqin               : in    std_logic                     := 'X';             -- rzqin
			reset_reset_n           : in    std_logic                     := 'X';             -- reset_n
			stats_local_init_done   : out   std_logic;                                        -- local_init_done
			stats_local_cal_success : out   std_logic;                                        -- local_cal_success
			stats_local_cal_fail    : out   std_logic                                         -- local_cal_fail
		);
	end component Instrument_Unit;

	u0 : component Instrument_Unit
		port map (
			rocket_mem_a            => CONNECTED_TO_rocket_mem_a,            --   rocket.mem_a
			rocket_mem_ba           => CONNECTED_TO_rocket_mem_ba,           --         .mem_ba
			rocket_mem_ck           => CONNECTED_TO_rocket_mem_ck,           --         .mem_ck
			rocket_mem_ck_n         => CONNECTED_TO_rocket_mem_ck_n,         --         .mem_ck_n
			rocket_mem_cke          => CONNECTED_TO_rocket_mem_cke,          --         .mem_cke
			rocket_mem_cs_n         => CONNECTED_TO_rocket_mem_cs_n,         --         .mem_cs_n
			rocket_mem_dm           => CONNECTED_TO_rocket_mem_dm,           --         .mem_dm
			rocket_mem_ras_n        => CONNECTED_TO_rocket_mem_ras_n,        --         .mem_ras_n
			rocket_mem_cas_n        => CONNECTED_TO_rocket_mem_cas_n,        --         .mem_cas_n
			rocket_mem_we_n         => CONNECTED_TO_rocket_mem_we_n,         --         .mem_we_n
			rocket_mem_reset_n      => CONNECTED_TO_rocket_mem_reset_n,      --         .mem_reset_n
			rocket_mem_dq           => CONNECTED_TO_rocket_mem_dq,           --         .mem_dq
			rocket_mem_dqs          => CONNECTED_TO_rocket_mem_dqs,          --         .mem_dqs
			rocket_mem_dqs_n        => CONNECTED_TO_rocket_mem_dqs_n,        --         .mem_dqs_n
			rocket_mem_odt          => CONNECTED_TO_rocket_mem_odt,          --         .mem_odt
			memory_0_mem_a          => CONNECTED_TO_memory_0_mem_a,          -- memory_0.mem_a
			memory_0_mem_ba         => CONNECTED_TO_memory_0_mem_ba,         --         .mem_ba
			memory_0_mem_ck         => CONNECTED_TO_memory_0_mem_ck,         --         .mem_ck
			memory_0_mem_ck_n       => CONNECTED_TO_memory_0_mem_ck_n,       --         .mem_ck_n
			memory_0_mem_cke        => CONNECTED_TO_memory_0_mem_cke,        --         .mem_cke
			memory_0_mem_cs_n       => CONNECTED_TO_memory_0_mem_cs_n,       --         .mem_cs_n
			memory_0_mem_ras_n      => CONNECTED_TO_memory_0_mem_ras_n,      --         .mem_ras_n
			memory_0_mem_cas_n      => CONNECTED_TO_memory_0_mem_cas_n,      --         .mem_cas_n
			memory_0_mem_we_n       => CONNECTED_TO_memory_0_mem_we_n,       --         .mem_we_n
			memory_0_mem_reset_n    => CONNECTED_TO_memory_0_mem_reset_n,    --         .mem_reset_n
			memory_0_mem_dq         => CONNECTED_TO_memory_0_mem_dq,         --         .mem_dq
			memory_0_mem_dqs        => CONNECTED_TO_memory_0_mem_dqs,        --         .mem_dqs
			memory_0_mem_dqs_n      => CONNECTED_TO_memory_0_mem_dqs_n,      --         .mem_dqs_n
			memory_0_mem_odt        => CONNECTED_TO_memory_0_mem_odt,        --         .mem_odt
			memory_0_mem_dm         => CONNECTED_TO_memory_0_mem_dm,         --         .mem_dm
			memory_0_oct_rzqin      => CONNECTED_TO_memory_0_oct_rzqin,      --         .oct_rzqin
			oct_rzqin               => CONNECTED_TO_oct_rzqin,               --      oct.rzqin
			reset_reset_n           => CONNECTED_TO_reset_reset_n,           --    reset.reset_n
			stats_local_init_done   => CONNECTED_TO_stats_local_init_done,   --    stats.local_init_done
			stats_local_cal_success => CONNECTED_TO_stats_local_cal_success, --         .local_cal_success
			stats_local_cal_fail    => CONNECTED_TO_stats_local_cal_fail     --         .local_cal_fail
		);

