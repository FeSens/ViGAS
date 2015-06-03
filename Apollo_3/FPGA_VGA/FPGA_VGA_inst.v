	FPGA_VGA u0 (
		.clk_clk            (<connected-to-clk_clk>),            //      clk.clk
		.reset_reset_n      (<connected-to-reset_reset_n>),      //    reset.reset_n
		.memory_mem_a       (<connected-to-memory_mem_a>),       //   memory.mem_a
		.memory_mem_ba      (<connected-to-memory_mem_ba>),      //         .mem_ba
		.memory_mem_ck      (<connected-to-memory_mem_ck>),      //         .mem_ck
		.memory_mem_ck_n    (<connected-to-memory_mem_ck_n>),    //         .mem_ck_n
		.memory_mem_cke     (<connected-to-memory_mem_cke>),     //         .mem_cke
		.memory_mem_cs_n    (<connected-to-memory_mem_cs_n>),    //         .mem_cs_n
		.memory_mem_ras_n   (<connected-to-memory_mem_ras_n>),   //         .mem_ras_n
		.memory_mem_cas_n   (<connected-to-memory_mem_cas_n>),   //         .mem_cas_n
		.memory_mem_we_n    (<connected-to-memory_mem_we_n>),    //         .mem_we_n
		.memory_mem_reset_n (<connected-to-memory_mem_reset_n>), //         .mem_reset_n
		.memory_mem_dq      (<connected-to-memory_mem_dq>),      //         .mem_dq
		.memory_mem_dqs     (<connected-to-memory_mem_dqs>),     //         .mem_dqs
		.memory_mem_dqs_n   (<connected-to-memory_mem_dqs_n>),   //         .mem_dqs_n
		.memory_mem_odt     (<connected-to-memory_mem_odt>),     //         .mem_odt
		.memory_mem_dm      (<connected-to-memory_mem_dm>),      //         .mem_dm
		.memory_oct_rzqin   (<connected-to-memory_oct_rzqin>),   //         .oct_rzqin
		.fpga_vga_red       (<connected-to-fpga_vga_red>),       // fpga_vga.red
		.fpga_vga_green     (<connected-to-fpga_vga_green>),     //         .green
		.fpga_vga_blue      (<connected-to-fpga_vga_blue>),      //         .blue
		.fpga_vga_vga_hs    (<connected-to-fpga_vga_vga_hs>),    //         .vga_hs
		.fpga_vga_vga_vs    (<connected-to-fpga_vga_vga_vs>),    //         .vga_vs
		.fpga_vga_vga_clk   (<connected-to-fpga_vga_vga_clk>),   //         .vga_clk
		.fpga_vga_vga_sync  (<connected-to-fpga_vga_vga_sync>),  //         .vga_sync
		.fpga_vga_vga_blank (<connected-to-fpga_vga_vga_blank>)  //         .vga_blank
	);

