
module unsaved (
	clk_clk,
	reset_reset_n,
	memory_mem_a,
	memory_mem_ba,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_dm,
	memory_mem_ras_n,
	memory_mem_cas_n,
	memory_mem_we_n,
	memory_mem_reset_n,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	memory_mem_odt,
	oct_rzqin,
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
	memory_0_oct_rzqin);	

	input		clk_clk;
	input		reset_reset_n;
	output	[14:0]	memory_mem_a;
	output	[2:0]	memory_mem_ba;
	output	[0:0]	memory_mem_ck;
	output	[0:0]	memory_mem_ck_n;
	output	[0:0]	memory_mem_cke;
	output	[0:0]	memory_mem_cs_n;
	output	[1:0]	memory_mem_dm;
	output	[0:0]	memory_mem_ras_n;
	output	[0:0]	memory_mem_cas_n;
	output	[0:0]	memory_mem_we_n;
	output		memory_mem_reset_n;
	inout	[15:0]	memory_mem_dq;
	inout	[1:0]	memory_mem_dqs;
	inout	[1:0]	memory_mem_dqs_n;
	output	[0:0]	memory_mem_odt;
	input		oct_rzqin;
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
endmodule
