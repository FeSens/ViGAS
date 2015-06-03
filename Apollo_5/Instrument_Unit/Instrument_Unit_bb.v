
module Instrument_Unit (
	rocket_mem_a,
	rocket_mem_ba,
	rocket_mem_ck,
	rocket_mem_ck_n,
	rocket_mem_cke,
	rocket_mem_cs_n,
	rocket_mem_dm,
	rocket_mem_ras_n,
	rocket_mem_cas_n,
	rocket_mem_we_n,
	rocket_mem_reset_n,
	rocket_mem_dq,
	rocket_mem_dqs,
	rocket_mem_dqs_n,
	rocket_mem_odt,
	memory_0_mem_a,
	memory_0_mem_ba,
	memory_0_mem_ck,
	memory_0_mem_ck_n,
	memory_0_mem_cke,
	memory_0_mem_cs_n,
	memory_0_mem_ras_n,
	memory_0_mem_cas_n,
	memory_0_mem_we_n,
	memory_0_mem_reset_n,
	memory_0_mem_dq,
	memory_0_mem_dqs,
	memory_0_mem_dqs_n,
	memory_0_mem_odt,
	memory_0_mem_dm,
	memory_0_oct_rzqin,
	oct_rzqin,
	reset_reset_n,
	stats_local_init_done,
	stats_local_cal_success,
	stats_local_cal_fail);	

	output	[14:0]	rocket_mem_a;
	output	[2:0]	rocket_mem_ba;
	output	[0:0]	rocket_mem_ck;
	output	[0:0]	rocket_mem_ck_n;
	output	[0:0]	rocket_mem_cke;
	output	[0:0]	rocket_mem_cs_n;
	output	[3:0]	rocket_mem_dm;
	output	[0:0]	rocket_mem_ras_n;
	output	[0:0]	rocket_mem_cas_n;
	output	[0:0]	rocket_mem_we_n;
	output		rocket_mem_reset_n;
	inout	[31:0]	rocket_mem_dq;
	inout	[3:0]	rocket_mem_dqs;
	inout	[3:0]	rocket_mem_dqs_n;
	output	[0:0]	rocket_mem_odt;
	output	[12:0]	memory_0_mem_a;
	output	[2:0]	memory_0_mem_ba;
	output		memory_0_mem_ck;
	output		memory_0_mem_ck_n;
	output		memory_0_mem_cke;
	output		memory_0_mem_cs_n;
	output		memory_0_mem_ras_n;
	output		memory_0_mem_cas_n;
	output		memory_0_mem_we_n;
	output		memory_0_mem_reset_n;
	inout	[7:0]	memory_0_mem_dq;
	inout		memory_0_mem_dqs;
	inout		memory_0_mem_dqs_n;
	output		memory_0_mem_odt;
	output		memory_0_mem_dm;
	input		memory_0_oct_rzqin;
	input		oct_rzqin;
	input		reset_reset_n;
	output		stats_local_init_done;
	output		stats_local_cal_success;
	output		stats_local_cal_fail;
endmodule
