// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Sep  1 21:12:09 2019
// Host        : Michael-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_huffman_AXI_Lite_myip_0_0_sim_netlist.v
// Design      : design_1_huffman_AXI_Lite_myip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_huffman_AXI_Lite_myip_0_0,huffman_AXI_Lite_myip_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "huffman_AXI_Lite_myip_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_huffman_AXI_Lite_myip_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_huffman_AXI_Lite_myip_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_huffman_AXI_Lite_myip_v1_0_S00_AXI huffman_AXI_Lite_myip_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_huffman_AXI_Lite_myip_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire ARESET;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [15:0]data_out;
  wire data_out10;
  wire [16:0]data_out1_reg;
  wire [4:0]in;
  wire in_ready;
  wire out_valid;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [1:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire slv_reg1_reg_rep_i_10_n_0;
  wire slv_reg1_reg_rep_i_1_n_0;
  wire slv_reg1_reg_rep_i_3_n_0;
  wire slv_reg1_reg_rep_i_4_n_0;
  wire slv_reg1_reg_rep_i_5_n_0;
  wire slv_reg1_reg_rep_i_6_n_0;
  wire slv_reg1_reg_rep_i_7_n_0;
  wire slv_reg1_reg_rep_i_8_n_0;
  wire slv_reg1_reg_rep_i_9_n_0;
  wire [1:0]slv_reg2;
  wire [15:0]slv_reg3;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire [15:5]NLW_slv_reg1_reg_rep_DOADO_UNCONNECTED;
  wire [15:0]NLW_slv_reg1_reg_rep_DOBDO_UNCONNECTED;
  wire [1:0]NLW_slv_reg1_reg_rep_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_slv_reg1_reg_rep_DOPBDOP_UNCONNECTED;
  wire [15:0]NLW_slv_reg1_reg_rep__0_DOBDO_UNCONNECTED;
  wire [1:1]NLW_slv_reg1_reg_rep__0_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_slv_reg1_reg_rep__0_DOPBDOP_UNCONNECTED;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(ARESET));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(ARESET));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(ARESET));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(ARESET));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(ARESET));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg3[0]),
        .I1(slv_reg1[0]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[0]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[0]),
        .O(reg_data_out[0]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg3[10]),
        .I1(slv_reg1[10]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[10] ),
        .I4(axi_araddr[3]),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg3[11]),
        .I1(slv_reg1[11]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[11] ),
        .I4(axi_araddr[3]),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg3[12]),
        .I1(slv_reg1[12]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[12] ),
        .I4(axi_araddr[3]),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg3[13]),
        .I1(slv_reg1[13]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[13] ),
        .I4(axi_araddr[3]),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg3[14]),
        .I1(slv_reg1[14]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[14] ),
        .I4(axi_araddr[3]),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg3[15]),
        .I1(slv_reg1[15]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[15] ),
        .I4(axi_araddr[3]),
        .O(reg_data_out[15]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[16] ),
        .I3(axi_araddr[3]),
        .O(reg_data_out[16]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[17] ),
        .I3(axi_araddr[3]),
        .O(reg_data_out[17]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[18] ),
        .I3(axi_araddr[3]),
        .O(reg_data_out[18]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[19] ),
        .I3(axi_araddr[3]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg3[1]),
        .I1(slv_reg1[1]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[1]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[1]),
        .O(reg_data_out[1]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[20] ),
        .I3(axi_araddr[3]),
        .O(reg_data_out[20]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[21] ),
        .I3(axi_araddr[3]),
        .O(reg_data_out[21]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[22] ),
        .I3(axi_araddr[3]),
        .O(reg_data_out[22]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[23] ),
        .I3(axi_araddr[3]),
        .O(reg_data_out[23]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[24] ),
        .I3(axi_araddr[3]),
        .O(reg_data_out[24]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[25] ),
        .I3(axi_araddr[3]),
        .O(reg_data_out[25]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[26] ),
        .I3(axi_araddr[3]),
        .O(reg_data_out[26]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[27] ),
        .I3(axi_araddr[3]),
        .O(reg_data_out[27]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[28] ),
        .I3(axi_araddr[3]),
        .O(reg_data_out[28]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[29] ),
        .I3(axi_araddr[3]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg3[2]),
        .I1(slv_reg1[2]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[2] ),
        .I4(axi_araddr[3]),
        .O(reg_data_out[2]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[30] ),
        .I3(axi_araddr[3]),
        .O(reg_data_out[30]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg0_reg_n_0_[31] ),
        .I3(axi_araddr[3]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg3[3]),
        .I1(slv_reg1[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[3] ),
        .I4(axi_araddr[3]),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg3[4]),
        .I1(slv_reg1[4]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[4] ),
        .I4(axi_araddr[3]),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg3[5]),
        .I1(slv_reg1[5]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[5] ),
        .I4(axi_araddr[3]),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg3[6]),
        .I1(slv_reg1[6]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[6] ),
        .I4(axi_araddr[3]),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg3[7]),
        .I1(slv_reg1[7]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[7] ),
        .I4(axi_araddr[3]),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg3[8]),
        .I1(slv_reg1[8]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[8] ),
        .I4(axi_araddr[3]),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg3[9]),
        .I1(slv_reg1[9]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[9] ),
        .I4(axi_araddr[3]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(ARESET));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(ARESET));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(ARESET));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(ARESET));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(ARESET));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(ARESET));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(ARESET));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(ARESET));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(ARESET));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(ARESET));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(ARESET));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(ARESET));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(ARESET));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(ARESET));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(ARESET));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(ARESET));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(ARESET));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(ARESET));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(ARESET));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(ARESET));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(ARESET));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(ARESET));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(ARESET));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(ARESET));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(ARESET));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(ARESET));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(ARESET));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(ARESET));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(ARESET));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(ARESET));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(ARESET));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(ARESET));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(ARESET));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_huffman_encoder huffman_encoder_inst
       (.ARESET(ARESET),
        .D({out_valid,in_ready}),
        .DOADO(in),
        .Q(slv_reg0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .slv_reg1_reg_rep__0(data_out1_reg),
        .\slv_reg3_reg[15] (data_out));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(ARESET));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(ARESET));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(ARESET));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(ARESET));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(ARESET));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(ARESET));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(ARESET));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(ARESET));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(ARESET));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(ARESET));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(ARESET));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(ARESET));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(ARESET));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(ARESET));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(ARESET));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(ARESET));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(ARESET));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(ARESET));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(ARESET));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(ARESET));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(ARESET));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(ARESET));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(ARESET));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(ARESET));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(ARESET));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(ARESET));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(ARESET));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(ARESET));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(ARESET));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(ARESET));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(ARESET));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(ARESET));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(ARESET));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(ARESET));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(ARESET));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d5" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1280" *) 
  (* RTL_RAM_NAME = "inst/huffman_AXI_Lite_myip_v1_0_S00_AXI_inst/slv_reg1" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "4" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0006000600060006000600050005000500050005000500050005000500050005),
    .INIT_01(256'h0006000600060006000600060006000600060006000600060006000600060006),
    .INIT_02(256'h0007000700070007000700070007000700070007000700070007000700070007),
    .INIT_03(256'h0008000800080008000800080008000800080008000800070007000700070007),
    .INIT_04(256'h0009000900090009000900090008000800080008000800080008000800080008),
    .INIT_05(256'h000A000900090009000900090009000900090009000900090009000900090009),
    .INIT_06(256'h000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A),
    .INIT_07(256'h000B000B000B000B000B000B000B000B000B000B000B000B000A000A000A000A),
    .INIT_08(256'h000C000C000C000C000C000C000B000B000B000B000B000B000B000B000B000B),
    .INIT_09(256'h000D000D000C000C000C000C000C000C000C000C000C000C000C000C000C000C),
    .INIT_0A(256'h000D000D000D000D000D000D000D000D000D000D000D000D000D000D000D000D),
    .INIT_0B(256'h000E000E000E000E000E000E000E000E000E000E000E000E000E000D000D000D),
    .INIT_0C(256'h000F000F000F000F000F000F000F000F000E000E000E000E000E000E000E000E),
    .INIT_0D(256'h0010001000100010000F000F000F000F000F000F000F000F000F000F000F000F),
    .INIT_0E(256'h0010001000100010001000100010001000100010001000100010001000100010),
    .INIT_0F(256'h0011001100110011001100110011001100110011001100110011001100110011),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    slv_reg1_reg_rep
       (.ADDRARDADDR({1'b0,1'b0,slv_reg1_reg_rep_i_3_n_0,slv_reg1_reg_rep_i_4_n_0,slv_reg1_reg_rep_i_5_n_0,slv_reg1_reg_rep_i_6_n_0,slv_reg1_reg_rep_i_7_n_0,slv_reg1_reg_rep_i_8_n_0,slv_reg1_reg_rep_i_9_n_0,slv_reg1_reg_rep_i_10_n_0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_slv_reg1_reg_rep_DOADO_UNCONNECTED[15:5],in}),
        .DOBDO(NLW_slv_reg1_reg_rep_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_slv_reg1_reg_rep_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_slv_reg1_reg_rep_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(slv_reg1_reg_rep_i_1_n_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(data_out10),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(ARESET),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4352" *) 
  (* RTL_RAM_NAME = "inst/huffman_AXI_Lite_myip_v1_0_S00_AXI_inst/slv_reg1" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "16" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h5000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00080006000400020000001E001C001A00180016001400120010000E000C000A),
    .INIT_01(256'h003E003A00360032002E002A00260022001E001A001600120010000E000C000A),
    .INIT_02(256'h0056004E0046003E0036002E00260022001E001A00160012000E000A00060002),
    .INIT_03(256'h005E004E0046003E0036002E0026001E0016000E0006007E0076006E0066005E),
    .INIT_04(256'h005E004E003E002E001E000E00FE00EE00DE00CE00BE00AE009E008E007E006E),
    .INIT_05(256'h001E01FE01DE01BE019E017E015E013E011E00FE00DE00BE009E008E007E006E),
    .INIT_06(256'h02FE02BE027E023E01FE01BE017E013E011E00FE00DE00BE009E007E005E003E),
    .INIT_07(256'h037E02FE027E023E01FE01BE017E013E00FE00BE007E003E03FE03BE037E033E),
    .INIT_08(256'h02FF027F01FF017F00FF007F07FF077F06FF067F05FF057F04FF047F03FF037F),
    .INIT_09(256'h01FC00FC0FFC0EFD0DFD0CFD0BFD0AFD09FD08FD07FD05FF04FF047F03FF037F),
    .INIT_0A(256'h19F917F915F915F813F811F80FF80BFC09FC08FC07FC06FC05FC04FC03FC02FC),
    .INIT_0B(256'h1FF317FB13FB13FA11FA0FFA0DFA0BFA09FA07FA05FA03FB01FB1FFB1DF91BF9),
    .INIT_0C(256'h1BF71BF617F613F60FF60BF707F503F53FF53FF43BF037F033F02FF127F323F3),
    .INIT_0D(256'h17ED17EC0FE807E977E377E26FE267E35FE15FE04FE447E43FE42FF523F71FF7),
    .INIT_0E(256'hDFC7DFC6CFC5CFC49FCB9FCA8FCA7FCB5FE95FE847EC3FED2FEF2FEE27EE1FEF),
    .INIT_0F(256'h1F971F96FF95FF948FDB8FDA7FD97FD84FDF4FDE3FDD3FDC1FD31FD20FD10FD0),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    slv_reg1_reg_rep__0
       (.ADDRARDADDR({1'b0,1'b0,slv_reg1_reg_rep_i_3_n_0,slv_reg1_reg_rep_i_4_n_0,slv_reg1_reg_rep_i_5_n_0,slv_reg1_reg_rep_i_6_n_0,slv_reg1_reg_rep_i_7_n_0,slv_reg1_reg_rep_i_8_n_0,slv_reg1_reg_rep_i_9_n_0,slv_reg1_reg_rep_i_10_n_0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(data_out1_reg[15:0]),
        .DOBDO(NLW_slv_reg1_reg_rep__0_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP({NLW_slv_reg1_reg_rep__0_DOPADOP_UNCONNECTED[1],data_out1_reg[16]}),
        .DOPBDOP(NLW_slv_reg1_reg_rep__0_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(slv_reg1_reg_rep_i_1_n_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(data_out10),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(ARESET),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h4000FFFF)) 
    slv_reg1_reg_rep_i_1
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(s00_axi_wstrb[0]),
        .I3(slv_reg_wren__0),
        .I4(s00_axi_aresetn),
        .O(slv_reg1_reg_rep_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slv_reg1_reg_rep_i_10
       (.I0(s00_axi_wdata[0]),
        .I1(s00_axi_aresetn),
        .O(slv_reg1_reg_rep_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slv_reg1_reg_rep_i_2
       (.I0(slv_reg0[1]),
        .I1(slv_reg0[0]),
        .O(data_out10));
  LUT2 #(
    .INIT(4'h8)) 
    slv_reg1_reg_rep_i_3
       (.I0(s00_axi_wdata[7]),
        .I1(s00_axi_aresetn),
        .O(slv_reg1_reg_rep_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slv_reg1_reg_rep_i_4
       (.I0(s00_axi_wdata[6]),
        .I1(s00_axi_aresetn),
        .O(slv_reg1_reg_rep_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slv_reg1_reg_rep_i_5
       (.I0(s00_axi_wdata[5]),
        .I1(s00_axi_aresetn),
        .O(slv_reg1_reg_rep_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slv_reg1_reg_rep_i_6
       (.I0(s00_axi_wdata[4]),
        .I1(s00_axi_aresetn),
        .O(slv_reg1_reg_rep_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slv_reg1_reg_rep_i_7
       (.I0(s00_axi_wdata[3]),
        .I1(s00_axi_aresetn),
        .O(slv_reg1_reg_rep_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slv_reg1_reg_rep_i_8
       (.I0(s00_axi_wdata[2]),
        .I1(s00_axi_aresetn),
        .O(slv_reg1_reg_rep_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slv_reg1_reg_rep_i_9
       (.I0(s00_axi_wdata[1]),
        .I1(s00_axi_aresetn),
        .O(slv_reg1_reg_rep_i_9_n_0));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(in_ready),
        .Q(slv_reg2[0]),
        .R(1'b0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_valid),
        .Q(slv_reg2[1]),
        .R(1'b0));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_out[0]),
        .Q(slv_reg3[0]),
        .R(1'b0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_out[10]),
        .Q(slv_reg3[10]),
        .R(1'b0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_out[11]),
        .Q(slv_reg3[11]),
        .R(1'b0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_out[12]),
        .Q(slv_reg3[12]),
        .R(1'b0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_out[13]),
        .Q(slv_reg3[13]),
        .R(1'b0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_out[14]),
        .Q(slv_reg3[14]),
        .R(1'b0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_out[15]),
        .Q(slv_reg3[15]),
        .R(1'b0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_out[1]),
        .Q(slv_reg3[1]),
        .R(1'b0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_out[2]),
        .Q(slv_reg3[2]),
        .R(1'b0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_out[3]),
        .Q(slv_reg3[3]),
        .R(1'b0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_out[4]),
        .Q(slv_reg3[4]),
        .R(1'b0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_out[5]),
        .Q(slv_reg3[5]),
        .R(1'b0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_out[6]),
        .Q(slv_reg3[6]),
        .R(1'b0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_out[7]),
        .Q(slv_reg3[7]),
        .R(1'b0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_out[8]),
        .Q(slv_reg3[8]),
        .R(1'b0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_out[9]),
        .Q(slv_reg3[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_huffman_encoder
   (ARESET,
    D,
    \slv_reg3_reg[15] ,
    Q,
    s00_axi_aclk,
    DOADO,
    s00_axi_aresetn,
    slv_reg1_reg_rep__0);
  output ARESET;
  output [1:0]D;
  output [15:0]\slv_reg3_reg[15] ;
  input [1:0]Q;
  input s00_axi_aclk;
  input [4:0]DOADO;
  input s00_axi_aresetn;
  input [16:0]slv_reg1_reg_rep__0;

  wire ARESET;
  wire [1:0]D;
  wire [4:0]DOADO;
  wire [1:0]Q;
  wire [5:0]cl_sum;
  wire cl_sum15_out;
  wire cl_sum1__0;
  wire \cl_sum[1]_i_1_n_0 ;
  wire \cl_sum[2]_i_1_n_0 ;
  wire \cl_sum[3]_i_1_n_0 ;
  wire \cl_sum[4]_i_1_n_0 ;
  wire \cl_sum[5]_i_2_n_0 ;
  wire cl_sum_1;
  wire \cl_sum_prev0_inferred__0/i__carry__0_n_3 ;
  wire \cl_sum_prev0_inferred__0/i__carry__0_n_6 ;
  wire \cl_sum_prev0_inferred__0/i__carry__0_n_7 ;
  wire \cl_sum_prev0_inferred__0/i__carry_n_0 ;
  wire \cl_sum_prev0_inferred__0/i__carry_n_1 ;
  wire \cl_sum_prev0_inferred__0/i__carry_n_2 ;
  wire \cl_sum_prev0_inferred__0/i__carry_n_3 ;
  wire \cl_sum_prev0_inferred__0/i__carry_n_4 ;
  wire \cl_sum_prev0_inferred__0/i__carry_n_5 ;
  wire \cl_sum_prev0_inferred__0/i__carry_n_6 ;
  wire \cl_sum_prev0_inferred__0/i__carry_n_7 ;
  wire \cl_sum_prev[1]_i_2_n_0 ;
  wire \cl_sum_prev[2]_i_2_n_0 ;
  wire \cl_sum_prev[3]_i_3_n_0 ;
  wire \cl_sum_prev[5]_i_2_n_0 ;
  wire [5:1]cl_sum_prev_reg__0;
  wire [0:0]cl_sum_prev_reg__1;
  wire cl_sum_rdy_i_1_n_0;
  wire cl_sum_rdy_i_2_n_0;
  wire cl_sum_rdy_i_3_n_0;
  wire cl_sum_rdy_reg_n_0;
  wire [33:32]cl_sum_shift;
  wire [5:0]counter32;
  wire \counter32[0]_i_1_n_0 ;
  wire \counter32[0]_i_2_n_0 ;
  wire \counter32[0]_i_3_n_0 ;
  wire \counter32[1]_i_1_n_0 ;
  wire \counter32[2]_i_1_n_0 ;
  wire \counter32[2]_i_2_n_0 ;
  wire \counter32[3]_i_1_n_0 ;
  wire \counter32[3]_i_2_n_0 ;
  wire \counter32[3]_i_3_n_0 ;
  wire \counter32[4]_i_1_n_0 ;
  wire \counter32[5]_i_1_n_0 ;
  wire \counter32[5]_i_2_n_0 ;
  wire \counter32[5]_i_3_n_0 ;
  wire \counter64[0]_i_1_n_0 ;
  wire \counter64[1]_i_1_n_0 ;
  wire \counter64[2]_i_1_n_0 ;
  wire \counter64[3]_i_1_n_0 ;
  wire \counter64[4]_i_1_n_0 ;
  wire \counter64[5]_i_1_n_0 ;
  wire \counter64[5]_i_2_n_0 ;
  wire \counter64[6]_i_1_n_0 ;
  wire \counter64[6]_i_2_n_0 ;
  wire \counter64_reg_n_0_[0] ;
  wire \counter64_reg_n_0_[1] ;
  wire \counter64_reg_n_0_[2] ;
  wire \counter64_reg_n_0_[3] ;
  wire \counter64_reg_n_0_[4] ;
  wire \counter64_reg_n_0_[5] ;
  wire \counter64_reg_n_0_[6] ;
  wire [16:0]data_out2;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[10]_i_1_n_0 ;
  wire \data_out[11]_i_1_n_0 ;
  wire \data_out[12]_i_1_n_0 ;
  wire \data_out[13]_i_1_n_0 ;
  wire \data_out[14]_i_1_n_0 ;
  wire \data_out[15]_i_1_n_0 ;
  wire \data_out[15]_i_2_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire \data_out[8]_i_1_n_0 ;
  wire \data_out[9]_i_1_n_0 ;
  wire full_flag1;
  wire full_flag1_i_1_n_0;
  wire full_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r_n_0;
  wire full_flag5_reg_gate_n_0;
  wire full_flag5_reg_inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag5_reg_r_n_0;
  wire full_flag7;
  wire full_flag8;
  wire half_flag1;
  wire half_flag1_i_1_n_0;
  wire half_flag2_reg_r_n_0;
  wire half_flag3_reg_r_n_0;
  wire half_flag4_reg_r_n_0;
  wire half_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r_n_0;
  wire half_flag5_reg_gate_n_0;
  wire half_flag5_reg_inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag5_reg_r_n_0;
  wire half_flag5_reg_r_n_0;
  wire half_flag7;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire in_ready_i_1_n_0;
  wire \lower_reg1[14]_i_1_n_0 ;
  wire \lower_reg1[15]_i_1_n_0 ;
  wire \lower_reg1_reg_n_0_[14] ;
  wire \lower_reg1_reg_n_0_[15] ;
  wire [15:0]middle_reg1;
  wire [15:0]middle_reg2;
  wire [15:0]middle_reg3;
  wire mult_out2_reg_i_10_n_0;
  wire mult_out2_reg_i_11_n_0;
  wire mult_out2_reg_i_12_n_0;
  wire mult_out2_reg_i_13_n_0;
  wire mult_out2_reg_i_14_n_0;
  wire mult_out2_reg_i_15_n_0;
  wire mult_out2_reg_i_16_n_0;
  wire mult_out2_reg_i_1_n_0;
  wire mult_out2_reg_i_2_n_0;
  wire mult_out2_reg_i_3_n_0;
  wire mult_out2_reg_i_4_n_0;
  wire mult_out2_reg_i_5_n_0;
  wire mult_out2_reg_i_6_n_0;
  wire mult_out2_reg_i_7_n_0;
  wire mult_out2_reg_i_8_n_0;
  wire mult_out2_reg_i_9_n_0;
  wire mult_out2_reg_n_100;
  wire mult_out2_reg_n_101;
  wire mult_out2_reg_n_102;
  wire mult_out2_reg_n_103;
  wire mult_out2_reg_n_104;
  wire mult_out2_reg_n_105;
  wire mult_out2_reg_n_106;
  wire mult_out2_reg_n_107;
  wire mult_out2_reg_n_108;
  wire mult_out2_reg_n_109;
  wire mult_out2_reg_n_110;
  wire mult_out2_reg_n_111;
  wire mult_out2_reg_n_112;
  wire mult_out2_reg_n_113;
  wire mult_out2_reg_n_114;
  wire mult_out2_reg_n_115;
  wire mult_out2_reg_n_116;
  wire mult_out2_reg_n_117;
  wire mult_out2_reg_n_118;
  wire mult_out2_reg_n_119;
  wire mult_out2_reg_n_120;
  wire mult_out2_reg_n_121;
  wire mult_out2_reg_n_122;
  wire mult_out2_reg_n_123;
  wire mult_out2_reg_n_124;
  wire mult_out2_reg_n_125;
  wire mult_out2_reg_n_126;
  wire mult_out2_reg_n_127;
  wire mult_out2_reg_n_128;
  wire mult_out2_reg_n_129;
  wire mult_out2_reg_n_130;
  wire mult_out2_reg_n_131;
  wire mult_out2_reg_n_132;
  wire mult_out2_reg_n_133;
  wire mult_out2_reg_n_134;
  wire mult_out2_reg_n_135;
  wire mult_out2_reg_n_136;
  wire mult_out2_reg_n_137;
  wire mult_out2_reg_n_138;
  wire mult_out2_reg_n_139;
  wire mult_out2_reg_n_140;
  wire mult_out2_reg_n_141;
  wire mult_out2_reg_n_142;
  wire mult_out2_reg_n_143;
  wire mult_out2_reg_n_144;
  wire mult_out2_reg_n_145;
  wire mult_out2_reg_n_146;
  wire mult_out2_reg_n_147;
  wire mult_out2_reg_n_148;
  wire mult_out2_reg_n_149;
  wire mult_out2_reg_n_150;
  wire mult_out2_reg_n_151;
  wire mult_out2_reg_n_152;
  wire mult_out2_reg_n_153;
  wire mult_out2_reg_n_24;
  wire mult_out2_reg_n_25;
  wire mult_out2_reg_n_26;
  wire mult_out2_reg_n_27;
  wire mult_out2_reg_n_28;
  wire mult_out2_reg_n_29;
  wire mult_out2_reg_n_30;
  wire mult_out2_reg_n_31;
  wire mult_out2_reg_n_32;
  wire mult_out2_reg_n_33;
  wire mult_out2_reg_n_34;
  wire mult_out2_reg_n_35;
  wire mult_out2_reg_n_36;
  wire mult_out2_reg_n_37;
  wire mult_out2_reg_n_38;
  wire mult_out2_reg_n_39;
  wire mult_out2_reg_n_40;
  wire mult_out2_reg_n_41;
  wire mult_out2_reg_n_42;
  wire mult_out2_reg_n_43;
  wire mult_out2_reg_n_44;
  wire mult_out2_reg_n_45;
  wire mult_out2_reg_n_46;
  wire mult_out2_reg_n_47;
  wire mult_out2_reg_n_48;
  wire mult_out2_reg_n_49;
  wire mult_out2_reg_n_50;
  wire mult_out2_reg_n_51;
  wire mult_out2_reg_n_52;
  wire mult_out2_reg_n_53;
  wire mult_out2_reg_n_58;
  wire mult_out2_reg_n_59;
  wire mult_out2_reg_n_60;
  wire mult_out2_reg_n_61;
  wire mult_out2_reg_n_62;
  wire mult_out2_reg_n_63;
  wire mult_out2_reg_n_64;
  wire mult_out2_reg_n_65;
  wire mult_out2_reg_n_66;
  wire mult_out2_reg_n_67;
  wire mult_out2_reg_n_68;
  wire mult_out2_reg_n_69;
  wire mult_out2_reg_n_70;
  wire mult_out2_reg_n_71;
  wire mult_out2_reg_n_72;
  wire mult_out2_reg_n_73;
  wire mult_out2_reg_n_74;
  wire mult_out2_reg_n_75;
  wire mult_out2_reg_n_76;
  wire mult_out2_reg_n_77;
  wire mult_out2_reg_n_78;
  wire mult_out2_reg_n_79;
  wire mult_out2_reg_n_80;
  wire mult_out2_reg_n_81;
  wire mult_out2_reg_n_82;
  wire mult_out2_reg_n_83;
  wire mult_out2_reg_n_84;
  wire mult_out2_reg_n_85;
  wire mult_out2_reg_n_86;
  wire mult_out2_reg_n_87;
  wire mult_out2_reg_n_88;
  wire mult_out2_reg_n_89;
  wire mult_out2_reg_n_90;
  wire mult_out2_reg_n_91;
  wire mult_out2_reg_n_92;
  wire mult_out2_reg_n_93;
  wire mult_out2_reg_n_94;
  wire mult_out2_reg_n_95;
  wire mult_out2_reg_n_96;
  wire mult_out2_reg_n_97;
  wire mult_out2_reg_n_98;
  wire mult_out2_reg_n_99;
  wire [17:0]mult_out3_reg__0__0;
  wire mult_out3_reg__0_i_10_n_0;
  wire mult_out3_reg__0_i_11_n_0;
  wire mult_out3_reg__0_i_12_n_0;
  wire mult_out3_reg__0_i_13_n_0;
  wire mult_out3_reg__0_i_14_n_0;
  wire mult_out3_reg__0_i_15_n_0;
  wire mult_out3_reg__0_i_16_n_0;
  wire mult_out3_reg__0_i_17_n_0;
  wire mult_out3_reg__0_i_3_n_0;
  wire mult_out3_reg__0_i_4_n_0;
  wire mult_out3_reg__0_i_5_n_0;
  wire mult_out3_reg__0_i_6_n_0;
  wire mult_out3_reg__0_i_7_n_0;
  wire mult_out3_reg__0_i_8_n_0;
  wire mult_out3_reg__0_i_9_n_0;
  wire mult_out3_reg__0_n_100;
  wire mult_out3_reg__0_n_101;
  wire mult_out3_reg__0_n_102;
  wire mult_out3_reg__0_n_103;
  wire mult_out3_reg__0_n_104;
  wire mult_out3_reg__0_n_58;
  wire mult_out3_reg__0_n_59;
  wire mult_out3_reg__0_n_60;
  wire mult_out3_reg__0_n_61;
  wire mult_out3_reg__0_n_62;
  wire mult_out3_reg__0_n_63;
  wire mult_out3_reg__0_n_64;
  wire mult_out3_reg__0_n_65;
  wire mult_out3_reg__0_n_66;
  wire mult_out3_reg__0_n_67;
  wire mult_out3_reg__0_n_68;
  wire mult_out3_reg__0_n_69;
  wire mult_out3_reg__0_n_70;
  wire mult_out3_reg__0_n_71;
  wire mult_out3_reg__0_n_72;
  wire mult_out3_reg__0_n_73;
  wire mult_out3_reg__0_n_74;
  wire mult_out3_reg__0_n_75;
  wire mult_out3_reg__0_n_76;
  wire mult_out3_reg__0_n_77;
  wire mult_out3_reg__0_n_78;
  wire mult_out3_reg__0_n_79;
  wire mult_out3_reg__0_n_80;
  wire mult_out3_reg__0_n_81;
  wire mult_out3_reg__0_n_82;
  wire mult_out3_reg__0_n_83;
  wire mult_out3_reg__0_n_84;
  wire mult_out3_reg__0_n_85;
  wire mult_out3_reg__0_n_86;
  wire mult_out3_reg__0_n_87;
  wire mult_out3_reg__0_n_88;
  wire mult_out3_reg__0_n_89;
  wire mult_out3_reg__0_n_90;
  wire mult_out3_reg__0_n_91;
  wire mult_out3_reg__0_n_92;
  wire mult_out3_reg__0_n_93;
  wire mult_out3_reg__0_n_94;
  wire mult_out3_reg__0_n_95;
  wire mult_out3_reg__0_n_96;
  wire mult_out3_reg__0_n_97;
  wire mult_out3_reg__0_n_98;
  wire mult_out3_reg__0_n_99;
  wire out_valid_i_1_n_0;
  wire out_valid_i_2_n_0;
  wire out_valid_i_3_n_0;
  wire out_valid_i_4_n_0;
  wire [5:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [16:0]slv_reg1_reg_rep__0;
  wire [15:0]\slv_reg3_reg[15] ;
  wire upper_reg1;
  wire \upper_reg1[0]_i_1_n_0 ;
  wire \upper_reg1[10]_i_1_n_0 ;
  wire \upper_reg1[11]_i_1_n_0 ;
  wire \upper_reg1[12]_i_1_n_0 ;
  wire \upper_reg1[13]_i_1_n_0 ;
  wire \upper_reg1[14]_i_1_n_0 ;
  wire \upper_reg1[15]_i_1_n_0 ;
  wire \upper_reg1[1]_i_1_n_0 ;
  wire \upper_reg1[2]_i_1_n_0 ;
  wire \upper_reg1[3]_i_1_n_0 ;
  wire \upper_reg1[4]_i_1_n_0 ;
  wire \upper_reg1[5]_i_1_n_0 ;
  wire \upper_reg1[6]_i_1_n_0 ;
  wire \upper_reg1[7]_i_1_n_0 ;
  wire \upper_reg1[8]_i_1_n_0 ;
  wire \upper_reg1[9]_i_1_n_0 ;
  wire \upper_reg1_reg_n_0_[0] ;
  wire \upper_reg1_reg_n_0_[10] ;
  wire \upper_reg1_reg_n_0_[11] ;
  wire \upper_reg1_reg_n_0_[12] ;
  wire \upper_reg1_reg_n_0_[13] ;
  wire \upper_reg1_reg_n_0_[14] ;
  wire \upper_reg1_reg_n_0_[15] ;
  wire \upper_reg1_reg_n_0_[1] ;
  wire \upper_reg1_reg_n_0_[2] ;
  wire \upper_reg1_reg_n_0_[3] ;
  wire \upper_reg1_reg_n_0_[4] ;
  wire \upper_reg1_reg_n_0_[5] ;
  wire \upper_reg1_reg_n_0_[6] ;
  wire \upper_reg1_reg_n_0_[7] ;
  wire \upper_reg1_reg_n_0_[8] ;
  wire \upper_reg1_reg_n_0_[9] ;
  wire [15:0]upper_reg2;
  wire [3:1]\NLW_cl_sum_prev0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_cl_sum_prev0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire NLW_mult_out2_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult_out2_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult_out2_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mult_out2_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult_out2_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult_out2_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_mult_out2_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult_out2_reg_CARRYOUT_UNCONNECTED;
  wire NLW_mult_out3_reg__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult_out3_reg__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult_out3_reg__0_OVERFLOW_UNCONNECTED;
  wire NLW_mult_out3_reg__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult_out3_reg__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult_out3_reg__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mult_out3_reg__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult_out3_reg__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult_out3_reg__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mult_out3_reg__0_PCOUT_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \cl_sum[1]_i_1 
       (.I0(cl_sum_prev_reg__1),
        .I1(cl_sum_prev_reg__0[1]),
        .O(\cl_sum[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cl_sum[2]_i_1 
       (.I0(cl_sum_prev_reg__0[1]),
        .I1(cl_sum_prev_reg__1),
        .I2(cl_sum_prev_reg__0[2]),
        .O(\cl_sum[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h15EA)) 
    \cl_sum[3]_i_1 
       (.I0(cl_sum_prev_reg__0[2]),
        .I1(cl_sum_prev_reg__1),
        .I2(cl_sum_prev_reg__0[1]),
        .I3(cl_sum_prev_reg__0[3]),
        .O(\cl_sum[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0015FFEA)) 
    \cl_sum[4]_i_1 
       (.I0(cl_sum_prev_reg__0[3]),
        .I1(cl_sum_prev_reg__0[1]),
        .I2(cl_sum_prev_reg__1),
        .I3(cl_sum_prev_reg__0[2]),
        .I4(cl_sum_prev_reg__0[4]),
        .O(\cl_sum[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cl_sum[5]_i_1 
       (.I0(cl_sum_rdy_reg_n_0),
        .I1(cl_sum15_out),
        .I2(cl_sum_prev_reg__0[5]),
        .I3(cl_sum_prev_reg__0[4]),
        .O(cl_sum_1));
  LUT6 #(
    .INIT(64'hFFFFFEEE00000111)) 
    \cl_sum[5]_i_2 
       (.I0(cl_sum_prev_reg__0[4]),
        .I1(cl_sum_prev_reg__0[2]),
        .I2(cl_sum_prev_reg__1),
        .I3(cl_sum_prev_reg__0[1]),
        .I4(cl_sum_prev_reg__0[3]),
        .I5(cl_sum_prev_reg__0[5]),
        .O(\cl_sum[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFF0000)) 
    \cl_sum[5]_i_3 
       (.I0(cl_sum_prev_reg__0[3]),
        .I1(cl_sum_prev_reg__0[1]),
        .I2(cl_sum_prev_reg__1),
        .I3(cl_sum_prev_reg__0[2]),
        .I4(cl_sum_prev_reg__0[4]),
        .I5(cl_sum_prev_reg__0[5]),
        .O(cl_sum15_out));
  CARRY4 \cl_sum_prev0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\cl_sum_prev0_inferred__0/i__carry_n_0 ,\cl_sum_prev0_inferred__0/i__carry_n_1 ,\cl_sum_prev0_inferred__0/i__carry_n_2 ,\cl_sum_prev0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(DOADO[3:0]),
        .O({\cl_sum_prev0_inferred__0/i__carry_n_4 ,\cl_sum_prev0_inferred__0/i__carry_n_5 ,\cl_sum_prev0_inferred__0/i__carry_n_6 ,\cl_sum_prev0_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \cl_sum_prev0_inferred__0/i__carry__0 
       (.CI(\cl_sum_prev0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_cl_sum_prev0_inferred__0/i__carry__0_CO_UNCONNECTED [3:1],\cl_sum_prev0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DOADO[4]}),
        .O({\NLW_cl_sum_prev0_inferred__0/i__carry__0_O_UNCONNECTED [3:2],\cl_sum_prev0_inferred__0/i__carry__0_n_6 ,\cl_sum_prev0_inferred__0/i__carry__0_n_7 }),
        .S({1'b0,1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0}));
  LUT6 #(
    .INIT(64'hE000F1FFF1FFE000)) 
    \cl_sum_prev[0]_i_1 
       (.I0(cl_sum_prev_reg__0[5]),
        .I1(cl_sum_prev_reg__0[4]),
        .I2(\cl_sum_prev0_inferred__0/i__carry_n_7 ),
        .I3(cl_sum15_out),
        .I4(DOADO[0]),
        .I5(cl_sum_prev_reg__1),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hEF4040EF40EFEF40)) 
    \cl_sum_prev[1]_i_1 
       (.I0(cl_sum1__0),
        .I1(\cl_sum_prev0_inferred__0/i__carry_n_6 ),
        .I2(cl_sum15_out),
        .I3(\cl_sum_prev[1]_i_2_n_0 ),
        .I4(cl_sum_prev_reg__0[1]),
        .I5(DOADO[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cl_sum_prev[1]_i_2 
       (.I0(cl_sum_prev_reg__1),
        .I1(DOADO[0]),
        .O(\cl_sum_prev[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEF4040EF40EFEF40)) 
    \cl_sum_prev[2]_i_1 
       (.I0(cl_sum1__0),
        .I1(\cl_sum_prev0_inferred__0/i__carry_n_5 ),
        .I2(cl_sum15_out),
        .I3(\cl_sum_prev[2]_i_2_n_0 ),
        .I4(cl_sum_prev_reg__0[2]),
        .I5(DOADO[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \cl_sum_prev[2]_i_2 
       (.I0(cl_sum_prev_reg__0[1]),
        .I1(DOADO[1]),
        .I2(DOADO[0]),
        .I3(cl_sum_prev_reg__1),
        .O(\cl_sum_prev[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEF4040EF40EFEF40)) 
    \cl_sum_prev[3]_i_1 
       (.I0(cl_sum1__0),
        .I1(\cl_sum_prev0_inferred__0/i__carry_n_4 ),
        .I2(cl_sum15_out),
        .I3(\cl_sum_prev[3]_i_3_n_0 ),
        .I4(cl_sum_prev_reg__0[3]),
        .I5(DOADO[3]),
        .O(p_0_in[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \cl_sum_prev[3]_i_2 
       (.I0(cl_sum_prev_reg__0[5]),
        .I1(cl_sum_prev_reg__0[4]),
        .O(cl_sum1__0));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \cl_sum_prev[3]_i_3 
       (.I0(cl_sum_prev_reg__0[2]),
        .I1(DOADO[2]),
        .I2(cl_sum_prev_reg__1),
        .I3(DOADO[0]),
        .I4(DOADO[1]),
        .I5(cl_sum_prev_reg__0[1]),
        .O(\cl_sum_prev[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE0CCF133F133E0CC)) 
    \cl_sum_prev[4]_i_1 
       (.I0(cl_sum_prev_reg__0[5]),
        .I1(cl_sum_prev_reg__0[4]),
        .I2(\cl_sum_prev0_inferred__0/i__carry__0_n_7 ),
        .I3(cl_sum15_out),
        .I4(\cl_sum_prev[5]_i_2_n_0 ),
        .I5(DOADO[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hF1BBE088E088E044)) 
    \cl_sum_prev[5]_i_1 
       (.I0(cl_sum_prev_reg__0[5]),
        .I1(cl_sum_prev_reg__0[4]),
        .I2(\cl_sum_prev0_inferred__0/i__carry__0_n_6 ),
        .I3(cl_sum15_out),
        .I4(DOADO[4]),
        .I5(\cl_sum_prev[5]_i_2_n_0 ),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'hE8)) 
    \cl_sum_prev[5]_i_2 
       (.I0(cl_sum_prev_reg__0[3]),
        .I1(DOADO[3]),
        .I2(\cl_sum_prev[3]_i_3_n_0 ),
        .O(\cl_sum_prev[5]_i_2_n_0 ));
  FDRE \cl_sum_prev_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cl_sum_1),
        .D(p_0_in[0]),
        .Q(cl_sum_prev_reg__1),
        .R(ARESET));
  FDRE \cl_sum_prev_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cl_sum_1),
        .D(p_0_in[1]),
        .Q(cl_sum_prev_reg__0[1]),
        .R(ARESET));
  FDRE \cl_sum_prev_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cl_sum_1),
        .D(p_0_in[2]),
        .Q(cl_sum_prev_reg__0[2]),
        .R(ARESET));
  FDRE \cl_sum_prev_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cl_sum_1),
        .D(p_0_in[3]),
        .Q(cl_sum_prev_reg__0[3]),
        .R(ARESET));
  FDRE \cl_sum_prev_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cl_sum_1),
        .D(p_0_in[4]),
        .Q(cl_sum_prev_reg__0[4]),
        .R(ARESET));
  FDRE \cl_sum_prev_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cl_sum_1),
        .D(p_0_in[5]),
        .Q(cl_sum_prev_reg__0[5]),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    cl_sum_rdy_i_1
       (.I0(cl_sum_rdy_i_2_n_0),
        .I1(\counter64_reg_n_0_[0] ),
        .I2(\counter64_reg_n_0_[2] ),
        .I3(cl_sum_rdy_i_3_n_0),
        .I4(\counter64_reg_n_0_[1] ),
        .I5(cl_sum_rdy_reg_n_0),
        .O(cl_sum_rdy_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cl_sum_rdy_i_2
       (.I0(\counter64_reg_n_0_[4] ),
        .I1(\counter64_reg_n_0_[3] ),
        .O(cl_sum_rdy_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    cl_sum_rdy_i_3
       (.I0(\counter64_reg_n_0_[6] ),
        .I1(\counter64_reg_n_0_[5] ),
        .O(cl_sum_rdy_i_3_n_0));
  FDRE cl_sum_rdy_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(cl_sum_rdy_i_1_n_0),
        .Q(cl_sum_rdy_reg_n_0),
        .R(ARESET));
  FDRE \cl_sum_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cl_sum_1),
        .D(cl_sum_prev_reg__1),
        .Q(cl_sum[0]),
        .R(ARESET));
  FDSE \cl_sum_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cl_sum_1),
        .D(\cl_sum[1]_i_1_n_0 ),
        .Q(cl_sum[1]),
        .S(ARESET));
  FDRE \cl_sum_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cl_sum_1),
        .D(\cl_sum[2]_i_1_n_0 ),
        .Q(cl_sum[2]),
        .R(ARESET));
  FDRE \cl_sum_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cl_sum_1),
        .D(\cl_sum[3]_i_1_n_0 ),
        .Q(cl_sum[3]),
        .R(ARESET));
  FDRE \cl_sum_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cl_sum_1),
        .D(\cl_sum[4]_i_1_n_0 ),
        .Q(cl_sum[4]),
        .R(ARESET));
  FDSE \cl_sum_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cl_sum_1),
        .D(\cl_sum[5]_i_2_n_0 ),
        .Q(cl_sum[5]),
        .S(ARESET));
  LUT6 #(
    .INIT(64'h54F4000000000000)) 
    \counter32[0]_i_1 
       (.I0(counter32[0]),
        .I1(\counter32[0]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(\counter32[0]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(s00_axi_aresetn),
        .O(\counter32[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter32[0]_i_2 
       (.I0(counter32[2]),
        .I1(counter32[1]),
        .I2(counter32[0]),
        .I3(counter32[4]),
        .I4(counter32[3]),
        .I5(counter32[5]),
        .O(\counter32[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001FFF)) 
    \counter32[0]_i_3 
       (.I0(counter32[1]),
        .I1(counter32[0]),
        .I2(counter32[3]),
        .I3(counter32[2]),
        .I4(counter32[4]),
        .I5(counter32[5]),
        .O(\counter32[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0069)) 
    \counter32[1]_i_1 
       (.I0(counter32[0]),
        .I1(counter32[1]),
        .I2(Q[1]),
        .I3(\counter32[5]_i_3_n_0 ),
        .O(\counter32[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \counter32[2]_i_1 
       (.I0(\counter32[2]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(s00_axi_aresetn),
        .O(\counter32[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74CCFC44FC44CC74)) 
    \counter32[2]_i_2 
       (.I0(\counter32[0]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\counter32[0]_i_2_n_0 ),
        .I3(counter32[2]),
        .I4(counter32[0]),
        .I5(counter32[1]),
        .O(\counter32[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \counter32[3]_i_1 
       (.I0(\counter32[3]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\counter32[3]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(s00_axi_aresetn),
        .O(\counter32[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F00E)) 
    \counter32[3]_i_2 
       (.I0(counter32[5]),
        .I1(counter32[4]),
        .I2(counter32[3]),
        .I3(counter32[1]),
        .I4(counter32[0]),
        .I5(counter32[2]),
        .O(\counter32[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFEEFFEEFFEE)) 
    \counter32[3]_i_3 
       (.I0(counter32[5]),
        .I1(counter32[4]),
        .I2(counter32[2]),
        .I3(counter32[3]),
        .I4(counter32[0]),
        .I5(counter32[1]),
        .O(\counter32[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0009)) 
    \counter32[4]_i_1 
       (.I0(\counter32[5]_i_2_n_0 ),
        .I1(counter32[4]),
        .I2(Q[1]),
        .I3(\counter32[5]_i_3_n_0 ),
        .O(\counter32[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000000E1)) 
    \counter32[5]_i_1 
       (.I0(counter32[4]),
        .I1(\counter32[5]_i_2_n_0 ),
        .I2(counter32[5]),
        .I3(Q[1]),
        .I4(\counter32[5]_i_3_n_0 ),
        .O(\counter32[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter32[5]_i_2 
       (.I0(counter32[2]),
        .I1(counter32[0]),
        .I2(counter32[1]),
        .I3(counter32[3]),
        .O(\counter32[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h777FFF7F)) 
    \counter32[5]_i_3 
       (.I0(Q[0]),
        .I1(s00_axi_aresetn),
        .I2(\counter32[0]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\counter32[0]_i_3_n_0 ),
        .O(\counter32[5]_i_3_n_0 ));
  FDRE \counter32_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter32[0]_i_1_n_0 ),
        .Q(counter32[0]),
        .R(1'b0));
  FDRE \counter32_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter32[1]_i_1_n_0 ),
        .Q(counter32[1]),
        .R(1'b0));
  FDRE \counter32_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter32[2]_i_1_n_0 ),
        .Q(counter32[2]),
        .R(1'b0));
  FDRE \counter32_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter32[3]_i_1_n_0 ),
        .Q(counter32[3]),
        .R(1'b0));
  FDRE \counter32_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter32[4]_i_1_n_0 ),
        .Q(counter32[4]),
        .R(1'b0));
  FDRE \counter32_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter32[5]_i_1_n_0 ),
        .Q(counter32[5]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hDA)) 
    \counter64[0]_i_1 
       (.I0(Q[0]),
        .I1(\counter64_reg_n_0_[6] ),
        .I2(\counter64_reg_n_0_[0] ),
        .O(\counter64[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter64[1]_i_1 
       (.I0(\counter64_reg_n_0_[0] ),
        .I1(\counter64_reg_n_0_[1] ),
        .O(\counter64[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter64[2]_i_1 
       (.I0(\counter64_reg_n_0_[0] ),
        .I1(\counter64_reg_n_0_[1] ),
        .I2(\counter64_reg_n_0_[2] ),
        .O(\counter64[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter64[3]_i_1 
       (.I0(\counter64_reg_n_0_[1] ),
        .I1(\counter64_reg_n_0_[0] ),
        .I2(\counter64_reg_n_0_[2] ),
        .I3(\counter64_reg_n_0_[3] ),
        .O(\counter64[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter64[4]_i_1 
       (.I0(\counter64_reg_n_0_[2] ),
        .I1(\counter64_reg_n_0_[0] ),
        .I2(\counter64_reg_n_0_[1] ),
        .I3(\counter64_reg_n_0_[3] ),
        .I4(\counter64_reg_n_0_[4] ),
        .O(\counter64[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \counter64[5]_i_1 
       (.I0(Q[0]),
        .I1(\counter64_reg_n_0_[6] ),
        .I2(s00_axi_aresetn),
        .O(\counter64[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter64[5]_i_2 
       (.I0(\counter64_reg_n_0_[3] ),
        .I1(\counter64_reg_n_0_[1] ),
        .I2(\counter64_reg_n_0_[0] ),
        .I3(\counter64_reg_n_0_[2] ),
        .I4(\counter64_reg_n_0_[4] ),
        .I5(\counter64_reg_n_0_[5] ),
        .O(\counter64[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0F80)) 
    \counter64[6]_i_1 
       (.I0(\counter64_reg_n_0_[5] ),
        .I1(\counter64[6]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(\counter64_reg_n_0_[6] ),
        .O(\counter64[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter64[6]_i_2 
       (.I0(\counter64_reg_n_0_[4] ),
        .I1(\counter64_reg_n_0_[2] ),
        .I2(\counter64_reg_n_0_[0] ),
        .I3(\counter64_reg_n_0_[1] ),
        .I4(\counter64_reg_n_0_[3] ),
        .O(\counter64[6]_i_2_n_0 ));
  FDRE \counter64_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter64[0]_i_1_n_0 ),
        .Q(\counter64_reg_n_0_[0] ),
        .R(ARESET));
  FDRE \counter64_reg[1] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\counter64[1]_i_1_n_0 ),
        .Q(\counter64_reg_n_0_[1] ),
        .R(\counter64[5]_i_1_n_0 ));
  FDRE \counter64_reg[2] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\counter64[2]_i_1_n_0 ),
        .Q(\counter64_reg_n_0_[2] ),
        .R(\counter64[5]_i_1_n_0 ));
  FDRE \counter64_reg[3] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\counter64[3]_i_1_n_0 ),
        .Q(\counter64_reg_n_0_[3] ),
        .R(\counter64[5]_i_1_n_0 ));
  FDRE \counter64_reg[4] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\counter64[4]_i_1_n_0 ),
        .Q(\counter64_reg_n_0_[4] ),
        .R(\counter64[5]_i_1_n_0 ));
  FDRE \counter64_reg[5] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\counter64[5]_i_2_n_0 ),
        .Q(\counter64_reg_n_0_[5] ),
        .R(\counter64[5]_i_1_n_0 ));
  FDSE \counter64_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter64[6]_i_1_n_0 ),
        .Q(\counter64_reg_n_0_[6] ),
        .S(ARESET));
  FDRE \data_out2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_reg_rep__0[0]),
        .Q(data_out2[0]),
        .R(ARESET));
  FDRE \data_out2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_reg_rep__0[10]),
        .Q(data_out2[10]),
        .R(ARESET));
  FDRE \data_out2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_reg_rep__0[11]),
        .Q(data_out2[11]),
        .R(ARESET));
  FDRE \data_out2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_reg_rep__0[12]),
        .Q(data_out2[12]),
        .R(ARESET));
  FDRE \data_out2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_reg_rep__0[13]),
        .Q(data_out2[13]),
        .R(ARESET));
  FDRE \data_out2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_reg_rep__0[14]),
        .Q(data_out2[14]),
        .R(ARESET));
  FDRE \data_out2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_reg_rep__0[15]),
        .Q(data_out2[15]),
        .R(ARESET));
  FDRE \data_out2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_reg_rep__0[16]),
        .Q(data_out2[16]),
        .R(ARESET));
  FDRE \data_out2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_reg_rep__0[1]),
        .Q(data_out2[1]),
        .R(ARESET));
  FDRE \data_out2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_reg_rep__0[2]),
        .Q(data_out2[2]),
        .R(ARESET));
  FDRE \data_out2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_reg_rep__0[3]),
        .Q(data_out2[3]),
        .R(ARESET));
  FDRE \data_out2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_reg_rep__0[4]),
        .Q(data_out2[4]),
        .R(ARESET));
  FDRE \data_out2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_reg_rep__0[5]),
        .Q(data_out2[5]),
        .R(ARESET));
  FDRE \data_out2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_reg_rep__0[6]),
        .Q(data_out2[6]),
        .R(ARESET));
  FDRE \data_out2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_reg_rep__0[7]),
        .Q(data_out2[7]),
        .R(ARESET));
  FDRE \data_out2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_reg_rep__0[8]),
        .Q(data_out2[8]),
        .R(ARESET));
  FDRE \data_out2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg1_reg_rep__0[9]),
        .Q(data_out2[9]),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[0]_i_1 
       (.I0(upper_reg2[0]),
        .I1(middle_reg3[0]),
        .I2(half_flag7),
        .O(\data_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[10]_i_1 
       (.I0(upper_reg2[10]),
        .I1(middle_reg3[10]),
        .I2(half_flag7),
        .O(\data_out[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[11]_i_1 
       (.I0(upper_reg2[11]),
        .I1(middle_reg3[11]),
        .I2(half_flag7),
        .O(\data_out[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[12]_i_1 
       (.I0(upper_reg2[12]),
        .I1(middle_reg3[12]),
        .I2(half_flag7),
        .O(\data_out[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[13]_i_1 
       (.I0(upper_reg2[13]),
        .I1(middle_reg3[13]),
        .I2(half_flag7),
        .O(\data_out[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[14]_i_1 
       (.I0(upper_reg2[14]),
        .I1(middle_reg3[14]),
        .I2(half_flag7),
        .O(\data_out[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_out[15]_i_1 
       (.I0(Q[0]),
        .I1(full_flag8),
        .I2(half_flag7),
        .O(\data_out[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[15]_i_2 
       (.I0(upper_reg2[15]),
        .I1(middle_reg3[15]),
        .I2(half_flag7),
        .O(\data_out[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[1]_i_1 
       (.I0(upper_reg2[1]),
        .I1(middle_reg3[1]),
        .I2(half_flag7),
        .O(\data_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[2]_i_1 
       (.I0(upper_reg2[2]),
        .I1(middle_reg3[2]),
        .I2(half_flag7),
        .O(\data_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[3]_i_1 
       (.I0(upper_reg2[3]),
        .I1(middle_reg3[3]),
        .I2(half_flag7),
        .O(\data_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[4]_i_1 
       (.I0(upper_reg2[4]),
        .I1(middle_reg3[4]),
        .I2(half_flag7),
        .O(\data_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[5]_i_1 
       (.I0(upper_reg2[5]),
        .I1(middle_reg3[5]),
        .I2(half_flag7),
        .O(\data_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[6]_i_1 
       (.I0(upper_reg2[6]),
        .I1(middle_reg3[6]),
        .I2(half_flag7),
        .O(\data_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[7]_i_1 
       (.I0(upper_reg2[7]),
        .I1(middle_reg3[7]),
        .I2(half_flag7),
        .O(\data_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[8]_i_1 
       (.I0(upper_reg2[8]),
        .I1(middle_reg3[8]),
        .I2(half_flag7),
        .O(\data_out[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[9]_i_1 
       (.I0(upper_reg2[9]),
        .I1(middle_reg3[9]),
        .I2(half_flag7),
        .O(\data_out[9]_i_1_n_0 ));
  FDRE \data_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(\slv_reg3_reg[15] [0]),
        .R(ARESET));
  FDRE \data_out_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(\data_out[10]_i_1_n_0 ),
        .Q(\slv_reg3_reg[15] [10]),
        .R(ARESET));
  FDRE \data_out_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(\data_out[11]_i_1_n_0 ),
        .Q(\slv_reg3_reg[15] [11]),
        .R(ARESET));
  FDRE \data_out_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(\data_out[12]_i_1_n_0 ),
        .Q(\slv_reg3_reg[15] [12]),
        .R(ARESET));
  FDRE \data_out_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(\data_out[13]_i_1_n_0 ),
        .Q(\slv_reg3_reg[15] [13]),
        .R(ARESET));
  FDRE \data_out_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(\data_out[14]_i_1_n_0 ),
        .Q(\slv_reg3_reg[15] [14]),
        .R(ARESET));
  FDRE \data_out_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(\data_out[15]_i_2_n_0 ),
        .Q(\slv_reg3_reg[15] [15]),
        .R(ARESET));
  FDRE \data_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(\slv_reg3_reg[15] [1]),
        .R(ARESET));
  FDRE \data_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(\slv_reg3_reg[15] [2]),
        .R(ARESET));
  FDRE \data_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(\slv_reg3_reg[15] [3]),
        .R(ARESET));
  FDRE \data_out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(\slv_reg3_reg[15] [4]),
        .R(ARESET));
  FDRE \data_out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(\slv_reg3_reg[15] [5]),
        .R(ARESET));
  FDRE \data_out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(\slv_reg3_reg[15] [6]),
        .R(ARESET));
  FDRE \data_out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(\slv_reg3_reg[15] [7]),
        .R(ARESET));
  FDRE \data_out_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(\data_out[8]_i_1_n_0 ),
        .Q(\slv_reg3_reg[15] [8]),
        .R(ARESET));
  FDRE \data_out_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(\data_out[9]_i_1_n_0 ),
        .Q(\slv_reg3_reg[15] [9]),
        .R(ARESET));
  LUT6 #(
    .INIT(64'h08C8088808C80808)) 
    full_flag1_i_1
       (.I0(full_flag1),
        .I1(s00_axi_aresetn),
        .I2(cl_sum_rdy_reg_n_0),
        .I3(cl_sum15_out),
        .I4(cl_sum_prev_reg__0[5]),
        .I5(cl_sum_prev_reg__0[4]),
        .O(full_flag1_i_1_n_0));
  FDRE full_flag1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(full_flag1_i_1_n_0),
        .Q(full_flag1),
        .R(1'b0));
  (* srl_name = "\inst/huffman_AXI_Lite_myip_v1_0_S00_AXI_inst/huffman_encoder_inst/full_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r " *) 
  SRL16E full_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(Q[0]),
        .CLK(s00_axi_aclk),
        .D(full_flag1),
        .Q(full_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    full_flag5_reg_gate
       (.I0(full_flag5_reg_inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag5_reg_r_n_0),
        .I1(half_flag5_reg_r_n_0),
        .O(full_flag5_reg_gate_n_0));
  FDRE full_flag5_reg_inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag5_reg_r
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(full_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r_n_0),
        .Q(full_flag5_reg_inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag5_reg_r_n_0),
        .R(1'b0));
  FDRE full_flag6_reg
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(full_flag5_reg_gate_n_0),
        .Q(p_0_in_0[1]),
        .R(ARESET));
  FDRE full_flag7_reg
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(p_0_in_0[1]),
        .Q(full_flag7),
        .R(ARESET));
  FDRE full_flag8_reg
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(full_flag7),
        .Q(full_flag8),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hF0A0F0A0E0A000A0)) 
    half_flag1_i_1
       (.I0(half_flag1),
        .I1(cl_sum15_out),
        .I2(s00_axi_aresetn),
        .I3(cl_sum_rdy_reg_n_0),
        .I4(cl_sum_prev_reg__0[4]),
        .I5(cl_sum_prev_reg__0[5]),
        .O(half_flag1_i_1_n_0));
  FDRE half_flag1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(half_flag1_i_1_n_0),
        .Q(half_flag1),
        .R(1'b0));
  FDRE half_flag2_reg_r
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(1'b1),
        .Q(half_flag2_reg_r_n_0),
        .R(ARESET));
  FDRE half_flag3_reg_r
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(half_flag2_reg_r_n_0),
        .Q(half_flag3_reg_r_n_0),
        .R(ARESET));
  FDRE half_flag4_reg_r
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(half_flag3_reg_r_n_0),
        .Q(half_flag4_reg_r_n_0),
        .R(ARESET));
  (* srl_name = "\inst/huffman_AXI_Lite_myip_v1_0_S00_AXI_inst/huffman_encoder_inst/half_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r " *) 
  SRL16E half_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(Q[0]),
        .CLK(s00_axi_aclk),
        .D(half_flag1),
        .Q(half_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    half_flag5_reg_gate
       (.I0(half_flag5_reg_inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag5_reg_r_n_0),
        .I1(half_flag5_reg_r_n_0),
        .O(half_flag5_reg_gate_n_0));
  FDRE half_flag5_reg_inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag5_reg_r
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(half_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r_n_0),
        .Q(half_flag5_reg_inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag5_reg_r_n_0),
        .R(1'b0));
  FDRE half_flag5_reg_r
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(half_flag4_reg_r_n_0),
        .Q(half_flag5_reg_r_n_0),
        .R(ARESET));
  FDRE half_flag6_reg
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(half_flag5_reg_gate_n_0),
        .Q(p_0_in_0[0]),
        .R(ARESET));
  FDRE half_flag7_reg
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(p_0_in_0[0]),
        .Q(half_flag7),
        .R(ARESET));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(cl_sum_prev_reg__0[4]),
        .I1(cl_sum_prev_reg__0[5]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(cl_sum_prev_reg__0[4]),
        .I1(DOADO[4]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1
       (.I0(DOADO[3]),
        .I1(cl_sum_prev_reg__0[3]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2
       (.I0(DOADO[2]),
        .I1(cl_sum_prev_reg__0[2]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3
       (.I0(DOADO[1]),
        .I1(cl_sum_prev_reg__0[1]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4
       (.I0(DOADO[0]),
        .I1(cl_sum_prev_reg__1),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000008)) 
    in_ready_i_1
       (.I0(\counter64_reg_n_0_[0] ),
        .I1(\counter64_reg_n_0_[2] ),
        .I2(\counter64_reg_n_0_[1] ),
        .I3(cl_sum_rdy_i_2_n_0),
        .I4(cl_sum_rdy_i_3_n_0),
        .I5(D[0]),
        .O(in_ready_i_1_n_0));
  FDRE in_ready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(in_ready_i_1_n_0),
        .Q(D[0]),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lower_reg1[14]_i_1 
       (.I0(mult_out3_reg__0__0[0]),
        .I1(p_0_in_0[1]),
        .O(\lower_reg1[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lower_reg1[15]_i_1 
       (.I0(mult_out3_reg__0__0[1]),
        .I1(p_0_in_0[1]),
        .O(\lower_reg1[15]_i_1_n_0 ));
  FDRE \lower_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\lower_reg1[14]_i_1_n_0 ),
        .Q(\lower_reg1_reg_n_0_[14] ),
        .R(ARESET));
  FDRE \lower_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\lower_reg1[15]_i_1_n_0 ),
        .Q(\lower_reg1_reg_n_0_[15] ),
        .R(ARESET));
  LUT3 #(
    .INIT(8'hA2)) 
    \middle_reg1[15]_i_1 
       (.I0(Q[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .O(upper_reg1));
  FDRE \middle_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(mult_out3_reg__0__0[2]),
        .Q(middle_reg1[0]),
        .R(ARESET));
  FDRE \middle_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(mult_out3_reg__0__0[12]),
        .Q(middle_reg1[10]),
        .R(ARESET));
  FDRE \middle_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(mult_out3_reg__0__0[13]),
        .Q(middle_reg1[11]),
        .R(ARESET));
  FDRE \middle_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(mult_out3_reg__0__0[14]),
        .Q(middle_reg1[12]),
        .R(ARESET));
  FDRE \middle_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(mult_out3_reg__0__0[15]),
        .Q(middle_reg1[13]),
        .R(ARESET));
  FDRE \middle_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(mult_out3_reg__0__0[16]),
        .Q(middle_reg1[14]),
        .R(ARESET));
  FDRE \middle_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(mult_out3_reg__0__0[17]),
        .Q(middle_reg1[15]),
        .R(ARESET));
  FDRE \middle_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(mult_out3_reg__0__0[3]),
        .Q(middle_reg1[1]),
        .R(ARESET));
  FDRE \middle_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(mult_out3_reg__0__0[4]),
        .Q(middle_reg1[2]),
        .R(ARESET));
  FDRE \middle_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(mult_out3_reg__0__0[5]),
        .Q(middle_reg1[3]),
        .R(ARESET));
  FDRE \middle_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(mult_out3_reg__0__0[6]),
        .Q(middle_reg1[4]),
        .R(ARESET));
  FDRE \middle_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(mult_out3_reg__0__0[7]),
        .Q(middle_reg1[5]),
        .R(ARESET));
  FDRE \middle_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(mult_out3_reg__0__0[8]),
        .Q(middle_reg1[6]),
        .R(ARESET));
  FDRE \middle_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(mult_out3_reg__0__0[9]),
        .Q(middle_reg1[7]),
        .R(ARESET));
  FDRE \middle_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(mult_out3_reg__0__0[10]),
        .Q(middle_reg1[8]),
        .R(ARESET));
  FDRE \middle_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(mult_out3_reg__0__0[11]),
        .Q(middle_reg1[9]),
        .R(ARESET));
  FDRE \middle_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg1[0]),
        .Q(middle_reg2[0]),
        .R(ARESET));
  FDRE \middle_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg1[10]),
        .Q(middle_reg2[10]),
        .R(ARESET));
  FDRE \middle_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg1[11]),
        .Q(middle_reg2[11]),
        .R(ARESET));
  FDRE \middle_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg1[12]),
        .Q(middle_reg2[12]),
        .R(ARESET));
  FDRE \middle_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg1[13]),
        .Q(middle_reg2[13]),
        .R(ARESET));
  FDRE \middle_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg1[14]),
        .Q(middle_reg2[14]),
        .R(ARESET));
  FDRE \middle_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg1[15]),
        .Q(middle_reg2[15]),
        .R(ARESET));
  FDRE \middle_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg1[1]),
        .Q(middle_reg2[1]),
        .R(ARESET));
  FDRE \middle_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg1[2]),
        .Q(middle_reg2[2]),
        .R(ARESET));
  FDRE \middle_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg1[3]),
        .Q(middle_reg2[3]),
        .R(ARESET));
  FDRE \middle_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg1[4]),
        .Q(middle_reg2[4]),
        .R(ARESET));
  FDRE \middle_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg1[5]),
        .Q(middle_reg2[5]),
        .R(ARESET));
  FDRE \middle_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg1[6]),
        .Q(middle_reg2[6]),
        .R(ARESET));
  FDRE \middle_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg1[7]),
        .Q(middle_reg2[7]),
        .R(ARESET));
  FDRE \middle_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg1[8]),
        .Q(middle_reg2[8]),
        .R(ARESET));
  FDRE \middle_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg1[9]),
        .Q(middle_reg2[9]),
        .R(ARESET));
  FDRE \middle_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg2[0]),
        .Q(middle_reg3[0]),
        .R(ARESET));
  FDRE \middle_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg2[10]),
        .Q(middle_reg3[10]),
        .R(ARESET));
  FDRE \middle_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg2[11]),
        .Q(middle_reg3[11]),
        .R(ARESET));
  FDRE \middle_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg2[12]),
        .Q(middle_reg3[12]),
        .R(ARESET));
  FDRE \middle_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg2[13]),
        .Q(middle_reg3[13]),
        .R(ARESET));
  FDRE \middle_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg2[14]),
        .Q(middle_reg3[14]),
        .R(ARESET));
  FDRE \middle_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg2[15]),
        .Q(middle_reg3[15]),
        .R(ARESET));
  FDRE \middle_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg2[1]),
        .Q(middle_reg3[1]),
        .R(ARESET));
  FDRE \middle_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg2[2]),
        .Q(middle_reg3[2]),
        .R(ARESET));
  FDRE \middle_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg2[3]),
        .Q(middle_reg3[3]),
        .R(ARESET));
  FDRE \middle_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg2[4]),
        .Q(middle_reg3[4]),
        .R(ARESET));
  FDRE \middle_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg2[5]),
        .Q(middle_reg3[5]),
        .R(ARESET));
  FDRE \middle_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg2[6]),
        .Q(middle_reg3[6]),
        .R(ARESET));
  FDRE \middle_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg2[7]),
        .Q(middle_reg3[7]),
        .R(ARESET));
  FDRE \middle_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg2[8]),
        .Q(middle_reg3[8]),
        .R(ARESET));
  FDRE \middle_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(middle_reg2[9]),
        .Q(middle_reg3[9]),
        .R(ARESET));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult_out2_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data_out2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({mult_out2_reg_n_24,mult_out2_reg_n_25,mult_out2_reg_n_26,mult_out2_reg_n_27,mult_out2_reg_n_28,mult_out2_reg_n_29,mult_out2_reg_n_30,mult_out2_reg_n_31,mult_out2_reg_n_32,mult_out2_reg_n_33,mult_out2_reg_n_34,mult_out2_reg_n_35,mult_out2_reg_n_36,mult_out2_reg_n_37,mult_out2_reg_n_38,mult_out2_reg_n_39,mult_out2_reg_n_40,mult_out2_reg_n_41,mult_out2_reg_n_42,mult_out2_reg_n_43,mult_out2_reg_n_44,mult_out2_reg_n_45,mult_out2_reg_n_46,mult_out2_reg_n_47,mult_out2_reg_n_48,mult_out2_reg_n_49,mult_out2_reg_n_50,mult_out2_reg_n_51,mult_out2_reg_n_52,mult_out2_reg_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,mult_out2_reg_i_1_n_0,mult_out2_reg_i_2_n_0,mult_out2_reg_i_3_n_0,mult_out2_reg_i_4_n_0,mult_out2_reg_i_5_n_0,mult_out2_reg_i_6_n_0,mult_out2_reg_i_7_n_0,mult_out2_reg_i_8_n_0,mult_out2_reg_i_9_n_0,mult_out2_reg_i_10_n_0,mult_out2_reg_i_11_n_0,mult_out2_reg_i_12_n_0,mult_out2_reg_i_13_n_0,mult_out2_reg_i_14_n_0,mult_out2_reg_i_15_n_0,mult_out2_reg_i_16_n_0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult_out2_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult_out2_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult_out2_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(Q[0]),
        .CEP(Q[0]),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult_out2_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult_out2_reg_OVERFLOW_UNCONNECTED),
        .P({mult_out2_reg_n_58,mult_out2_reg_n_59,mult_out2_reg_n_60,mult_out2_reg_n_61,mult_out2_reg_n_62,mult_out2_reg_n_63,mult_out2_reg_n_64,mult_out2_reg_n_65,mult_out2_reg_n_66,mult_out2_reg_n_67,mult_out2_reg_n_68,mult_out2_reg_n_69,mult_out2_reg_n_70,mult_out2_reg_n_71,mult_out2_reg_n_72,mult_out2_reg_n_73,mult_out2_reg_n_74,mult_out2_reg_n_75,mult_out2_reg_n_76,mult_out2_reg_n_77,mult_out2_reg_n_78,mult_out2_reg_n_79,mult_out2_reg_n_80,mult_out2_reg_n_81,mult_out2_reg_n_82,mult_out2_reg_n_83,mult_out2_reg_n_84,mult_out2_reg_n_85,mult_out2_reg_n_86,mult_out2_reg_n_87,mult_out2_reg_n_88,mult_out2_reg_n_89,mult_out2_reg_n_90,mult_out2_reg_n_91,mult_out2_reg_n_92,mult_out2_reg_n_93,mult_out2_reg_n_94,mult_out2_reg_n_95,mult_out2_reg_n_96,mult_out2_reg_n_97,mult_out2_reg_n_98,mult_out2_reg_n_99,mult_out2_reg_n_100,mult_out2_reg_n_101,mult_out2_reg_n_102,mult_out2_reg_n_103,mult_out2_reg_n_104,mult_out2_reg_n_105}),
        .PATTERNBDETECT(NLW_mult_out2_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult_out2_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({mult_out2_reg_n_106,mult_out2_reg_n_107,mult_out2_reg_n_108,mult_out2_reg_n_109,mult_out2_reg_n_110,mult_out2_reg_n_111,mult_out2_reg_n_112,mult_out2_reg_n_113,mult_out2_reg_n_114,mult_out2_reg_n_115,mult_out2_reg_n_116,mult_out2_reg_n_117,mult_out2_reg_n_118,mult_out2_reg_n_119,mult_out2_reg_n_120,mult_out2_reg_n_121,mult_out2_reg_n_122,mult_out2_reg_n_123,mult_out2_reg_n_124,mult_out2_reg_n_125,mult_out2_reg_n_126,mult_out2_reg_n_127,mult_out2_reg_n_128,mult_out2_reg_n_129,mult_out2_reg_n_130,mult_out2_reg_n_131,mult_out2_reg_n_132,mult_out2_reg_n_133,mult_out2_reg_n_134,mult_out2_reg_n_135,mult_out2_reg_n_136,mult_out2_reg_n_137,mult_out2_reg_n_138,mult_out2_reg_n_139,mult_out2_reg_n_140,mult_out2_reg_n_141,mult_out2_reg_n_142,mult_out2_reg_n_143,mult_out2_reg_n_144,mult_out2_reg_n_145,mult_out2_reg_n_146,mult_out2_reg_n_147,mult_out2_reg_n_148,mult_out2_reg_n_149,mult_out2_reg_n_150,mult_out2_reg_n_151,mult_out2_reg_n_152,mult_out2_reg_n_153}),
        .RSTA(ARESET),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(ARESET),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(ARESET),
        .RSTP(ARESET),
        .UNDERFLOW(NLW_mult_out2_reg_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    mult_out2_reg_i_1
       (.I0(cl_sum[2]),
        .I1(cl_sum[1]),
        .I2(cl_sum[0]),
        .I3(cl_sum[3]),
        .I4(cl_sum[4]),
        .I5(cl_sum[5]),
        .O(mult_out2_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    mult_out2_reg_i_10
       (.I0(cl_sum[4]),
        .I1(cl_sum[1]),
        .I2(cl_sum[0]),
        .I3(cl_sum[2]),
        .I4(cl_sum[3]),
        .I5(cl_sum[5]),
        .O(mult_out2_reg_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    mult_out2_reg_i_11
       (.I0(cl_sum[4]),
        .I1(cl_sum[1]),
        .I2(cl_sum[0]),
        .I3(cl_sum[2]),
        .I4(cl_sum[3]),
        .I5(cl_sum[5]),
        .O(mult_out2_reg_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    mult_out2_reg_i_12
       (.I0(cl_sum[4]),
        .I1(cl_sum[0]),
        .I2(cl_sum[1]),
        .I3(cl_sum[2]),
        .I4(cl_sum[3]),
        .I5(cl_sum[5]),
        .O(mult_out2_reg_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    mult_out2_reg_i_13
       (.I0(cl_sum[4]),
        .I1(cl_sum[1]),
        .I2(cl_sum[0]),
        .I3(cl_sum[2]),
        .I4(cl_sum[3]),
        .I5(cl_sum[5]),
        .O(mult_out2_reg_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    mult_out2_reg_i_14
       (.I0(cl_sum[4]),
        .I1(cl_sum[2]),
        .I2(cl_sum[1]),
        .I3(cl_sum[0]),
        .I4(cl_sum[3]),
        .I5(cl_sum[5]),
        .O(mult_out2_reg_i_14_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    mult_out2_reg_i_15
       (.I0(cl_sum[4]),
        .I1(cl_sum[2]),
        .I2(cl_sum[1]),
        .I3(cl_sum[0]),
        .I4(cl_sum[3]),
        .I5(cl_sum[5]),
        .O(mult_out2_reg_i_15_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    mult_out2_reg_i_16
       (.I0(cl_sum[4]),
        .I1(cl_sum[2]),
        .I2(cl_sum[0]),
        .I3(cl_sum[1]),
        .I4(cl_sum[3]),
        .I5(cl_sum[5]),
        .O(mult_out2_reg_i_16_n_0));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    mult_out2_reg_i_2
       (.I0(cl_sum[4]),
        .I1(cl_sum[3]),
        .I2(cl_sum[1]),
        .I3(cl_sum[0]),
        .I4(cl_sum[2]),
        .I5(cl_sum[5]),
        .O(mult_out2_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    mult_out2_reg_i_3
       (.I0(cl_sum[4]),
        .I1(cl_sum[3]),
        .I2(cl_sum[1]),
        .I3(cl_sum[0]),
        .I4(cl_sum[2]),
        .I5(cl_sum[5]),
        .O(mult_out2_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    mult_out2_reg_i_4
       (.I0(cl_sum[4]),
        .I1(cl_sum[3]),
        .I2(cl_sum[0]),
        .I3(cl_sum[1]),
        .I4(cl_sum[2]),
        .I5(cl_sum[5]),
        .O(mult_out2_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    mult_out2_reg_i_5
       (.I0(cl_sum[4]),
        .I1(cl_sum[3]),
        .I2(cl_sum[1]),
        .I3(cl_sum[0]),
        .I4(cl_sum[2]),
        .I5(cl_sum[5]),
        .O(mult_out2_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    mult_out2_reg_i_6
       (.I0(cl_sum[4]),
        .I1(cl_sum[3]),
        .I2(cl_sum[2]),
        .I3(cl_sum[1]),
        .I4(cl_sum[0]),
        .I5(cl_sum[5]),
        .O(mult_out2_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    mult_out2_reg_i_7
       (.I0(cl_sum[4]),
        .I1(cl_sum[3]),
        .I2(cl_sum[2]),
        .I3(cl_sum[1]),
        .I4(cl_sum[0]),
        .I5(cl_sum[5]),
        .O(mult_out2_reg_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    mult_out2_reg_i_8
       (.I0(cl_sum[4]),
        .I1(cl_sum[3]),
        .I2(cl_sum[2]),
        .I3(cl_sum[0]),
        .I4(cl_sum[1]),
        .I5(cl_sum[5]),
        .O(mult_out2_reg_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    mult_out2_reg_i_9
       (.I0(cl_sum[4]),
        .I1(cl_sum[3]),
        .I2(cl_sum[2]),
        .I3(cl_sum[1]),
        .I4(cl_sum[0]),
        .I5(cl_sum[5]),
        .O(mult_out2_reg_i_9_n_0));
  FDRE \mult_out3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(mult_out2_reg_n_105),
        .Q(mult_out3_reg__0__0[0]),
        .R(ARESET));
  FDRE \mult_out3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(mult_out2_reg_n_95),
        .Q(mult_out3_reg__0__0[10]),
        .R(ARESET));
  FDRE \mult_out3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(mult_out2_reg_n_94),
        .Q(mult_out3_reg__0__0[11]),
        .R(ARESET));
  FDRE \mult_out3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(mult_out2_reg_n_93),
        .Q(mult_out3_reg__0__0[12]),
        .R(ARESET));
  FDRE \mult_out3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(mult_out2_reg_n_92),
        .Q(mult_out3_reg__0__0[13]),
        .R(ARESET));
  FDRE \mult_out3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(mult_out2_reg_n_91),
        .Q(mult_out3_reg__0__0[14]),
        .R(ARESET));
  FDRE \mult_out3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(mult_out2_reg_n_90),
        .Q(mult_out3_reg__0__0[15]),
        .R(ARESET));
  FDRE \mult_out3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(mult_out2_reg_n_89),
        .Q(mult_out3_reg__0__0[16]),
        .R(ARESET));
  FDRE \mult_out3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(mult_out2_reg_n_104),
        .Q(mult_out3_reg__0__0[1]),
        .R(ARESET));
  FDRE \mult_out3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(mult_out2_reg_n_103),
        .Q(mult_out3_reg__0__0[2]),
        .R(ARESET));
  FDRE \mult_out3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(mult_out2_reg_n_102),
        .Q(mult_out3_reg__0__0[3]),
        .R(ARESET));
  FDRE \mult_out3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(mult_out2_reg_n_101),
        .Q(mult_out3_reg__0__0[4]),
        .R(ARESET));
  FDRE \mult_out3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(mult_out2_reg_n_100),
        .Q(mult_out3_reg__0__0[5]),
        .R(ARESET));
  FDRE \mult_out3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(mult_out2_reg_n_99),
        .Q(mult_out3_reg__0__0[6]),
        .R(ARESET));
  FDRE \mult_out3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(mult_out2_reg_n_98),
        .Q(mult_out3_reg__0__0[7]),
        .R(ARESET));
  FDRE \mult_out3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(mult_out2_reg_n_97),
        .Q(mult_out3_reg__0__0[8]),
        .R(ARESET));
  FDRE \mult_out3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(mult_out2_reg_n_96),
        .Q(mult_out3_reg__0__0[9]),
        .R(ARESET));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult_out3_reg__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({mult_out2_reg_n_24,mult_out2_reg_n_25,mult_out2_reg_n_26,mult_out2_reg_n_27,mult_out2_reg_n_28,mult_out2_reg_n_29,mult_out2_reg_n_30,mult_out2_reg_n_31,mult_out2_reg_n_32,mult_out2_reg_n_33,mult_out2_reg_n_34,mult_out2_reg_n_35,mult_out2_reg_n_36,mult_out2_reg_n_37,mult_out2_reg_n_38,mult_out2_reg_n_39,mult_out2_reg_n_40,mult_out2_reg_n_41,mult_out2_reg_n_42,mult_out2_reg_n_43,mult_out2_reg_n_44,mult_out2_reg_n_45,mult_out2_reg_n_46,mult_out2_reg_n_47,mult_out2_reg_n_48,mult_out2_reg_n_49,mult_out2_reg_n_50,mult_out2_reg_n_51,mult_out2_reg_n_52,mult_out2_reg_n_53}),
        .ACOUT(NLW_mult_out3_reg__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,cl_sum_shift,mult_out3_reg__0_i_3_n_0,mult_out3_reg__0_i_4_n_0,mult_out3_reg__0_i_5_n_0,mult_out3_reg__0_i_6_n_0,mult_out3_reg__0_i_7_n_0,mult_out3_reg__0_i_8_n_0,mult_out3_reg__0_i_9_n_0,mult_out3_reg__0_i_10_n_0,mult_out3_reg__0_i_11_n_0,mult_out3_reg__0_i_12_n_0,mult_out3_reg__0_i_13_n_0,mult_out3_reg__0_i_14_n_0,mult_out3_reg__0_i_15_n_0,mult_out3_reg__0_i_16_n_0,mult_out3_reg__0_i_17_n_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult_out3_reg__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult_out3_reg__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult_out3_reg__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(Q[0]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(Q[0]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(Q[0]),
        .CEP(Q[0]),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult_out3_reg__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult_out3_reg__0_OVERFLOW_UNCONNECTED),
        .P({mult_out3_reg__0_n_58,mult_out3_reg__0_n_59,mult_out3_reg__0_n_60,mult_out3_reg__0_n_61,mult_out3_reg__0_n_62,mult_out3_reg__0_n_63,mult_out3_reg__0_n_64,mult_out3_reg__0_n_65,mult_out3_reg__0_n_66,mult_out3_reg__0_n_67,mult_out3_reg__0_n_68,mult_out3_reg__0_n_69,mult_out3_reg__0_n_70,mult_out3_reg__0_n_71,mult_out3_reg__0_n_72,mult_out3_reg__0_n_73,mult_out3_reg__0_n_74,mult_out3_reg__0_n_75,mult_out3_reg__0_n_76,mult_out3_reg__0_n_77,mult_out3_reg__0_n_78,mult_out3_reg__0_n_79,mult_out3_reg__0_n_80,mult_out3_reg__0_n_81,mult_out3_reg__0_n_82,mult_out3_reg__0_n_83,mult_out3_reg__0_n_84,mult_out3_reg__0_n_85,mult_out3_reg__0_n_86,mult_out3_reg__0_n_87,mult_out3_reg__0_n_88,mult_out3_reg__0_n_89,mult_out3_reg__0_n_90,mult_out3_reg__0_n_91,mult_out3_reg__0_n_92,mult_out3_reg__0_n_93,mult_out3_reg__0_n_94,mult_out3_reg__0_n_95,mult_out3_reg__0_n_96,mult_out3_reg__0_n_97,mult_out3_reg__0_n_98,mult_out3_reg__0_n_99,mult_out3_reg__0_n_100,mult_out3_reg__0_n_101,mult_out3_reg__0_n_102,mult_out3_reg__0_n_103,mult_out3_reg__0_n_104,mult_out3_reg__0__0[17]}),
        .PATTERNBDETECT(NLW_mult_out3_reg__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult_out3_reg__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({mult_out2_reg_n_106,mult_out2_reg_n_107,mult_out2_reg_n_108,mult_out2_reg_n_109,mult_out2_reg_n_110,mult_out2_reg_n_111,mult_out2_reg_n_112,mult_out2_reg_n_113,mult_out2_reg_n_114,mult_out2_reg_n_115,mult_out2_reg_n_116,mult_out2_reg_n_117,mult_out2_reg_n_118,mult_out2_reg_n_119,mult_out2_reg_n_120,mult_out2_reg_n_121,mult_out2_reg_n_122,mult_out2_reg_n_123,mult_out2_reg_n_124,mult_out2_reg_n_125,mult_out2_reg_n_126,mult_out2_reg_n_127,mult_out2_reg_n_128,mult_out2_reg_n_129,mult_out2_reg_n_130,mult_out2_reg_n_131,mult_out2_reg_n_132,mult_out2_reg_n_133,mult_out2_reg_n_134,mult_out2_reg_n_135,mult_out2_reg_n_136,mult_out2_reg_n_137,mult_out2_reg_n_138,mult_out2_reg_n_139,mult_out2_reg_n_140,mult_out2_reg_n_141,mult_out2_reg_n_142,mult_out2_reg_n_143,mult_out2_reg_n_144,mult_out2_reg_n_145,mult_out2_reg_n_146,mult_out2_reg_n_147,mult_out2_reg_n_148,mult_out2_reg_n_149,mult_out2_reg_n_150,mult_out2_reg_n_151,mult_out2_reg_n_152,mult_out2_reg_n_153}),
        .PCOUT(NLW_mult_out3_reg__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(ARESET),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(ARESET),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(ARESET),
        .RSTP(ARESET),
        .UNDERFLOW(NLW_mult_out3_reg__0_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    mult_out3_reg__0_i_1
       (.I0(cl_sum[5]),
        .I1(cl_sum[4]),
        .I2(cl_sum[1]),
        .I3(cl_sum[2]),
        .I4(cl_sum[0]),
        .I5(cl_sum[3]),
        .O(cl_sum_shift[33]));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    mult_out3_reg__0_i_10
       (.I0(cl_sum[3]),
        .I1(cl_sum[2]),
        .I2(cl_sum[1]),
        .I3(cl_sum[0]),
        .I4(cl_sum[4]),
        .I5(cl_sum[5]),
        .O(mult_out3_reg__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    mult_out3_reg__0_i_11
       (.I0(cl_sum[1]),
        .I1(cl_sum[0]),
        .I2(cl_sum[2]),
        .I3(cl_sum[3]),
        .I4(cl_sum[4]),
        .I5(cl_sum[5]),
        .O(mult_out3_reg__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    mult_out3_reg__0_i_12
       (.I0(cl_sum[1]),
        .I1(cl_sum[0]),
        .I2(cl_sum[2]),
        .I3(cl_sum[3]),
        .I4(cl_sum[4]),
        .I5(cl_sum[5]),
        .O(mult_out3_reg__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    mult_out3_reg__0_i_13
       (.I0(cl_sum[0]),
        .I1(cl_sum[1]),
        .I2(cl_sum[2]),
        .I3(cl_sum[3]),
        .I4(cl_sum[4]),
        .I5(cl_sum[5]),
        .O(mult_out3_reg__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    mult_out3_reg__0_i_14
       (.I0(cl_sum[1]),
        .I1(cl_sum[0]),
        .I2(cl_sum[2]),
        .I3(cl_sum[3]),
        .I4(cl_sum[4]),
        .I5(cl_sum[5]),
        .O(mult_out3_reg__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    mult_out3_reg__0_i_15
       (.I0(cl_sum[2]),
        .I1(cl_sum[1]),
        .I2(cl_sum[0]),
        .I3(cl_sum[3]),
        .I4(cl_sum[4]),
        .I5(cl_sum[5]),
        .O(mult_out3_reg__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    mult_out3_reg__0_i_16
       (.I0(cl_sum[2]),
        .I1(cl_sum[1]),
        .I2(cl_sum[0]),
        .I3(cl_sum[3]),
        .I4(cl_sum[4]),
        .I5(cl_sum[5]),
        .O(mult_out3_reg__0_i_16_n_0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    mult_out3_reg__0_i_17
       (.I0(cl_sum[2]),
        .I1(cl_sum[0]),
        .I2(cl_sum[1]),
        .I3(cl_sum[3]),
        .I4(cl_sum[4]),
        .I5(cl_sum[5]),
        .O(mult_out3_reg__0_i_17_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    mult_out3_reg__0_i_2
       (.I0(cl_sum[5]),
        .I1(cl_sum[4]),
        .I2(cl_sum[2]),
        .I3(cl_sum[1]),
        .I4(cl_sum[0]),
        .I5(cl_sum[3]),
        .O(cl_sum_shift[32]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    mult_out3_reg__0_i_3
       (.I0(cl_sum[3]),
        .I1(cl_sum[1]),
        .I2(cl_sum[0]),
        .I3(cl_sum[2]),
        .I4(cl_sum[4]),
        .I5(cl_sum[5]),
        .O(mult_out3_reg__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    mult_out3_reg__0_i_4
       (.I0(cl_sum[3]),
        .I1(cl_sum[1]),
        .I2(cl_sum[0]),
        .I3(cl_sum[2]),
        .I4(cl_sum[4]),
        .I5(cl_sum[5]),
        .O(mult_out3_reg__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    mult_out3_reg__0_i_5
       (.I0(cl_sum[3]),
        .I1(cl_sum[0]),
        .I2(cl_sum[1]),
        .I3(cl_sum[2]),
        .I4(cl_sum[4]),
        .I5(cl_sum[5]),
        .O(mult_out3_reg__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    mult_out3_reg__0_i_6
       (.I0(cl_sum[3]),
        .I1(cl_sum[1]),
        .I2(cl_sum[0]),
        .I3(cl_sum[2]),
        .I4(cl_sum[4]),
        .I5(cl_sum[5]),
        .O(mult_out3_reg__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    mult_out3_reg__0_i_7
       (.I0(cl_sum[3]),
        .I1(cl_sum[2]),
        .I2(cl_sum[1]),
        .I3(cl_sum[0]),
        .I4(cl_sum[4]),
        .I5(cl_sum[5]),
        .O(mult_out3_reg__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    mult_out3_reg__0_i_8
       (.I0(cl_sum[3]),
        .I1(cl_sum[2]),
        .I2(cl_sum[1]),
        .I3(cl_sum[0]),
        .I4(cl_sum[4]),
        .I5(cl_sum[5]),
        .O(mult_out3_reg__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    mult_out3_reg__0_i_9
       (.I0(cl_sum[3]),
        .I1(cl_sum[2]),
        .I2(cl_sum[0]),
        .I3(cl_sum[1]),
        .I4(cl_sum[4]),
        .I5(cl_sum[5]),
        .O(mult_out3_reg__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    out_valid_i_1
       (.I0(counter32[5]),
        .I1(counter32[4]),
        .I2(out_valid_i_2_n_0),
        .I3(out_valid_i_3_n_0),
        .I4(out_valid_i_4_n_0),
        .I5(D[1]),
        .O(out_valid_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    out_valid_i_2
       (.I0(counter32[3]),
        .I1(counter32[2]),
        .O(out_valid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    out_valid_i_3
       (.I0(counter32[1]),
        .I1(counter32[0]),
        .O(out_valid_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000042)) 
    out_valid_i_4
       (.I0(counter32[0]),
        .I1(counter32[2]),
        .I2(counter32[3]),
        .I3(counter32[1]),
        .I4(counter32[4]),
        .I5(counter32[5]),
        .O(out_valid_i_4_n_0));
  FDRE out_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_valid_i_1_n_0),
        .Q(D[1]),
        .R(ARESET));
  LUT5 #(
    .INIT(32'hF0F0FBF8)) 
    \upper_reg1[0]_i_1 
       (.I0(middle_reg1[0]),
        .I1(p_0_in_0[0]),
        .I2(mult_out3_reg__0_n_104),
        .I3(\upper_reg1_reg_n_0_[0] ),
        .I4(p_0_in_0[1]),
        .O(\upper_reg1[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0FBF8)) 
    \upper_reg1[10]_i_1 
       (.I0(middle_reg1[10]),
        .I1(p_0_in_0[0]),
        .I2(mult_out3_reg__0_n_94),
        .I3(\upper_reg1_reg_n_0_[10] ),
        .I4(p_0_in_0[1]),
        .O(\upper_reg1[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0FBF8)) 
    \upper_reg1[11]_i_1 
       (.I0(middle_reg1[11]),
        .I1(p_0_in_0[0]),
        .I2(mult_out3_reg__0_n_93),
        .I3(\upper_reg1_reg_n_0_[11] ),
        .I4(p_0_in_0[1]),
        .O(\upper_reg1[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0FBF8)) 
    \upper_reg1[12]_i_1 
       (.I0(middle_reg1[12]),
        .I1(p_0_in_0[0]),
        .I2(mult_out3_reg__0_n_92),
        .I3(\upper_reg1_reg_n_0_[12] ),
        .I4(p_0_in_0[1]),
        .O(\upper_reg1[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0FBF8)) 
    \upper_reg1[13]_i_1 
       (.I0(middle_reg1[13]),
        .I1(p_0_in_0[0]),
        .I2(mult_out3_reg__0_n_91),
        .I3(\upper_reg1_reg_n_0_[13] ),
        .I4(p_0_in_0[1]),
        .O(\upper_reg1[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFAAFFCFFFC0)) 
    \upper_reg1[14]_i_1 
       (.I0(\lower_reg1_reg_n_0_[14] ),
        .I1(middle_reg1[14]),
        .I2(p_0_in_0[0]),
        .I3(mult_out3_reg__0_n_90),
        .I4(\upper_reg1_reg_n_0_[14] ),
        .I5(p_0_in_0[1]),
        .O(\upper_reg1[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFAAFFCFFFC0)) 
    \upper_reg1[15]_i_1 
       (.I0(\lower_reg1_reg_n_0_[15] ),
        .I1(middle_reg1[15]),
        .I2(p_0_in_0[0]),
        .I3(mult_out3_reg__0_n_89),
        .I4(\upper_reg1_reg_n_0_[15] ),
        .I5(p_0_in_0[1]),
        .O(\upper_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0FBF8)) 
    \upper_reg1[1]_i_1 
       (.I0(middle_reg1[1]),
        .I1(p_0_in_0[0]),
        .I2(mult_out3_reg__0_n_103),
        .I3(\upper_reg1_reg_n_0_[1] ),
        .I4(p_0_in_0[1]),
        .O(\upper_reg1[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0FBF8)) 
    \upper_reg1[2]_i_1 
       (.I0(middle_reg1[2]),
        .I1(p_0_in_0[0]),
        .I2(mult_out3_reg__0_n_102),
        .I3(\upper_reg1_reg_n_0_[2] ),
        .I4(p_0_in_0[1]),
        .O(\upper_reg1[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0FBF8)) 
    \upper_reg1[3]_i_1 
       (.I0(middle_reg1[3]),
        .I1(p_0_in_0[0]),
        .I2(mult_out3_reg__0_n_101),
        .I3(\upper_reg1_reg_n_0_[3] ),
        .I4(p_0_in_0[1]),
        .O(\upper_reg1[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0FBF8)) 
    \upper_reg1[4]_i_1 
       (.I0(middle_reg1[4]),
        .I1(p_0_in_0[0]),
        .I2(mult_out3_reg__0_n_100),
        .I3(\upper_reg1_reg_n_0_[4] ),
        .I4(p_0_in_0[1]),
        .O(\upper_reg1[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0FBF8)) 
    \upper_reg1[5]_i_1 
       (.I0(middle_reg1[5]),
        .I1(p_0_in_0[0]),
        .I2(mult_out3_reg__0_n_99),
        .I3(\upper_reg1_reg_n_0_[5] ),
        .I4(p_0_in_0[1]),
        .O(\upper_reg1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0FBF8)) 
    \upper_reg1[6]_i_1 
       (.I0(middle_reg1[6]),
        .I1(p_0_in_0[0]),
        .I2(mult_out3_reg__0_n_98),
        .I3(\upper_reg1_reg_n_0_[6] ),
        .I4(p_0_in_0[1]),
        .O(\upper_reg1[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0FBF8)) 
    \upper_reg1[7]_i_1 
       (.I0(middle_reg1[7]),
        .I1(p_0_in_0[0]),
        .I2(mult_out3_reg__0_n_97),
        .I3(\upper_reg1_reg_n_0_[7] ),
        .I4(p_0_in_0[1]),
        .O(\upper_reg1[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0FBF8)) 
    \upper_reg1[8]_i_1 
       (.I0(middle_reg1[8]),
        .I1(p_0_in_0[0]),
        .I2(mult_out3_reg__0_n_96),
        .I3(\upper_reg1_reg_n_0_[8] ),
        .I4(p_0_in_0[1]),
        .O(\upper_reg1[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0FBF8)) 
    \upper_reg1[9]_i_1 
       (.I0(middle_reg1[9]),
        .I1(p_0_in_0[0]),
        .I2(mult_out3_reg__0_n_95),
        .I3(\upper_reg1_reg_n_0_[9] ),
        .I4(p_0_in_0[1]),
        .O(\upper_reg1[9]_i_1_n_0 ));
  FDRE \upper_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\upper_reg1[0]_i_1_n_0 ),
        .Q(\upper_reg1_reg_n_0_[0] ),
        .R(ARESET));
  FDRE \upper_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\upper_reg1[10]_i_1_n_0 ),
        .Q(\upper_reg1_reg_n_0_[10] ),
        .R(ARESET));
  FDRE \upper_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\upper_reg1[11]_i_1_n_0 ),
        .Q(\upper_reg1_reg_n_0_[11] ),
        .R(ARESET));
  FDRE \upper_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\upper_reg1[12]_i_1_n_0 ),
        .Q(\upper_reg1_reg_n_0_[12] ),
        .R(ARESET));
  FDRE \upper_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\upper_reg1[13]_i_1_n_0 ),
        .Q(\upper_reg1_reg_n_0_[13] ),
        .R(ARESET));
  FDRE \upper_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\upper_reg1[14]_i_1_n_0 ),
        .Q(\upper_reg1_reg_n_0_[14] ),
        .R(ARESET));
  FDRE \upper_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\upper_reg1[15]_i_1_n_0 ),
        .Q(\upper_reg1_reg_n_0_[15] ),
        .R(ARESET));
  FDRE \upper_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\upper_reg1[1]_i_1_n_0 ),
        .Q(\upper_reg1_reg_n_0_[1] ),
        .R(ARESET));
  FDRE \upper_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\upper_reg1[2]_i_1_n_0 ),
        .Q(\upper_reg1_reg_n_0_[2] ),
        .R(ARESET));
  FDRE \upper_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\upper_reg1[3]_i_1_n_0 ),
        .Q(\upper_reg1_reg_n_0_[3] ),
        .R(ARESET));
  FDRE \upper_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\upper_reg1[4]_i_1_n_0 ),
        .Q(\upper_reg1_reg_n_0_[4] ),
        .R(ARESET));
  FDRE \upper_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\upper_reg1[5]_i_1_n_0 ),
        .Q(\upper_reg1_reg_n_0_[5] ),
        .R(ARESET));
  FDRE \upper_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\upper_reg1[6]_i_1_n_0 ),
        .Q(\upper_reg1_reg_n_0_[6] ),
        .R(ARESET));
  FDRE \upper_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\upper_reg1[7]_i_1_n_0 ),
        .Q(\upper_reg1_reg_n_0_[7] ),
        .R(ARESET));
  FDRE \upper_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\upper_reg1[8]_i_1_n_0 ),
        .Q(\upper_reg1_reg_n_0_[8] ),
        .R(ARESET));
  FDRE \upper_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(upper_reg1),
        .D(\upper_reg1[9]_i_1_n_0 ),
        .Q(\upper_reg1_reg_n_0_[9] ),
        .R(ARESET));
  FDRE \upper_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\upper_reg1_reg_n_0_[0] ),
        .Q(upper_reg2[0]),
        .R(ARESET));
  FDRE \upper_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\upper_reg1_reg_n_0_[10] ),
        .Q(upper_reg2[10]),
        .R(ARESET));
  FDRE \upper_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\upper_reg1_reg_n_0_[11] ),
        .Q(upper_reg2[11]),
        .R(ARESET));
  FDRE \upper_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\upper_reg1_reg_n_0_[12] ),
        .Q(upper_reg2[12]),
        .R(ARESET));
  FDRE \upper_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\upper_reg1_reg_n_0_[13] ),
        .Q(upper_reg2[13]),
        .R(ARESET));
  FDRE \upper_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\upper_reg1_reg_n_0_[14] ),
        .Q(upper_reg2[14]),
        .R(ARESET));
  FDRE \upper_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\upper_reg1_reg_n_0_[15] ),
        .Q(upper_reg2[15]),
        .R(ARESET));
  FDRE \upper_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\upper_reg1_reg_n_0_[1] ),
        .Q(upper_reg2[1]),
        .R(ARESET));
  FDRE \upper_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\upper_reg1_reg_n_0_[2] ),
        .Q(upper_reg2[2]),
        .R(ARESET));
  FDRE \upper_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\upper_reg1_reg_n_0_[3] ),
        .Q(upper_reg2[3]),
        .R(ARESET));
  FDRE \upper_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\upper_reg1_reg_n_0_[4] ),
        .Q(upper_reg2[4]),
        .R(ARESET));
  FDRE \upper_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\upper_reg1_reg_n_0_[5] ),
        .Q(upper_reg2[5]),
        .R(ARESET));
  FDRE \upper_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\upper_reg1_reg_n_0_[6] ),
        .Q(upper_reg2[6]),
        .R(ARESET));
  FDRE \upper_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\upper_reg1_reg_n_0_[7] ),
        .Q(upper_reg2[7]),
        .R(ARESET));
  FDRE \upper_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\upper_reg1_reg_n_0_[8] ),
        .Q(upper_reg2[8]),
        .R(ARESET));
  FDRE \upper_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(Q[0]),
        .D(\upper_reg1_reg_n_0_[9] ),
        .Q(upper_reg2[9]),
        .R(ARESET));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
