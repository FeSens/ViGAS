
module god_bless_apollo (
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
	memory_0_oct_rzqin,
	vga_green,
	vga_red,
	vga_blue,
	vga_hs,
	vga_vs,
	vga_vga_clk,
	vga_vga_sync,
	vga_vga_blank);	

	input		clk_clk;
	input		reset_reset_n;
	output	[14:0]	memory_mem_a;
	output	[2:0]	memory_mem_ba;
	output	[0:0]	memory_mem_ck;
	output	[0:0]	memory_mem_ck_n;
	output	[0:0]	memory_mem_cke;
	output	[0:0]	memory_mem_cs_n;
	output	[3:0]	memory_mem_dm;
	output	[0:0]	memory_mem_ras_n;
	output	[0:0]	memory_mem_cas_n;
	output	[0:0]	memory_mem_we_n;
	output		memory_mem_reset_n;
	inout	[31:0]	memory_mem_dq;
	inout	[3:0]	memory_mem_dqs;
	inout	[3:0]	memory_mem_dqs_n;
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
	output	[7:0]	vga_green;
	output	[7:0]	vga_red;
	output	[7:0]	vga_blue;
	output		vga_hs;
	output		vga_vs;
	output		vga_vga_clk;
	output		vga_vga_sync;
	output		vga_vga_blank;
endmodule
