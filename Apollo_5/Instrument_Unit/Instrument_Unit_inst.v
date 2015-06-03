	Instrument_Unit u0 (
		.rocket_mem_a            (<connected-to-rocket_mem_a>),            //   rocket.mem_a
		.rocket_mem_ba           (<connected-to-rocket_mem_ba>),           //         .mem_ba
		.rocket_mem_ck           (<connected-to-rocket_mem_ck>),           //         .mem_ck
		.rocket_mem_ck_n         (<connected-to-rocket_mem_ck_n>),         //         .mem_ck_n
		.rocket_mem_cke          (<connected-to-rocket_mem_cke>),          //         .mem_cke
		.rocket_mem_cs_n         (<connected-to-rocket_mem_cs_n>),         //         .mem_cs_n
		.rocket_mem_dm           (<connected-to-rocket_mem_dm>),           //         .mem_dm
		.rocket_mem_ras_n        (<connected-to-rocket_mem_ras_n>),        //         .mem_ras_n
		.rocket_mem_cas_n        (<connected-to-rocket_mem_cas_n>),        //         .mem_cas_n
		.rocket_mem_we_n         (<connected-to-rocket_mem_we_n>),         //         .mem_we_n
		.rocket_mem_reset_n      (<connected-to-rocket_mem_reset_n>),      //         .mem_reset_n
		.rocket_mem_dq           (<connected-to-rocket_mem_dq>),           //         .mem_dq
		.rocket_mem_dqs          (<connected-to-rocket_mem_dqs>),          //         .mem_dqs
		.rocket_mem_dqs_n        (<connected-to-rocket_mem_dqs_n>),        //         .mem_dqs_n
		.rocket_mem_odt          (<connected-to-rocket_mem_odt>),          //         .mem_odt
		.memory_0_mem_a          (<connected-to-memory_0_mem_a>),          // memory_0.mem_a
		.memory_0_mem_ba         (<connected-to-memory_0_mem_ba>),         //         .mem_ba
		.memory_0_mem_ck         (<connected-to-memory_0_mem_ck>),         //         .mem_ck
		.memory_0_mem_ck_n       (<connected-to-memory_0_mem_ck_n>),       //         .mem_ck_n
		.memory_0_mem_cke        (<connected-to-memory_0_mem_cke>),        //         .mem_cke
		.memory_0_mem_cs_n       (<connected-to-memory_0_mem_cs_n>),       //         .mem_cs_n
		.memory_0_mem_ras_n      (<connected-to-memory_0_mem_ras_n>),      //         .mem_ras_n
		.memory_0_mem_cas_n      (<connected-to-memory_0_mem_cas_n>),      //         .mem_cas_n
		.memory_0_mem_we_n       (<connected-to-memory_0_mem_we_n>),       //         .mem_we_n
		.memory_0_mem_reset_n    (<connected-to-memory_0_mem_reset_n>),    //         .mem_reset_n
		.memory_0_mem_dq         (<connected-to-memory_0_mem_dq>),         //         .mem_dq
		.memory_0_mem_dqs        (<connected-to-memory_0_mem_dqs>),        //         .mem_dqs
		.memory_0_mem_dqs_n      (<connected-to-memory_0_mem_dqs_n>),      //         .mem_dqs_n
		.memory_0_mem_odt        (<connected-to-memory_0_mem_odt>),        //         .mem_odt
		.memory_0_mem_dm         (<connected-to-memory_0_mem_dm>),         //         .mem_dm
		.memory_0_oct_rzqin      (<connected-to-memory_0_oct_rzqin>),      //         .oct_rzqin
		.oct_rzqin               (<connected-to-oct_rzqin>),               //      oct.rzqin
		.reset_reset_n           (<connected-to-reset_reset_n>),           //    reset.reset_n
		.stats_local_init_done   (<connected-to-stats_local_init_done>),   //    stats.local_init_done
		.stats_local_cal_success (<connected-to-stats_local_cal_success>), //         .local_cal_success
		.stats_local_cal_fail    (<connected-to-stats_local_cal_fail>)     //         .local_cal_fail
	);

