
module FPGA_VGA (
	clk_clk,
	reset_reset_n,
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
	fpga_vga_red,
	fpga_vga_green,
	fpga_vga_blue,
	fpga_vga_vga_hs,
	fpga_vga_vga_vs,
	fpga_vga_vga_clk,
	fpga_vga_vga_sync,
	fpga_vga_vga_blank);	

	input		clk_clk;
	input		reset_reset_n;
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
	output	[1:0]	fpga_vga_red;
	output	[1:0]	fpga_vga_green;
	output	[1:0]	fpga_vga_blue;
	output		fpga_vga_vga_hs;
	output		fpga_vga_vga_vs;
	output		fpga_vga_vga_clk;
	output		fpga_vga_vga_sync;
	output		fpga_vga_vga_blank;
endmodule
