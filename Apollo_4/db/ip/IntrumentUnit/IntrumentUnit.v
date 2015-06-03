// IntrumentUnit.v

// Generated using ACDS version 14.1 186 at 2015.04.27.12:53:45

`timescale 1 ps / 1 ps
module IntrumentUnit (
		input  wire        clk_clk,                     //                 clk.clk
		output wire [12:0] memory_mem_a,                //              memory.mem_a
		output wire [2:0]  memory_mem_ba,               //                    .mem_ba
		output wire        memory_mem_ck,               //                    .mem_ck
		output wire        memory_mem_ck_n,             //                    .mem_ck_n
		output wire        memory_mem_cke,              //                    .mem_cke
		output wire        memory_mem_cs_n,             //                    .mem_cs_n
		output wire        memory_mem_ras_n,            //                    .mem_ras_n
		output wire        memory_mem_cas_n,            //                    .mem_cas_n
		output wire        memory_mem_we_n,             //                    .mem_we_n
		output wire        memory_mem_reset_n,          //                    .mem_reset_n
		inout  wire [7:0]  memory_mem_dq,               //                    .mem_dq
		inout  wire        memory_mem_dqs,              //                    .mem_dqs
		inout  wire        memory_mem_dqs_n,            //                    .mem_dqs_n
		output wire        memory_mem_odt,              //                    .mem_odt
		output wire        memory_mem_dm,               //                    .mem_dm
		input  wire        memory_oct_rzqin,            //                    .oct_rzqin
		input  wire        reset_reset_n,               //               reset.reset_n
		output wire [7:0]  space_0_conduit_end_red,     // space_0_conduit_end.red
		output wire [7:0]  space_0_conduit_end_green,   //                    .green
		output wire [7:0]  space_0_conduit_end_blue,    //                    .blue
		output wire        space_0_conduit_end_hs,      //                    .hs
		output wire        space_0_conduit_end_vs,      //                    .vs
		output wire        space_0_conduit_end_vga_clk, //                    .vga_clk
		output wire        space_0_conduit_end_sync,    //                    .sync
		output wire        space_0_conduit_end_blank    //                    .blank
	);

	wire         space_0_avalon_master_chipselect;                 // Space_0:chipselect -> mm_interconnect_0:Space_0_avalon_master_chipselect
	wire  [31:0] space_0_avalon_master_readdata;                   // mm_interconnect_0:Space_0_avalon_master_readdata -> Space_0:readdata
	wire         space_0_avalon_master_waitrequest;                // mm_interconnect_0:Space_0_avalon_master_waitrequest -> Space_0:waitrequest
	wire  [31:0] space_0_avalon_master_address;                    // Space_0:address -> mm_interconnect_0:Space_0_avalon_master_address
	wire         space_0_avalon_master_read;                       // Space_0:readD -> mm_interconnect_0:Space_0_avalon_master_read
	wire         space_0_avalon_master_write;                      // Space_0:writeD -> mm_interconnect_0:Space_0_avalon_master_write
	wire  [31:0] space_0_avalon_master_writedata;                  // Space_0:writedata -> mm_interconnect_0:Space_0_avalon_master_writedata
	wire         mm_interconnect_0_onchip_memory2_0_s2_chipselect; // mm_interconnect_0:onchip_memory2_0_s2_chipselect -> onchip_memory2_0:chipselect2
	wire  [31:0] mm_interconnect_0_onchip_memory2_0_s2_readdata;   // onchip_memory2_0:readdata2 -> mm_interconnect_0:onchip_memory2_0_s2_readdata
	wire  [18:0] mm_interconnect_0_onchip_memory2_0_s2_address;    // mm_interconnect_0:onchip_memory2_0_s2_address -> onchip_memory2_0:address2
	wire   [3:0] mm_interconnect_0_onchip_memory2_0_s2_byteenable; // mm_interconnect_0:onchip_memory2_0_s2_byteenable -> onchip_memory2_0:byteenable2
	wire         mm_interconnect_0_onchip_memory2_0_s2_write;      // mm_interconnect_0:onchip_memory2_0_s2_write -> onchip_memory2_0:write2
	wire  [31:0] mm_interconnect_0_onchip_memory2_0_s2_writedata;  // mm_interconnect_0:onchip_memory2_0_s2_writedata -> onchip_memory2_0:writedata2
	wire         mm_interconnect_0_onchip_memory2_0_s2_clken;      // mm_interconnect_0:onchip_memory2_0_s2_clken -> onchip_memory2_0:clken2
	wire   [1:0] hps_0_h2f_lw_axi_master_awburst;                  // hps_0:h2f_lw_AWBURST -> mm_interconnect_1:hps_0_h2f_lw_axi_master_awburst
	wire   [3:0] hps_0_h2f_lw_axi_master_arlen;                    // hps_0:h2f_lw_ARLEN -> mm_interconnect_1:hps_0_h2f_lw_axi_master_arlen
	wire   [3:0] hps_0_h2f_lw_axi_master_wstrb;                    // hps_0:h2f_lw_WSTRB -> mm_interconnect_1:hps_0_h2f_lw_axi_master_wstrb
	wire         hps_0_h2f_lw_axi_master_wready;                   // mm_interconnect_1:hps_0_h2f_lw_axi_master_wready -> hps_0:h2f_lw_WREADY
	wire  [11:0] hps_0_h2f_lw_axi_master_rid;                      // mm_interconnect_1:hps_0_h2f_lw_axi_master_rid -> hps_0:h2f_lw_RID
	wire         hps_0_h2f_lw_axi_master_rready;                   // hps_0:h2f_lw_RREADY -> mm_interconnect_1:hps_0_h2f_lw_axi_master_rready
	wire   [3:0] hps_0_h2f_lw_axi_master_awlen;                    // hps_0:h2f_lw_AWLEN -> mm_interconnect_1:hps_0_h2f_lw_axi_master_awlen
	wire  [11:0] hps_0_h2f_lw_axi_master_wid;                      // hps_0:h2f_lw_WID -> mm_interconnect_1:hps_0_h2f_lw_axi_master_wid
	wire   [3:0] hps_0_h2f_lw_axi_master_arcache;                  // hps_0:h2f_lw_ARCACHE -> mm_interconnect_1:hps_0_h2f_lw_axi_master_arcache
	wire         hps_0_h2f_lw_axi_master_wvalid;                   // hps_0:h2f_lw_WVALID -> mm_interconnect_1:hps_0_h2f_lw_axi_master_wvalid
	wire  [20:0] hps_0_h2f_lw_axi_master_araddr;                   // hps_0:h2f_lw_ARADDR -> mm_interconnect_1:hps_0_h2f_lw_axi_master_araddr
	wire   [2:0] hps_0_h2f_lw_axi_master_arprot;                   // hps_0:h2f_lw_ARPROT -> mm_interconnect_1:hps_0_h2f_lw_axi_master_arprot
	wire   [2:0] hps_0_h2f_lw_axi_master_awprot;                   // hps_0:h2f_lw_AWPROT -> mm_interconnect_1:hps_0_h2f_lw_axi_master_awprot
	wire  [31:0] hps_0_h2f_lw_axi_master_wdata;                    // hps_0:h2f_lw_WDATA -> mm_interconnect_1:hps_0_h2f_lw_axi_master_wdata
	wire         hps_0_h2f_lw_axi_master_arvalid;                  // hps_0:h2f_lw_ARVALID -> mm_interconnect_1:hps_0_h2f_lw_axi_master_arvalid
	wire   [3:0] hps_0_h2f_lw_axi_master_awcache;                  // hps_0:h2f_lw_AWCACHE -> mm_interconnect_1:hps_0_h2f_lw_axi_master_awcache
	wire  [11:0] hps_0_h2f_lw_axi_master_arid;                     // hps_0:h2f_lw_ARID -> mm_interconnect_1:hps_0_h2f_lw_axi_master_arid
	wire   [1:0] hps_0_h2f_lw_axi_master_arlock;                   // hps_0:h2f_lw_ARLOCK -> mm_interconnect_1:hps_0_h2f_lw_axi_master_arlock
	wire   [1:0] hps_0_h2f_lw_axi_master_awlock;                   // hps_0:h2f_lw_AWLOCK -> mm_interconnect_1:hps_0_h2f_lw_axi_master_awlock
	wire  [20:0] hps_0_h2f_lw_axi_master_awaddr;                   // hps_0:h2f_lw_AWADDR -> mm_interconnect_1:hps_0_h2f_lw_axi_master_awaddr
	wire   [1:0] hps_0_h2f_lw_axi_master_bresp;                    // mm_interconnect_1:hps_0_h2f_lw_axi_master_bresp -> hps_0:h2f_lw_BRESP
	wire         hps_0_h2f_lw_axi_master_arready;                  // mm_interconnect_1:hps_0_h2f_lw_axi_master_arready -> hps_0:h2f_lw_ARREADY
	wire  [31:0] hps_0_h2f_lw_axi_master_rdata;                    // mm_interconnect_1:hps_0_h2f_lw_axi_master_rdata -> hps_0:h2f_lw_RDATA
	wire         hps_0_h2f_lw_axi_master_awready;                  // mm_interconnect_1:hps_0_h2f_lw_axi_master_awready -> hps_0:h2f_lw_AWREADY
	wire   [1:0] hps_0_h2f_lw_axi_master_arburst;                  // hps_0:h2f_lw_ARBURST -> mm_interconnect_1:hps_0_h2f_lw_axi_master_arburst
	wire   [2:0] hps_0_h2f_lw_axi_master_arsize;                   // hps_0:h2f_lw_ARSIZE -> mm_interconnect_1:hps_0_h2f_lw_axi_master_arsize
	wire         hps_0_h2f_lw_axi_master_bready;                   // hps_0:h2f_lw_BREADY -> mm_interconnect_1:hps_0_h2f_lw_axi_master_bready
	wire         hps_0_h2f_lw_axi_master_rlast;                    // mm_interconnect_1:hps_0_h2f_lw_axi_master_rlast -> hps_0:h2f_lw_RLAST
	wire         hps_0_h2f_lw_axi_master_wlast;                    // hps_0:h2f_lw_WLAST -> mm_interconnect_1:hps_0_h2f_lw_axi_master_wlast
	wire   [1:0] hps_0_h2f_lw_axi_master_rresp;                    // mm_interconnect_1:hps_0_h2f_lw_axi_master_rresp -> hps_0:h2f_lw_RRESP
	wire  [11:0] hps_0_h2f_lw_axi_master_awid;                     // hps_0:h2f_lw_AWID -> mm_interconnect_1:hps_0_h2f_lw_axi_master_awid
	wire  [11:0] hps_0_h2f_lw_axi_master_bid;                      // mm_interconnect_1:hps_0_h2f_lw_axi_master_bid -> hps_0:h2f_lw_BID
	wire         hps_0_h2f_lw_axi_master_bvalid;                   // mm_interconnect_1:hps_0_h2f_lw_axi_master_bvalid -> hps_0:h2f_lw_BVALID
	wire   [2:0] hps_0_h2f_lw_axi_master_awsize;                   // hps_0:h2f_lw_AWSIZE -> mm_interconnect_1:hps_0_h2f_lw_axi_master_awsize
	wire         hps_0_h2f_lw_axi_master_awvalid;                  // hps_0:h2f_lw_AWVALID -> mm_interconnect_1:hps_0_h2f_lw_axi_master_awvalid
	wire         hps_0_h2f_lw_axi_master_rvalid;                   // mm_interconnect_1:hps_0_h2f_lw_axi_master_rvalid -> hps_0:h2f_lw_RVALID
	wire         mm_interconnect_1_onchip_memory2_0_s1_chipselect; // mm_interconnect_1:onchip_memory2_0_s1_chipselect -> onchip_memory2_0:chipselect
	wire  [31:0] mm_interconnect_1_onchip_memory2_0_s1_readdata;   // onchip_memory2_0:readdata -> mm_interconnect_1:onchip_memory2_0_s1_readdata
	wire  [18:0] mm_interconnect_1_onchip_memory2_0_s1_address;    // mm_interconnect_1:onchip_memory2_0_s1_address -> onchip_memory2_0:address
	wire   [3:0] mm_interconnect_1_onchip_memory2_0_s1_byteenable; // mm_interconnect_1:onchip_memory2_0_s1_byteenable -> onchip_memory2_0:byteenable
	wire         mm_interconnect_1_onchip_memory2_0_s1_write;      // mm_interconnect_1:onchip_memory2_0_s1_write -> onchip_memory2_0:write
	wire  [31:0] mm_interconnect_1_onchip_memory2_0_s1_writedata;  // mm_interconnect_1:onchip_memory2_0_s1_writedata -> onchip_memory2_0:writedata
	wire         mm_interconnect_1_onchip_memory2_0_s1_clken;      // mm_interconnect_1:onchip_memory2_0_s1_clken -> onchip_memory2_0:clken
	wire         rst_controller_reset_out_reset;                   // rst_controller:reset_out -> [Space_0:reset, mm_interconnect_0:Space_0_reset_reset_bridge_in_reset_reset, mm_interconnect_1:onchip_memory2_0_reset1_reset_bridge_in_reset_reset, onchip_memory2_0:reset, onchip_memory2_0:reset2, rst_translator:in_reset]
	wire         rst_controller_reset_out_reset_req;               // rst_controller:reset_req -> [onchip_memory2_0:reset_req, onchip_memory2_0:reset_req2, rst_translator:reset_req_in]
	wire         rst_controller_001_reset_out_reset;               // rst_controller_001:reset_out -> mm_interconnect_1:hps_0_h2f_lw_axi_master_agent_clk_reset_reset_bridge_in_reset_reset
	wire         hps_0_h2f_reset_reset;                            // hps_0:h2f_rst_n -> rst_controller_001:reset_in0

	SpaceCraft space_0 (
		.clk         (clk_clk),                           //         clock.clk
		.reset       (rst_controller_reset_out_reset),    //         reset.reset
		.VGA_R       (space_0_conduit_end_red),           //   conduit_end.red
		.VGA_G       (space_0_conduit_end_green),         //              .green
		.VGA_B       (space_0_conduit_end_blue),          //              .blue
		.VGA_HS      (space_0_conduit_end_hs),            //              .hs
		.VGA_VS      (space_0_conduit_end_vs),            //              .vs
		.VGA_CLK     (space_0_conduit_end_vga_clk),       //              .vga_clk
		.VGA_SYNC_n  (space_0_conduit_end_sync),          //              .sync
		.VGA_BLANK_n (space_0_conduit_end_blank),         //              .blank
		.address     (space_0_avalon_master_address),     // avalon_master.address
		.chipselect  (space_0_avalon_master_chipselect),  //              .chipselect
		.readdata    (space_0_avalon_master_readdata),    //              .readdata
		.writeD      (space_0_avalon_master_write),       //              .write
		.writedata   (space_0_avalon_master_writedata),   //              .writedata
		.readD       (space_0_avalon_master_read),        //              .read
		.waitrequest (space_0_avalon_master_waitrequest)  //              .waitrequest
	);

	IntrumentUnit_hps_0 #(
		.F2S_Width (0),
		.S2F_Width (0)
	) hps_0 (
		.mem_a          (memory_mem_a),                    //            memory.mem_a
		.mem_ba         (memory_mem_ba),                   //                  .mem_ba
		.mem_ck         (memory_mem_ck),                   //                  .mem_ck
		.mem_ck_n       (memory_mem_ck_n),                 //                  .mem_ck_n
		.mem_cke        (memory_mem_cke),                  //                  .mem_cke
		.mem_cs_n       (memory_mem_cs_n),                 //                  .mem_cs_n
		.mem_ras_n      (memory_mem_ras_n),                //                  .mem_ras_n
		.mem_cas_n      (memory_mem_cas_n),                //                  .mem_cas_n
		.mem_we_n       (memory_mem_we_n),                 //                  .mem_we_n
		.mem_reset_n    (memory_mem_reset_n),              //                  .mem_reset_n
		.mem_dq         (memory_mem_dq),                   //                  .mem_dq
		.mem_dqs        (memory_mem_dqs),                  //                  .mem_dqs
		.mem_dqs_n      (memory_mem_dqs_n),                //                  .mem_dqs_n
		.mem_odt        (memory_mem_odt),                  //                  .mem_odt
		.mem_dm         (memory_mem_dm),                   //                  .mem_dm
		.oct_rzqin      (memory_oct_rzqin),                //                  .oct_rzqin
		.h2f_rst_n      (hps_0_h2f_reset_reset),           //         h2f_reset.reset_n
		.h2f_lw_axi_clk (clk_clk),                         //  h2f_lw_axi_clock.clk
		.h2f_lw_AWID    (hps_0_h2f_lw_axi_master_awid),    // h2f_lw_axi_master.awid
		.h2f_lw_AWADDR  (hps_0_h2f_lw_axi_master_awaddr),  //                  .awaddr
		.h2f_lw_AWLEN   (hps_0_h2f_lw_axi_master_awlen),   //                  .awlen
		.h2f_lw_AWSIZE  (hps_0_h2f_lw_axi_master_awsize),  //                  .awsize
		.h2f_lw_AWBURST (hps_0_h2f_lw_axi_master_awburst), //                  .awburst
		.h2f_lw_AWLOCK  (hps_0_h2f_lw_axi_master_awlock),  //                  .awlock
		.h2f_lw_AWCACHE (hps_0_h2f_lw_axi_master_awcache), //                  .awcache
		.h2f_lw_AWPROT  (hps_0_h2f_lw_axi_master_awprot),  //                  .awprot
		.h2f_lw_AWVALID (hps_0_h2f_lw_axi_master_awvalid), //                  .awvalid
		.h2f_lw_AWREADY (hps_0_h2f_lw_axi_master_awready), //                  .awready
		.h2f_lw_WID     (hps_0_h2f_lw_axi_master_wid),     //                  .wid
		.h2f_lw_WDATA   (hps_0_h2f_lw_axi_master_wdata),   //                  .wdata
		.h2f_lw_WSTRB   (hps_0_h2f_lw_axi_master_wstrb),   //                  .wstrb
		.h2f_lw_WLAST   (hps_0_h2f_lw_axi_master_wlast),   //                  .wlast
		.h2f_lw_WVALID  (hps_0_h2f_lw_axi_master_wvalid),  //                  .wvalid
		.h2f_lw_WREADY  (hps_0_h2f_lw_axi_master_wready),  //                  .wready
		.h2f_lw_BID     (hps_0_h2f_lw_axi_master_bid),     //                  .bid
		.h2f_lw_BRESP   (hps_0_h2f_lw_axi_master_bresp),   //                  .bresp
		.h2f_lw_BVALID  (hps_0_h2f_lw_axi_master_bvalid),  //                  .bvalid
		.h2f_lw_BREADY  (hps_0_h2f_lw_axi_master_bready),  //                  .bready
		.h2f_lw_ARID    (hps_0_h2f_lw_axi_master_arid),    //                  .arid
		.h2f_lw_ARADDR  (hps_0_h2f_lw_axi_master_araddr),  //                  .araddr
		.h2f_lw_ARLEN   (hps_0_h2f_lw_axi_master_arlen),   //                  .arlen
		.h2f_lw_ARSIZE  (hps_0_h2f_lw_axi_master_arsize),  //                  .arsize
		.h2f_lw_ARBURST (hps_0_h2f_lw_axi_master_arburst), //                  .arburst
		.h2f_lw_ARLOCK  (hps_0_h2f_lw_axi_master_arlock),  //                  .arlock
		.h2f_lw_ARCACHE (hps_0_h2f_lw_axi_master_arcache), //                  .arcache
		.h2f_lw_ARPROT  (hps_0_h2f_lw_axi_master_arprot),  //                  .arprot
		.h2f_lw_ARVALID (hps_0_h2f_lw_axi_master_arvalid), //                  .arvalid
		.h2f_lw_ARREADY (hps_0_h2f_lw_axi_master_arready), //                  .arready
		.h2f_lw_RID     (hps_0_h2f_lw_axi_master_rid),     //                  .rid
		.h2f_lw_RDATA   (hps_0_h2f_lw_axi_master_rdata),   //                  .rdata
		.h2f_lw_RRESP   (hps_0_h2f_lw_axi_master_rresp),   //                  .rresp
		.h2f_lw_RLAST   (hps_0_h2f_lw_axi_master_rlast),   //                  .rlast
		.h2f_lw_RVALID  (hps_0_h2f_lw_axi_master_rvalid),  //                  .rvalid
		.h2f_lw_RREADY  (hps_0_h2f_lw_axi_master_rready)   //                  .rready
	);

	IntrumentUnit_onchip_memory2_0 onchip_memory2_0 (
		.clk         (clk_clk),                                          //   clk1.clk
		.address     (mm_interconnect_1_onchip_memory2_0_s1_address),    //     s1.address
		.clken       (mm_interconnect_1_onchip_memory2_0_s1_clken),      //       .clken
		.chipselect  (mm_interconnect_1_onchip_memory2_0_s1_chipselect), //       .chipselect
		.write       (mm_interconnect_1_onchip_memory2_0_s1_write),      //       .write
		.readdata    (mm_interconnect_1_onchip_memory2_0_s1_readdata),   //       .readdata
		.writedata   (mm_interconnect_1_onchip_memory2_0_s1_writedata),  //       .writedata
		.byteenable  (mm_interconnect_1_onchip_memory2_0_s1_byteenable), //       .byteenable
		.reset       (rst_controller_reset_out_reset),                   // reset1.reset
		.reset_req   (rst_controller_reset_out_reset_req),               //       .reset_req
		.address2    (mm_interconnect_0_onchip_memory2_0_s2_address),    //     s2.address
		.chipselect2 (mm_interconnect_0_onchip_memory2_0_s2_chipselect), //       .chipselect
		.clken2      (mm_interconnect_0_onchip_memory2_0_s2_clken),      //       .clken
		.write2      (mm_interconnect_0_onchip_memory2_0_s2_write),      //       .write
		.readdata2   (mm_interconnect_0_onchip_memory2_0_s2_readdata),   //       .readdata
		.writedata2  (mm_interconnect_0_onchip_memory2_0_s2_writedata),  //       .writedata
		.byteenable2 (mm_interconnect_0_onchip_memory2_0_s2_byteenable), //       .byteenable
		.clk2        (clk_clk),                                          //   clk2.clk
		.reset2      (rst_controller_reset_out_reset),                   // reset2.reset
		.reset_req2  (rst_controller_reset_out_reset_req)                //       .reset_req
	);

	IntrumentUnit_mm_interconnect_0 mm_interconnect_0 (
		.clk_0_clk_clk                             (clk_clk),                                          //                           clk_0_clk.clk
		.Space_0_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                   // Space_0_reset_reset_bridge_in_reset.reset
		.Space_0_avalon_master_address             (space_0_avalon_master_address),                    //               Space_0_avalon_master.address
		.Space_0_avalon_master_waitrequest         (space_0_avalon_master_waitrequest),                //                                    .waitrequest
		.Space_0_avalon_master_chipselect          (space_0_avalon_master_chipselect),                 //                                    .chipselect
		.Space_0_avalon_master_read                (space_0_avalon_master_read),                       //                                    .read
		.Space_0_avalon_master_readdata            (space_0_avalon_master_readdata),                   //                                    .readdata
		.Space_0_avalon_master_write               (space_0_avalon_master_write),                      //                                    .write
		.Space_0_avalon_master_writedata           (space_0_avalon_master_writedata),                  //                                    .writedata
		.onchip_memory2_0_s2_address               (mm_interconnect_0_onchip_memory2_0_s2_address),    //                 onchip_memory2_0_s2.address
		.onchip_memory2_0_s2_write                 (mm_interconnect_0_onchip_memory2_0_s2_write),      //                                    .write
		.onchip_memory2_0_s2_readdata              (mm_interconnect_0_onchip_memory2_0_s2_readdata),   //                                    .readdata
		.onchip_memory2_0_s2_writedata             (mm_interconnect_0_onchip_memory2_0_s2_writedata),  //                                    .writedata
		.onchip_memory2_0_s2_byteenable            (mm_interconnect_0_onchip_memory2_0_s2_byteenable), //                                    .byteenable
		.onchip_memory2_0_s2_chipselect            (mm_interconnect_0_onchip_memory2_0_s2_chipselect), //                                    .chipselect
		.onchip_memory2_0_s2_clken                 (mm_interconnect_0_onchip_memory2_0_s2_clken)       //                                    .clken
	);

	IntrumentUnit_mm_interconnect_1 mm_interconnect_1 (
		.hps_0_h2f_lw_axi_master_awid                                        (hps_0_h2f_lw_axi_master_awid),                     //                                       hps_0_h2f_lw_axi_master.awid
		.hps_0_h2f_lw_axi_master_awaddr                                      (hps_0_h2f_lw_axi_master_awaddr),                   //                                                              .awaddr
		.hps_0_h2f_lw_axi_master_awlen                                       (hps_0_h2f_lw_axi_master_awlen),                    //                                                              .awlen
		.hps_0_h2f_lw_axi_master_awsize                                      (hps_0_h2f_lw_axi_master_awsize),                   //                                                              .awsize
		.hps_0_h2f_lw_axi_master_awburst                                     (hps_0_h2f_lw_axi_master_awburst),                  //                                                              .awburst
		.hps_0_h2f_lw_axi_master_awlock                                      (hps_0_h2f_lw_axi_master_awlock),                   //                                                              .awlock
		.hps_0_h2f_lw_axi_master_awcache                                     (hps_0_h2f_lw_axi_master_awcache),                  //                                                              .awcache
		.hps_0_h2f_lw_axi_master_awprot                                      (hps_0_h2f_lw_axi_master_awprot),                   //                                                              .awprot
		.hps_0_h2f_lw_axi_master_awvalid                                     (hps_0_h2f_lw_axi_master_awvalid),                  //                                                              .awvalid
		.hps_0_h2f_lw_axi_master_awready                                     (hps_0_h2f_lw_axi_master_awready),                  //                                                              .awready
		.hps_0_h2f_lw_axi_master_wid                                         (hps_0_h2f_lw_axi_master_wid),                      //                                                              .wid
		.hps_0_h2f_lw_axi_master_wdata                                       (hps_0_h2f_lw_axi_master_wdata),                    //                                                              .wdata
		.hps_0_h2f_lw_axi_master_wstrb                                       (hps_0_h2f_lw_axi_master_wstrb),                    //                                                              .wstrb
		.hps_0_h2f_lw_axi_master_wlast                                       (hps_0_h2f_lw_axi_master_wlast),                    //                                                              .wlast
		.hps_0_h2f_lw_axi_master_wvalid                                      (hps_0_h2f_lw_axi_master_wvalid),                   //                                                              .wvalid
		.hps_0_h2f_lw_axi_master_wready                                      (hps_0_h2f_lw_axi_master_wready),                   //                                                              .wready
		.hps_0_h2f_lw_axi_master_bid                                         (hps_0_h2f_lw_axi_master_bid),                      //                                                              .bid
		.hps_0_h2f_lw_axi_master_bresp                                       (hps_0_h2f_lw_axi_master_bresp),                    //                                                              .bresp
		.hps_0_h2f_lw_axi_master_bvalid                                      (hps_0_h2f_lw_axi_master_bvalid),                   //                                                              .bvalid
		.hps_0_h2f_lw_axi_master_bready                                      (hps_0_h2f_lw_axi_master_bready),                   //                                                              .bready
		.hps_0_h2f_lw_axi_master_arid                                        (hps_0_h2f_lw_axi_master_arid),                     //                                                              .arid
		.hps_0_h2f_lw_axi_master_araddr                                      (hps_0_h2f_lw_axi_master_araddr),                   //                                                              .araddr
		.hps_0_h2f_lw_axi_master_arlen                                       (hps_0_h2f_lw_axi_master_arlen),                    //                                                              .arlen
		.hps_0_h2f_lw_axi_master_arsize                                      (hps_0_h2f_lw_axi_master_arsize),                   //                                                              .arsize
		.hps_0_h2f_lw_axi_master_arburst                                     (hps_0_h2f_lw_axi_master_arburst),                  //                                                              .arburst
		.hps_0_h2f_lw_axi_master_arlock                                      (hps_0_h2f_lw_axi_master_arlock),                   //                                                              .arlock
		.hps_0_h2f_lw_axi_master_arcache                                     (hps_0_h2f_lw_axi_master_arcache),                  //                                                              .arcache
		.hps_0_h2f_lw_axi_master_arprot                                      (hps_0_h2f_lw_axi_master_arprot),                   //                                                              .arprot
		.hps_0_h2f_lw_axi_master_arvalid                                     (hps_0_h2f_lw_axi_master_arvalid),                  //                                                              .arvalid
		.hps_0_h2f_lw_axi_master_arready                                     (hps_0_h2f_lw_axi_master_arready),                  //                                                              .arready
		.hps_0_h2f_lw_axi_master_rid                                         (hps_0_h2f_lw_axi_master_rid),                      //                                                              .rid
		.hps_0_h2f_lw_axi_master_rdata                                       (hps_0_h2f_lw_axi_master_rdata),                    //                                                              .rdata
		.hps_0_h2f_lw_axi_master_rresp                                       (hps_0_h2f_lw_axi_master_rresp),                    //                                                              .rresp
		.hps_0_h2f_lw_axi_master_rlast                                       (hps_0_h2f_lw_axi_master_rlast),                    //                                                              .rlast
		.hps_0_h2f_lw_axi_master_rvalid                                      (hps_0_h2f_lw_axi_master_rvalid),                   //                                                              .rvalid
		.hps_0_h2f_lw_axi_master_rready                                      (hps_0_h2f_lw_axi_master_rready),                   //                                                              .rready
		.clk_0_clk_clk                                                       (clk_clk),                                          //                                                     clk_0_clk.clk
		.hps_0_h2f_lw_axi_master_agent_clk_reset_reset_bridge_in_reset_reset (rst_controller_001_reset_out_reset),               // hps_0_h2f_lw_axi_master_agent_clk_reset_reset_bridge_in_reset.reset
		.onchip_memory2_0_reset1_reset_bridge_in_reset_reset                 (rst_controller_reset_out_reset),                   //                 onchip_memory2_0_reset1_reset_bridge_in_reset.reset
		.onchip_memory2_0_s1_address                                         (mm_interconnect_1_onchip_memory2_0_s1_address),    //                                           onchip_memory2_0_s1.address
		.onchip_memory2_0_s1_write                                           (mm_interconnect_1_onchip_memory2_0_s1_write),      //                                                              .write
		.onchip_memory2_0_s1_readdata                                        (mm_interconnect_1_onchip_memory2_0_s1_readdata),   //                                                              .readdata
		.onchip_memory2_0_s1_writedata                                       (mm_interconnect_1_onchip_memory2_0_s1_writedata),  //                                                              .writedata
		.onchip_memory2_0_s1_byteenable                                      (mm_interconnect_1_onchip_memory2_0_s1_byteenable), //                                                              .byteenable
		.onchip_memory2_0_s1_chipselect                                      (mm_interconnect_1_onchip_memory2_0_s1_chipselect), //                                                              .chipselect
		.onchip_memory2_0_s1_clken                                           (mm_interconnect_1_onchip_memory2_0_s1_clken)       //                                                              .clken
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (1),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.clk            (clk_clk),                            //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),     // reset_out.reset
		.reset_req      (rst_controller_reset_out_reset_req), //          .reset_req
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller_001 (
		.reset_in0      (~hps_0_h2f_reset_reset),             // reset_in0.reset
		.clk            (clk_clk),                            //       clk.clk
		.reset_out      (rst_controller_001_reset_out_reset), // reset_out.reset
		.reset_req      (),                                   // (terminated)
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule
