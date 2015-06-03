
module InstrumentUnit (
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
	memory_0_mem_a,
	memory_0_mem_ba,
	memory_0_mem_ck,
	memory_0_mem_ck_n,
	memory_0_mem_cke,
	memory_0_mem_cs_n,
	memory_0_mem_dm,
	memory_0_mem_ras_n,
	memory_0_mem_cas_n,
	memory_0_mem_we_n,
	memory_0_mem_reset_n,
	memory_0_mem_dq,
	memory_0_mem_dqs,
	memory_0_mem_dqs_n,
	memory_0_mem_odt,
	oct_rzqin,
	reset_reset_n);	

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
	output	[14:0]	memory_0_mem_a;
	output	[2:0]	memory_0_mem_ba;
	output	[0:0]	memory_0_mem_ck;
	output	[0:0]	memory_0_mem_ck_n;
	output	[0:0]	memory_0_mem_cke;
	output	[0:0]	memory_0_mem_cs_n;
	output	[3:0]	memory_0_mem_dm;
	output	[0:0]	memory_0_mem_ras_n;
	output	[0:0]	memory_0_mem_cas_n;
	output	[0:0]	memory_0_mem_we_n;
	output		memory_0_mem_reset_n;
	inout	[31:0]	memory_0_mem_dq;
	inout	[3:0]	memory_0_mem_dqs;
	inout	[3:0]	memory_0_mem_dqs_n;
	output	[0:0]	memory_0_mem_odt;
	input		oct_rzqin;
	input		reset_reset_n;
endmodule
