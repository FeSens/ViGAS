
module Instrument_Unit (
	booster_mem_a,
	booster_mem_ba,
	booster_mem_ck,
	booster_mem_ck_n,
	booster_mem_cke,
	booster_mem_cs_n,
	booster_mem_dm,
	booster_mem_ras_n,
	booster_mem_cas_n,
	booster_mem_we_n,
	booster_mem_reset_n,
	booster_mem_dq,
	booster_mem_dqs,
	booster_mem_dqs_n,
	booster_mem_odt,
	clk_clk,
	memory_mem_a,
	memory_mem_ba,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_ras_n,
	memory_mem_cas_n,
	memory_mem_we_n,
	memory_mem_reset_n,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	memory_mem_odt,
	memory_mem_dm,
	memory_oct_rzqin,
	oct_rzqin,
	reset_reset_n,
	status_local_init_done,
	status_local_cal_success,
	status_local_cal_fail,
	vga_r,
	vga_g,
	vga_b,
	vga_hs,
	vga_vs,
	vga_sync,
	vga_vga_clk,
	vga_blank);	

	output	[14:0]	booster_mem_a;
	output	[2:0]	booster_mem_ba;
	output	[0:0]	booster_mem_ck;
	output	[0:0]	booster_mem_ck_n;
	output	[0:0]	booster_mem_cke;
	output	[0:0]	booster_mem_cs_n;
	output	[1:0]	booster_mem_dm;
	output	[0:0]	booster_mem_ras_n;
	output	[0:0]	booster_mem_cas_n;
	output	[0:0]	booster_mem_we_n;
	output		booster_mem_reset_n;
	inout	[15:0]	booster_mem_dq;
	inout	[1:0]	booster_mem_dqs;
	inout	[1:0]	booster_mem_dqs_n;
	output	[0:0]	booster_mem_odt;
	input		clk_clk;
	output	[12:0]	memory_mem_a;
	output	[2:0]	memory_mem_ba;
	output		memory_mem_ck;
	output		memory_mem_ck_n;
	output		memory_mem_cke;
	output		memory_mem_cs_n;
	output		memory_mem_ras_n;
	output		memory_mem_cas_n;
	output		memory_mem_we_n;
	output		memory_mem_reset_n;
	inout	[7:0]	memory_mem_dq;
	inout		memory_mem_dqs;
	inout		memory_mem_dqs_n;
	output		memory_mem_odt;
	output		memory_mem_dm;
	input		memory_oct_rzqin;
	input		oct_rzqin;
	input		reset_reset_n;
	output		status_local_init_done;
	output		status_local_cal_success;
	output		status_local_cal_fail;
	output	[7:0]	vga_r;
	output	[7:0]	vga_g;
	output	[7:0]	vga_b;
	output		vga_hs;
	output		vga_vs;
	output		vga_sync;
	output		vga_vga_clk;
	output		vga_blank;
endmodule
