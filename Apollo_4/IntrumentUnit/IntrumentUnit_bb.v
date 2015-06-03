
module IntrumentUnit (
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
	reset_reset_n,
	space_0_conduit_end_red,
	space_0_conduit_end_green,
	space_0_conduit_end_blue,
	space_0_conduit_end_hs,
	space_0_conduit_end_vs,
	space_0_conduit_end_vga_clk,
	space_0_conduit_end_sync,
	space_0_conduit_end_blank);	

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
	input		reset_reset_n;
	output	[7:0]	space_0_conduit_end_red;
	output	[7:0]	space_0_conduit_end_green;
	output	[7:0]	space_0_conduit_end_blue;
	output		space_0_conduit_end_hs;
	output		space_0_conduit_end_vs;
	output		space_0_conduit_end_vga_clk;
	output		space_0_conduit_end_sync;
	output		space_0_conduit_end_blank;
endmodule
