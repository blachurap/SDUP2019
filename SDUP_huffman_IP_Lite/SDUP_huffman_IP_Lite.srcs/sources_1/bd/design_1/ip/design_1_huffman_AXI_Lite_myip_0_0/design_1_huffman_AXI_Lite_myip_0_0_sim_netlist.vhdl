-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Sep  1 21:12:10 2019
-- Host        : Michael-laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/SDUP_huffman_IP_Lite/SDUP_huffman_IP_Lite.srcs/sources_1/bd/design_1/ip/design_1_huffman_AXI_Lite_myip_0_0/design_1_huffman_AXI_Lite_myip_0_0_sim_netlist.vhdl
-- Design      : design_1_huffman_AXI_Lite_myip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_huffman_AXI_Lite_myip_0_0_huffman_encoder is
  port (
    ARESET : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg3_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    \slv_reg1_reg_rep__0\ : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_huffman_AXI_Lite_myip_0_0_huffman_encoder : entity is "huffman_encoder";
end design_1_huffman_AXI_Lite_myip_0_0_huffman_encoder;

architecture STRUCTURE of design_1_huffman_AXI_Lite_myip_0_0_huffman_encoder is
  signal \^areset\ : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cl_sum : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal cl_sum15_out : STD_LOGIC;
  signal \cl_sum1__0\ : STD_LOGIC;
  signal \cl_sum[1]_i_1_n_0\ : STD_LOGIC;
  signal \cl_sum[2]_i_1_n_0\ : STD_LOGIC;
  signal \cl_sum[3]_i_1_n_0\ : STD_LOGIC;
  signal \cl_sum[4]_i_1_n_0\ : STD_LOGIC;
  signal \cl_sum[5]_i_2_n_0\ : STD_LOGIC;
  signal cl_sum_1 : STD_LOGIC;
  signal \cl_sum_prev0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \cl_sum_prev0_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \cl_sum_prev0_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \cl_sum_prev0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \cl_sum_prev0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \cl_sum_prev0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \cl_sum_prev0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \cl_sum_prev0_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \cl_sum_prev0_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \cl_sum_prev0_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \cl_sum_prev0_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \cl_sum_prev[1]_i_2_n_0\ : STD_LOGIC;
  signal \cl_sum_prev[2]_i_2_n_0\ : STD_LOGIC;
  signal \cl_sum_prev[3]_i_3_n_0\ : STD_LOGIC;
  signal \cl_sum_prev[5]_i_2_n_0\ : STD_LOGIC;
  signal \cl_sum_prev_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \cl_sum_prev_reg__1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cl_sum_rdy_i_1_n_0 : STD_LOGIC;
  signal cl_sum_rdy_i_2_n_0 : STD_LOGIC;
  signal cl_sum_rdy_i_3_n_0 : STD_LOGIC;
  signal cl_sum_rdy_reg_n_0 : STD_LOGIC;
  signal cl_sum_shift : STD_LOGIC_VECTOR ( 33 downto 32 );
  signal counter32 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \counter32[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter32[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter32[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter32[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter32[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter32[2]_i_2_n_0\ : STD_LOGIC;
  signal \counter32[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter32[3]_i_2_n_0\ : STD_LOGIC;
  signal \counter32[3]_i_3_n_0\ : STD_LOGIC;
  signal \counter32[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter32[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter32[5]_i_2_n_0\ : STD_LOGIC;
  signal \counter32[5]_i_3_n_0\ : STD_LOGIC;
  signal \counter64[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter64[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter64[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter64[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter64[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter64[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter64[5]_i_2_n_0\ : STD_LOGIC;
  signal \counter64[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter64[6]_i_2_n_0\ : STD_LOGIC;
  signal \counter64_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter64_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter64_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter64_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter64_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter64_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter64_reg_n_0_[6]\ : STD_LOGIC;
  signal data_out2 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_1_n_0\ : STD_LOGIC;
  signal full_flag1 : STD_LOGIC;
  signal full_flag1_i_1_n_0 : STD_LOGIC;
  signal \full_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r_n_0\ : STD_LOGIC;
  signal full_flag5_reg_gate_n_0 : STD_LOGIC;
  signal full_flag5_reg_inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag5_reg_r_n_0 : STD_LOGIC;
  signal full_flag7 : STD_LOGIC;
  signal full_flag8 : STD_LOGIC;
  signal half_flag1 : STD_LOGIC;
  signal half_flag1_i_1_n_0 : STD_LOGIC;
  signal half_flag2_reg_r_n_0 : STD_LOGIC;
  signal half_flag3_reg_r_n_0 : STD_LOGIC;
  signal half_flag4_reg_r_n_0 : STD_LOGIC;
  signal \half_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r_n_0\ : STD_LOGIC;
  signal half_flag5_reg_gate_n_0 : STD_LOGIC;
  signal half_flag5_reg_inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag5_reg_r_n_0 : STD_LOGIC;
  signal half_flag5_reg_r_n_0 : STD_LOGIC;
  signal half_flag7 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal in_ready_i_1_n_0 : STD_LOGIC;
  signal \lower_reg1[14]_i_1_n_0\ : STD_LOGIC;
  signal \lower_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \lower_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \lower_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal middle_reg1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal middle_reg2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal middle_reg3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mult_out2_reg_i_10_n_0 : STD_LOGIC;
  signal mult_out2_reg_i_11_n_0 : STD_LOGIC;
  signal mult_out2_reg_i_12_n_0 : STD_LOGIC;
  signal mult_out2_reg_i_13_n_0 : STD_LOGIC;
  signal mult_out2_reg_i_14_n_0 : STD_LOGIC;
  signal mult_out2_reg_i_15_n_0 : STD_LOGIC;
  signal mult_out2_reg_i_16_n_0 : STD_LOGIC;
  signal mult_out2_reg_i_1_n_0 : STD_LOGIC;
  signal mult_out2_reg_i_2_n_0 : STD_LOGIC;
  signal mult_out2_reg_i_3_n_0 : STD_LOGIC;
  signal mult_out2_reg_i_4_n_0 : STD_LOGIC;
  signal mult_out2_reg_i_5_n_0 : STD_LOGIC;
  signal mult_out2_reg_i_6_n_0 : STD_LOGIC;
  signal mult_out2_reg_i_7_n_0 : STD_LOGIC;
  signal mult_out2_reg_i_8_n_0 : STD_LOGIC;
  signal mult_out2_reg_i_9_n_0 : STD_LOGIC;
  signal mult_out2_reg_n_100 : STD_LOGIC;
  signal mult_out2_reg_n_101 : STD_LOGIC;
  signal mult_out2_reg_n_102 : STD_LOGIC;
  signal mult_out2_reg_n_103 : STD_LOGIC;
  signal mult_out2_reg_n_104 : STD_LOGIC;
  signal mult_out2_reg_n_105 : STD_LOGIC;
  signal mult_out2_reg_n_106 : STD_LOGIC;
  signal mult_out2_reg_n_107 : STD_LOGIC;
  signal mult_out2_reg_n_108 : STD_LOGIC;
  signal mult_out2_reg_n_109 : STD_LOGIC;
  signal mult_out2_reg_n_110 : STD_LOGIC;
  signal mult_out2_reg_n_111 : STD_LOGIC;
  signal mult_out2_reg_n_112 : STD_LOGIC;
  signal mult_out2_reg_n_113 : STD_LOGIC;
  signal mult_out2_reg_n_114 : STD_LOGIC;
  signal mult_out2_reg_n_115 : STD_LOGIC;
  signal mult_out2_reg_n_116 : STD_LOGIC;
  signal mult_out2_reg_n_117 : STD_LOGIC;
  signal mult_out2_reg_n_118 : STD_LOGIC;
  signal mult_out2_reg_n_119 : STD_LOGIC;
  signal mult_out2_reg_n_120 : STD_LOGIC;
  signal mult_out2_reg_n_121 : STD_LOGIC;
  signal mult_out2_reg_n_122 : STD_LOGIC;
  signal mult_out2_reg_n_123 : STD_LOGIC;
  signal mult_out2_reg_n_124 : STD_LOGIC;
  signal mult_out2_reg_n_125 : STD_LOGIC;
  signal mult_out2_reg_n_126 : STD_LOGIC;
  signal mult_out2_reg_n_127 : STD_LOGIC;
  signal mult_out2_reg_n_128 : STD_LOGIC;
  signal mult_out2_reg_n_129 : STD_LOGIC;
  signal mult_out2_reg_n_130 : STD_LOGIC;
  signal mult_out2_reg_n_131 : STD_LOGIC;
  signal mult_out2_reg_n_132 : STD_LOGIC;
  signal mult_out2_reg_n_133 : STD_LOGIC;
  signal mult_out2_reg_n_134 : STD_LOGIC;
  signal mult_out2_reg_n_135 : STD_LOGIC;
  signal mult_out2_reg_n_136 : STD_LOGIC;
  signal mult_out2_reg_n_137 : STD_LOGIC;
  signal mult_out2_reg_n_138 : STD_LOGIC;
  signal mult_out2_reg_n_139 : STD_LOGIC;
  signal mult_out2_reg_n_140 : STD_LOGIC;
  signal mult_out2_reg_n_141 : STD_LOGIC;
  signal mult_out2_reg_n_142 : STD_LOGIC;
  signal mult_out2_reg_n_143 : STD_LOGIC;
  signal mult_out2_reg_n_144 : STD_LOGIC;
  signal mult_out2_reg_n_145 : STD_LOGIC;
  signal mult_out2_reg_n_146 : STD_LOGIC;
  signal mult_out2_reg_n_147 : STD_LOGIC;
  signal mult_out2_reg_n_148 : STD_LOGIC;
  signal mult_out2_reg_n_149 : STD_LOGIC;
  signal mult_out2_reg_n_150 : STD_LOGIC;
  signal mult_out2_reg_n_151 : STD_LOGIC;
  signal mult_out2_reg_n_152 : STD_LOGIC;
  signal mult_out2_reg_n_153 : STD_LOGIC;
  signal mult_out2_reg_n_24 : STD_LOGIC;
  signal mult_out2_reg_n_25 : STD_LOGIC;
  signal mult_out2_reg_n_26 : STD_LOGIC;
  signal mult_out2_reg_n_27 : STD_LOGIC;
  signal mult_out2_reg_n_28 : STD_LOGIC;
  signal mult_out2_reg_n_29 : STD_LOGIC;
  signal mult_out2_reg_n_30 : STD_LOGIC;
  signal mult_out2_reg_n_31 : STD_LOGIC;
  signal mult_out2_reg_n_32 : STD_LOGIC;
  signal mult_out2_reg_n_33 : STD_LOGIC;
  signal mult_out2_reg_n_34 : STD_LOGIC;
  signal mult_out2_reg_n_35 : STD_LOGIC;
  signal mult_out2_reg_n_36 : STD_LOGIC;
  signal mult_out2_reg_n_37 : STD_LOGIC;
  signal mult_out2_reg_n_38 : STD_LOGIC;
  signal mult_out2_reg_n_39 : STD_LOGIC;
  signal mult_out2_reg_n_40 : STD_LOGIC;
  signal mult_out2_reg_n_41 : STD_LOGIC;
  signal mult_out2_reg_n_42 : STD_LOGIC;
  signal mult_out2_reg_n_43 : STD_LOGIC;
  signal mult_out2_reg_n_44 : STD_LOGIC;
  signal mult_out2_reg_n_45 : STD_LOGIC;
  signal mult_out2_reg_n_46 : STD_LOGIC;
  signal mult_out2_reg_n_47 : STD_LOGIC;
  signal mult_out2_reg_n_48 : STD_LOGIC;
  signal mult_out2_reg_n_49 : STD_LOGIC;
  signal mult_out2_reg_n_50 : STD_LOGIC;
  signal mult_out2_reg_n_51 : STD_LOGIC;
  signal mult_out2_reg_n_52 : STD_LOGIC;
  signal mult_out2_reg_n_53 : STD_LOGIC;
  signal mult_out2_reg_n_58 : STD_LOGIC;
  signal mult_out2_reg_n_59 : STD_LOGIC;
  signal mult_out2_reg_n_60 : STD_LOGIC;
  signal mult_out2_reg_n_61 : STD_LOGIC;
  signal mult_out2_reg_n_62 : STD_LOGIC;
  signal mult_out2_reg_n_63 : STD_LOGIC;
  signal mult_out2_reg_n_64 : STD_LOGIC;
  signal mult_out2_reg_n_65 : STD_LOGIC;
  signal mult_out2_reg_n_66 : STD_LOGIC;
  signal mult_out2_reg_n_67 : STD_LOGIC;
  signal mult_out2_reg_n_68 : STD_LOGIC;
  signal mult_out2_reg_n_69 : STD_LOGIC;
  signal mult_out2_reg_n_70 : STD_LOGIC;
  signal mult_out2_reg_n_71 : STD_LOGIC;
  signal mult_out2_reg_n_72 : STD_LOGIC;
  signal mult_out2_reg_n_73 : STD_LOGIC;
  signal mult_out2_reg_n_74 : STD_LOGIC;
  signal mult_out2_reg_n_75 : STD_LOGIC;
  signal mult_out2_reg_n_76 : STD_LOGIC;
  signal mult_out2_reg_n_77 : STD_LOGIC;
  signal mult_out2_reg_n_78 : STD_LOGIC;
  signal mult_out2_reg_n_79 : STD_LOGIC;
  signal mult_out2_reg_n_80 : STD_LOGIC;
  signal mult_out2_reg_n_81 : STD_LOGIC;
  signal mult_out2_reg_n_82 : STD_LOGIC;
  signal mult_out2_reg_n_83 : STD_LOGIC;
  signal mult_out2_reg_n_84 : STD_LOGIC;
  signal mult_out2_reg_n_85 : STD_LOGIC;
  signal mult_out2_reg_n_86 : STD_LOGIC;
  signal mult_out2_reg_n_87 : STD_LOGIC;
  signal mult_out2_reg_n_88 : STD_LOGIC;
  signal mult_out2_reg_n_89 : STD_LOGIC;
  signal mult_out2_reg_n_90 : STD_LOGIC;
  signal mult_out2_reg_n_91 : STD_LOGIC;
  signal mult_out2_reg_n_92 : STD_LOGIC;
  signal mult_out2_reg_n_93 : STD_LOGIC;
  signal mult_out2_reg_n_94 : STD_LOGIC;
  signal mult_out2_reg_n_95 : STD_LOGIC;
  signal mult_out2_reg_n_96 : STD_LOGIC;
  signal mult_out2_reg_n_97 : STD_LOGIC;
  signal mult_out2_reg_n_98 : STD_LOGIC;
  signal mult_out2_reg_n_99 : STD_LOGIC;
  signal \mult_out3_reg__0__0\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \mult_out3_reg__0_i_10_n_0\ : STD_LOGIC;
  signal \mult_out3_reg__0_i_11_n_0\ : STD_LOGIC;
  signal \mult_out3_reg__0_i_12_n_0\ : STD_LOGIC;
  signal \mult_out3_reg__0_i_13_n_0\ : STD_LOGIC;
  signal \mult_out3_reg__0_i_14_n_0\ : STD_LOGIC;
  signal \mult_out3_reg__0_i_15_n_0\ : STD_LOGIC;
  signal \mult_out3_reg__0_i_16_n_0\ : STD_LOGIC;
  signal \mult_out3_reg__0_i_17_n_0\ : STD_LOGIC;
  signal \mult_out3_reg__0_i_3_n_0\ : STD_LOGIC;
  signal \mult_out3_reg__0_i_4_n_0\ : STD_LOGIC;
  signal \mult_out3_reg__0_i_5_n_0\ : STD_LOGIC;
  signal \mult_out3_reg__0_i_6_n_0\ : STD_LOGIC;
  signal \mult_out3_reg__0_i_7_n_0\ : STD_LOGIC;
  signal \mult_out3_reg__0_i_8_n_0\ : STD_LOGIC;
  signal \mult_out3_reg__0_i_9_n_0\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_100\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_101\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_102\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_103\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_104\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_58\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_59\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_60\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_61\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_62\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_63\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_64\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_65\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_66\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_67\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_68\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_69\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_70\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_71\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_72\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_73\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_74\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_75\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_76\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_77\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_78\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_79\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_80\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_81\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_82\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_83\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_84\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_85\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_86\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_87\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_88\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_89\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_90\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_91\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_92\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_93\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_94\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_95\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_96\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_97\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_98\ : STD_LOGIC;
  signal \mult_out3_reg__0_n_99\ : STD_LOGIC;
  signal out_valid_i_1_n_0 : STD_LOGIC;
  signal out_valid_i_2_n_0 : STD_LOGIC;
  signal out_valid_i_3_n_0 : STD_LOGIC;
  signal out_valid_i_4_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal upper_reg1 : STD_LOGIC;
  signal \upper_reg1[0]_i_1_n_0\ : STD_LOGIC;
  signal \upper_reg1[10]_i_1_n_0\ : STD_LOGIC;
  signal \upper_reg1[11]_i_1_n_0\ : STD_LOGIC;
  signal \upper_reg1[12]_i_1_n_0\ : STD_LOGIC;
  signal \upper_reg1[13]_i_1_n_0\ : STD_LOGIC;
  signal \upper_reg1[14]_i_1_n_0\ : STD_LOGIC;
  signal \upper_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \upper_reg1[1]_i_1_n_0\ : STD_LOGIC;
  signal \upper_reg1[2]_i_1_n_0\ : STD_LOGIC;
  signal \upper_reg1[3]_i_1_n_0\ : STD_LOGIC;
  signal \upper_reg1[4]_i_1_n_0\ : STD_LOGIC;
  signal \upper_reg1[5]_i_1_n_0\ : STD_LOGIC;
  signal \upper_reg1[6]_i_1_n_0\ : STD_LOGIC;
  signal \upper_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \upper_reg1[8]_i_1_n_0\ : STD_LOGIC;
  signal \upper_reg1[9]_i_1_n_0\ : STD_LOGIC;
  signal \upper_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \upper_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \upper_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \upper_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \upper_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \upper_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \upper_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \upper_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \upper_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \upper_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \upper_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \upper_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \upper_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \upper_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \upper_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \upper_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal upper_reg2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_cl_sum_prev0_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cl_sum_prev0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_mult_out2_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out2_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out2_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out2_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out2_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out2_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out2_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mult_out2_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_out3_reg__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out3_reg__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out3_reg__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out3_reg__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out3_reg__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out3_reg__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out3_reg__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mult_out3_reg__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mult_out3_reg__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_out3_reg__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cl_sum[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cl_sum[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cl_sum[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cl_sum[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cl_sum_prev[1]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cl_sum_prev[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of cl_sum_rdy_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter32[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter32[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter32[5]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter64[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter64[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter64[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter64[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter64[6]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_out[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[15]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_out[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_out[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_out[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out[9]_i_1\ : label is "soft_lutpair13";
  attribute srl_name : string;
  attribute srl_name of \full_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r\ : label is "\inst/huffman_AXI_Lite_myip_v1_0_S00_AXI_inst/huffman_encoder_inst/full_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r ";
  attribute SOFT_HLUTNM of full_flag5_reg_gate : label is "soft_lutpair15";
  attribute srl_name of \half_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r\ : label is "\inst/huffman_AXI_Lite_myip_v1_0_S00_AXI_inst/huffman_encoder_inst/half_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r ";
  attribute SOFT_HLUTNM of half_flag5_reg_gate : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \lower_reg1[14]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \lower_reg1[15]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of out_valid_i_3 : label is "soft_lutpair4";
begin
  ARESET <= \^areset\;
  D(1 downto 0) <= \^d\(1 downto 0);
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^areset\
    );
\cl_sum[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \cl_sum_prev_reg__1\(0),
      I1 => \cl_sum_prev_reg__0\(1),
      O => \cl_sum[1]_i_1_n_0\
    );
\cl_sum[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cl_sum_prev_reg__0\(1),
      I1 => \cl_sum_prev_reg__1\(0),
      I2 => \cl_sum_prev_reg__0\(2),
      O => \cl_sum[2]_i_1_n_0\
    );
\cl_sum[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15EA"
    )
        port map (
      I0 => \cl_sum_prev_reg__0\(2),
      I1 => \cl_sum_prev_reg__1\(0),
      I2 => \cl_sum_prev_reg__0\(1),
      I3 => \cl_sum_prev_reg__0\(3),
      O => \cl_sum[3]_i_1_n_0\
    );
\cl_sum[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0015FFEA"
    )
        port map (
      I0 => \cl_sum_prev_reg__0\(3),
      I1 => \cl_sum_prev_reg__0\(1),
      I2 => \cl_sum_prev_reg__1\(0),
      I3 => \cl_sum_prev_reg__0\(2),
      I4 => \cl_sum_prev_reg__0\(4),
      O => \cl_sum[4]_i_1_n_0\
    );
\cl_sum[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => cl_sum_rdy_reg_n_0,
      I1 => cl_sum15_out,
      I2 => \cl_sum_prev_reg__0\(5),
      I3 => \cl_sum_prev_reg__0\(4),
      O => cl_sum_1
    );
\cl_sum[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEE00000111"
    )
        port map (
      I0 => \cl_sum_prev_reg__0\(4),
      I1 => \cl_sum_prev_reg__0\(2),
      I2 => \cl_sum_prev_reg__1\(0),
      I3 => \cl_sum_prev_reg__0\(1),
      I4 => \cl_sum_prev_reg__0\(3),
      I5 => \cl_sum_prev_reg__0\(5),
      O => \cl_sum[5]_i_2_n_0\
    );
\cl_sum[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFF0000"
    )
        port map (
      I0 => \cl_sum_prev_reg__0\(3),
      I1 => \cl_sum_prev_reg__0\(1),
      I2 => \cl_sum_prev_reg__1\(0),
      I3 => \cl_sum_prev_reg__0\(2),
      I4 => \cl_sum_prev_reg__0\(4),
      I5 => \cl_sum_prev_reg__0\(5),
      O => cl_sum15_out
    );
\cl_sum_prev0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cl_sum_prev0_inferred__0/i__carry_n_0\,
      CO(2) => \cl_sum_prev0_inferred__0/i__carry_n_1\,
      CO(1) => \cl_sum_prev0_inferred__0/i__carry_n_2\,
      CO(0) => \cl_sum_prev0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DOADO(3 downto 0),
      O(3) => \cl_sum_prev0_inferred__0/i__carry_n_4\,
      O(2) => \cl_sum_prev0_inferred__0/i__carry_n_5\,
      O(1) => \cl_sum_prev0_inferred__0/i__carry_n_6\,
      O(0) => \cl_sum_prev0_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\cl_sum_prev0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cl_sum_prev0_inferred__0/i__carry_n_0\,
      CO(3 downto 1) => \NLW_cl_sum_prev0_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \cl_sum_prev0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => DOADO(4),
      O(3 downto 2) => \NLW_cl_sum_prev0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \cl_sum_prev0_inferred__0/i__carry__0_n_6\,
      O(0) => \cl_sum_prev0_inferred__0/i__carry__0_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_1_n_0\,
      S(0) => \i__carry__0_i_2_n_0\
    );
\cl_sum_prev[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000F1FFF1FFE000"
    )
        port map (
      I0 => \cl_sum_prev_reg__0\(5),
      I1 => \cl_sum_prev_reg__0\(4),
      I2 => \cl_sum_prev0_inferred__0/i__carry_n_7\,
      I3 => cl_sum15_out,
      I4 => DOADO(0),
      I5 => \cl_sum_prev_reg__1\(0),
      O => p_0_in(0)
    );
\cl_sum_prev[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF4040EF40EFEF40"
    )
        port map (
      I0 => \cl_sum1__0\,
      I1 => \cl_sum_prev0_inferred__0/i__carry_n_6\,
      I2 => cl_sum15_out,
      I3 => \cl_sum_prev[1]_i_2_n_0\,
      I4 => \cl_sum_prev_reg__0\(1),
      I5 => DOADO(1),
      O => p_0_in(1)
    );
\cl_sum_prev[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cl_sum_prev_reg__1\(0),
      I1 => DOADO(0),
      O => \cl_sum_prev[1]_i_2_n_0\
    );
\cl_sum_prev[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF4040EF40EFEF40"
    )
        port map (
      I0 => \cl_sum1__0\,
      I1 => \cl_sum_prev0_inferred__0/i__carry_n_5\,
      I2 => cl_sum15_out,
      I3 => \cl_sum_prev[2]_i_2_n_0\,
      I4 => \cl_sum_prev_reg__0\(2),
      I5 => DOADO(2),
      O => p_0_in(2)
    );
\cl_sum_prev[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => \cl_sum_prev_reg__0\(1),
      I1 => DOADO(1),
      I2 => DOADO(0),
      I3 => \cl_sum_prev_reg__1\(0),
      O => \cl_sum_prev[2]_i_2_n_0\
    );
\cl_sum_prev[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF4040EF40EFEF40"
    )
        port map (
      I0 => \cl_sum1__0\,
      I1 => \cl_sum_prev0_inferred__0/i__carry_n_4\,
      I2 => cl_sum15_out,
      I3 => \cl_sum_prev[3]_i_3_n_0\,
      I4 => \cl_sum_prev_reg__0\(3),
      I5 => DOADO(3),
      O => p_0_in(3)
    );
\cl_sum_prev[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cl_sum_prev_reg__0\(5),
      I1 => \cl_sum_prev_reg__0\(4),
      O => \cl_sum1__0\
    );
\cl_sum_prev[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \cl_sum_prev_reg__0\(2),
      I1 => DOADO(2),
      I2 => \cl_sum_prev_reg__1\(0),
      I3 => DOADO(0),
      I4 => DOADO(1),
      I5 => \cl_sum_prev_reg__0\(1),
      O => \cl_sum_prev[3]_i_3_n_0\
    );
\cl_sum_prev[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0CCF133F133E0CC"
    )
        port map (
      I0 => \cl_sum_prev_reg__0\(5),
      I1 => \cl_sum_prev_reg__0\(4),
      I2 => \cl_sum_prev0_inferred__0/i__carry__0_n_7\,
      I3 => cl_sum15_out,
      I4 => \cl_sum_prev[5]_i_2_n_0\,
      I5 => DOADO(4),
      O => p_0_in(4)
    );
\cl_sum_prev[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1BBE088E088E044"
    )
        port map (
      I0 => \cl_sum_prev_reg__0\(5),
      I1 => \cl_sum_prev_reg__0\(4),
      I2 => \cl_sum_prev0_inferred__0/i__carry__0_n_6\,
      I3 => cl_sum15_out,
      I4 => DOADO(4),
      I5 => \cl_sum_prev[5]_i_2_n_0\,
      O => p_0_in(5)
    );
\cl_sum_prev[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \cl_sum_prev_reg__0\(3),
      I1 => DOADO(3),
      I2 => \cl_sum_prev[3]_i_3_n_0\,
      O => \cl_sum_prev[5]_i_2_n_0\
    );
\cl_sum_prev_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cl_sum_1,
      D => p_0_in(0),
      Q => \cl_sum_prev_reg__1\(0),
      R => \^areset\
    );
\cl_sum_prev_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cl_sum_1,
      D => p_0_in(1),
      Q => \cl_sum_prev_reg__0\(1),
      R => \^areset\
    );
\cl_sum_prev_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cl_sum_1,
      D => p_0_in(2),
      Q => \cl_sum_prev_reg__0\(2),
      R => \^areset\
    );
\cl_sum_prev_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cl_sum_1,
      D => p_0_in(3),
      Q => \cl_sum_prev_reg__0\(3),
      R => \^areset\
    );
\cl_sum_prev_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cl_sum_1,
      D => p_0_in(4),
      Q => \cl_sum_prev_reg__0\(4),
      R => \^areset\
    );
\cl_sum_prev_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cl_sum_1,
      D => p_0_in(5),
      Q => \cl_sum_prev_reg__0\(5),
      R => \^areset\
    );
cl_sum_rdy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => cl_sum_rdy_i_2_n_0,
      I1 => \counter64_reg_n_0_[0]\,
      I2 => \counter64_reg_n_0_[2]\,
      I3 => cl_sum_rdy_i_3_n_0,
      I4 => \counter64_reg_n_0_[1]\,
      I5 => cl_sum_rdy_reg_n_0,
      O => cl_sum_rdy_i_1_n_0
    );
cl_sum_rdy_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter64_reg_n_0_[4]\,
      I1 => \counter64_reg_n_0_[3]\,
      O => cl_sum_rdy_i_2_n_0
    );
cl_sum_rdy_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter64_reg_n_0_[6]\,
      I1 => \counter64_reg_n_0_[5]\,
      O => cl_sum_rdy_i_3_n_0
    );
cl_sum_rdy_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => cl_sum_rdy_i_1_n_0,
      Q => cl_sum_rdy_reg_n_0,
      R => \^areset\
    );
\cl_sum_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cl_sum_1,
      D => \cl_sum_prev_reg__1\(0),
      Q => cl_sum(0),
      R => \^areset\
    );
\cl_sum_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => cl_sum_1,
      D => \cl_sum[1]_i_1_n_0\,
      Q => cl_sum(1),
      S => \^areset\
    );
\cl_sum_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cl_sum_1,
      D => \cl_sum[2]_i_1_n_0\,
      Q => cl_sum(2),
      R => \^areset\
    );
\cl_sum_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cl_sum_1,
      D => \cl_sum[3]_i_1_n_0\,
      Q => cl_sum(3),
      R => \^areset\
    );
\cl_sum_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cl_sum_1,
      D => \cl_sum[4]_i_1_n_0\,
      Q => cl_sum(4),
      R => \^areset\
    );
\cl_sum_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => cl_sum_1,
      D => \cl_sum[5]_i_2_n_0\,
      Q => cl_sum(5),
      S => \^areset\
    );
\counter32[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54F4000000000000"
    )
        port map (
      I0 => counter32(0),
      I1 => \counter32[0]_i_2_n_0\,
      I2 => Q(1),
      I3 => \counter32[0]_i_3_n_0\,
      I4 => Q(0),
      I5 => s00_axi_aresetn,
      O => \counter32[0]_i_1_n_0\
    );
\counter32[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => counter32(2),
      I1 => counter32(1),
      I2 => counter32(0),
      I3 => counter32(4),
      I4 => counter32(3),
      I5 => counter32(5),
      O => \counter32[0]_i_2_n_0\
    );
\counter32[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001FFF"
    )
        port map (
      I0 => counter32(1),
      I1 => counter32(0),
      I2 => counter32(3),
      I3 => counter32(2),
      I4 => counter32(4),
      I5 => counter32(5),
      O => \counter32[0]_i_3_n_0\
    );
\counter32[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0069"
    )
        port map (
      I0 => counter32(0),
      I1 => counter32(1),
      I2 => Q(1),
      I3 => \counter32[5]_i_3_n_0\,
      O => \counter32[1]_i_1_n_0\
    );
\counter32[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \counter32[2]_i_2_n_0\,
      I1 => Q(0),
      I2 => s00_axi_aresetn,
      O => \counter32[2]_i_1_n_0\
    );
\counter32[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74CCFC44FC44CC74"
    )
        port map (
      I0 => \counter32[0]_i_3_n_0\,
      I1 => Q(1),
      I2 => \counter32[0]_i_2_n_0\,
      I3 => counter32(2),
      I4 => counter32(0),
      I5 => counter32(1),
      O => \counter32[2]_i_2_n_0\
    );
\counter32[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2000000"
    )
        port map (
      I0 => \counter32[3]_i_2_n_0\,
      I1 => Q(1),
      I2 => \counter32[3]_i_3_n_0\,
      I3 => Q(0),
      I4 => s00_axi_aresetn,
      O => \counter32[3]_i_1_n_0\
    );
\counter32[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F00E"
    )
        port map (
      I0 => counter32(5),
      I1 => counter32(4),
      I2 => counter32(3),
      I3 => counter32(1),
      I4 => counter32(0),
      I5 => counter32(2),
      O => \counter32[3]_i_2_n_0\
    );
\counter32[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFEEFFEEFFEE"
    )
        port map (
      I0 => counter32(5),
      I1 => counter32(4),
      I2 => counter32(2),
      I3 => counter32(3),
      I4 => counter32(0),
      I5 => counter32(1),
      O => \counter32[3]_i_3_n_0\
    );
\counter32[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => \counter32[5]_i_2_n_0\,
      I1 => counter32(4),
      I2 => Q(1),
      I3 => \counter32[5]_i_3_n_0\,
      O => \counter32[4]_i_1_n_0\
    );
\counter32[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E1"
    )
        port map (
      I0 => counter32(4),
      I1 => \counter32[5]_i_2_n_0\,
      I2 => counter32(5),
      I3 => Q(1),
      I4 => \counter32[5]_i_3_n_0\,
      O => \counter32[5]_i_1_n_0\
    );
\counter32[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter32(2),
      I1 => counter32(0),
      I2 => counter32(1),
      I3 => counter32(3),
      O => \counter32[5]_i_2_n_0\
    );
\counter32[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"777FFF7F"
    )
        port map (
      I0 => Q(0),
      I1 => s00_axi_aresetn,
      I2 => \counter32[0]_i_2_n_0\,
      I3 => Q(1),
      I4 => \counter32[0]_i_3_n_0\,
      O => \counter32[5]_i_3_n_0\
    );
\counter32_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter32[0]_i_1_n_0\,
      Q => counter32(0),
      R => '0'
    );
\counter32_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter32[1]_i_1_n_0\,
      Q => counter32(1),
      R => '0'
    );
\counter32_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter32[2]_i_1_n_0\,
      Q => counter32(2),
      R => '0'
    );
\counter32_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter32[3]_i_1_n_0\,
      Q => counter32(3),
      R => '0'
    );
\counter32_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter32[4]_i_1_n_0\,
      Q => counter32(4),
      R => '0'
    );
\counter32_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter32[5]_i_1_n_0\,
      Q => counter32(5),
      R => '0'
    );
\counter64[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DA"
    )
        port map (
      I0 => Q(0),
      I1 => \counter64_reg_n_0_[6]\,
      I2 => \counter64_reg_n_0_[0]\,
      O => \counter64[0]_i_1_n_0\
    );
\counter64[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter64_reg_n_0_[0]\,
      I1 => \counter64_reg_n_0_[1]\,
      O => \counter64[1]_i_1_n_0\
    );
\counter64[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter64_reg_n_0_[0]\,
      I1 => \counter64_reg_n_0_[1]\,
      I2 => \counter64_reg_n_0_[2]\,
      O => \counter64[2]_i_1_n_0\
    );
\counter64[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter64_reg_n_0_[1]\,
      I1 => \counter64_reg_n_0_[0]\,
      I2 => \counter64_reg_n_0_[2]\,
      I3 => \counter64_reg_n_0_[3]\,
      O => \counter64[3]_i_1_n_0\
    );
\counter64[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter64_reg_n_0_[2]\,
      I1 => \counter64_reg_n_0_[0]\,
      I2 => \counter64_reg_n_0_[1]\,
      I3 => \counter64_reg_n_0_[3]\,
      I4 => \counter64_reg_n_0_[4]\,
      O => \counter64[4]_i_1_n_0\
    );
\counter64[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => Q(0),
      I1 => \counter64_reg_n_0_[6]\,
      I2 => s00_axi_aresetn,
      O => \counter64[5]_i_1_n_0\
    );
\counter64[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter64_reg_n_0_[3]\,
      I1 => \counter64_reg_n_0_[1]\,
      I2 => \counter64_reg_n_0_[0]\,
      I3 => \counter64_reg_n_0_[2]\,
      I4 => \counter64_reg_n_0_[4]\,
      I5 => \counter64_reg_n_0_[5]\,
      O => \counter64[5]_i_2_n_0\
    );
\counter64[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F80"
    )
        port map (
      I0 => \counter64_reg_n_0_[5]\,
      I1 => \counter64[6]_i_2_n_0\,
      I2 => Q(0),
      I3 => \counter64_reg_n_0_[6]\,
      O => \counter64[6]_i_1_n_0\
    );
\counter64[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \counter64_reg_n_0_[4]\,
      I1 => \counter64_reg_n_0_[2]\,
      I2 => \counter64_reg_n_0_[0]\,
      I3 => \counter64_reg_n_0_[1]\,
      I4 => \counter64_reg_n_0_[3]\,
      O => \counter64[6]_i_2_n_0\
    );
\counter64_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter64[0]_i_1_n_0\,
      Q => \counter64_reg_n_0_[0]\,
      R => \^areset\
    );
\counter64_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \counter64[1]_i_1_n_0\,
      Q => \counter64_reg_n_0_[1]\,
      R => \counter64[5]_i_1_n_0\
    );
\counter64_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \counter64[2]_i_1_n_0\,
      Q => \counter64_reg_n_0_[2]\,
      R => \counter64[5]_i_1_n_0\
    );
\counter64_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \counter64[3]_i_1_n_0\,
      Q => \counter64_reg_n_0_[3]\,
      R => \counter64[5]_i_1_n_0\
    );
\counter64_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \counter64[4]_i_1_n_0\,
      Q => \counter64_reg_n_0_[4]\,
      R => \counter64[5]_i_1_n_0\
    );
\counter64_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \counter64[5]_i_2_n_0\,
      Q => \counter64_reg_n_0_[5]\,
      R => \counter64[5]_i_1_n_0\
    );
\counter64_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter64[6]_i_1_n_0\,
      Q => \counter64_reg_n_0_[6]\,
      S => \^areset\
    );
\data_out2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg_rep__0\(0),
      Q => data_out2(0),
      R => \^areset\
    );
\data_out2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg_rep__0\(10),
      Q => data_out2(10),
      R => \^areset\
    );
\data_out2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg_rep__0\(11),
      Q => data_out2(11),
      R => \^areset\
    );
\data_out2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg_rep__0\(12),
      Q => data_out2(12),
      R => \^areset\
    );
\data_out2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg_rep__0\(13),
      Q => data_out2(13),
      R => \^areset\
    );
\data_out2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg_rep__0\(14),
      Q => data_out2(14),
      R => \^areset\
    );
\data_out2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg_rep__0\(15),
      Q => data_out2(15),
      R => \^areset\
    );
\data_out2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg_rep__0\(16),
      Q => data_out2(16),
      R => \^areset\
    );
\data_out2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg_rep__0\(1),
      Q => data_out2(1),
      R => \^areset\
    );
\data_out2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg_rep__0\(2),
      Q => data_out2(2),
      R => \^areset\
    );
\data_out2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg_rep__0\(3),
      Q => data_out2(3),
      R => \^areset\
    );
\data_out2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg_rep__0\(4),
      Q => data_out2(4),
      R => \^areset\
    );
\data_out2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg_rep__0\(5),
      Q => data_out2(5),
      R => \^areset\
    );
\data_out2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg_rep__0\(6),
      Q => data_out2(6),
      R => \^areset\
    );
\data_out2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg_rep__0\(7),
      Q => data_out2(7),
      R => \^areset\
    );
\data_out2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg_rep__0\(8),
      Q => data_out2(8),
      R => \^areset\
    );
\data_out2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg_rep__0\(9),
      Q => data_out2(9),
      R => \^areset\
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => upper_reg2(0),
      I1 => middle_reg3(0),
      I2 => half_flag7,
      O => \data_out[0]_i_1_n_0\
    );
\data_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => upper_reg2(10),
      I1 => middle_reg3(10),
      I2 => half_flag7,
      O => \data_out[10]_i_1_n_0\
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => upper_reg2(11),
      I1 => middle_reg3(11),
      I2 => half_flag7,
      O => \data_out[11]_i_1_n_0\
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => upper_reg2(12),
      I1 => middle_reg3(12),
      I2 => half_flag7,
      O => \data_out[12]_i_1_n_0\
    );
\data_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => upper_reg2(13),
      I1 => middle_reg3(13),
      I2 => half_flag7,
      O => \data_out[13]_i_1_n_0\
    );
\data_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => upper_reg2(14),
      I1 => middle_reg3(14),
      I2 => half_flag7,
      O => \data_out[14]_i_1_n_0\
    );
\data_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => Q(0),
      I1 => full_flag8,
      I2 => half_flag7,
      O => \data_out[15]_i_1_n_0\
    );
\data_out[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => upper_reg2(15),
      I1 => middle_reg3(15),
      I2 => half_flag7,
      O => \data_out[15]_i_2_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => upper_reg2(1),
      I1 => middle_reg3(1),
      I2 => half_flag7,
      O => \data_out[1]_i_1_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => upper_reg2(2),
      I1 => middle_reg3(2),
      I2 => half_flag7,
      O => \data_out[2]_i_1_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => upper_reg2(3),
      I1 => middle_reg3(3),
      I2 => half_flag7,
      O => \data_out[3]_i_1_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => upper_reg2(4),
      I1 => middle_reg3(4),
      I2 => half_flag7,
      O => \data_out[4]_i_1_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => upper_reg2(5),
      I1 => middle_reg3(5),
      I2 => half_flag7,
      O => \data_out[5]_i_1_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => upper_reg2(6),
      I1 => middle_reg3(6),
      I2 => half_flag7,
      O => \data_out[6]_i_1_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => upper_reg2(7),
      I1 => middle_reg3(7),
      I2 => half_flag7,
      O => \data_out[7]_i_1_n_0\
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => upper_reg2(8),
      I1 => middle_reg3(8),
      I2 => half_flag7,
      O => \data_out[8]_i_1_n_0\
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => upper_reg2(9),
      I1 => middle_reg3(9),
      I2 => half_flag7,
      O => \data_out[9]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_out[15]_i_1_n_0\,
      D => \data_out[0]_i_1_n_0\,
      Q => \slv_reg3_reg[15]\(0),
      R => \^areset\
    );
\data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_out[15]_i_1_n_0\,
      D => \data_out[10]_i_1_n_0\,
      Q => \slv_reg3_reg[15]\(10),
      R => \^areset\
    );
\data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_out[15]_i_1_n_0\,
      D => \data_out[11]_i_1_n_0\,
      Q => \slv_reg3_reg[15]\(11),
      R => \^areset\
    );
\data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_out[15]_i_1_n_0\,
      D => \data_out[12]_i_1_n_0\,
      Q => \slv_reg3_reg[15]\(12),
      R => \^areset\
    );
\data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_out[15]_i_1_n_0\,
      D => \data_out[13]_i_1_n_0\,
      Q => \slv_reg3_reg[15]\(13),
      R => \^areset\
    );
\data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_out[15]_i_1_n_0\,
      D => \data_out[14]_i_1_n_0\,
      Q => \slv_reg3_reg[15]\(14),
      R => \^areset\
    );
\data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_out[15]_i_1_n_0\,
      D => \data_out[15]_i_2_n_0\,
      Q => \slv_reg3_reg[15]\(15),
      R => \^areset\
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_out[15]_i_1_n_0\,
      D => \data_out[1]_i_1_n_0\,
      Q => \slv_reg3_reg[15]\(1),
      R => \^areset\
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_out[15]_i_1_n_0\,
      D => \data_out[2]_i_1_n_0\,
      Q => \slv_reg3_reg[15]\(2),
      R => \^areset\
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_out[15]_i_1_n_0\,
      D => \data_out[3]_i_1_n_0\,
      Q => \slv_reg3_reg[15]\(3),
      R => \^areset\
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_out[15]_i_1_n_0\,
      D => \data_out[4]_i_1_n_0\,
      Q => \slv_reg3_reg[15]\(4),
      R => \^areset\
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_out[15]_i_1_n_0\,
      D => \data_out[5]_i_1_n_0\,
      Q => \slv_reg3_reg[15]\(5),
      R => \^areset\
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_out[15]_i_1_n_0\,
      D => \data_out[6]_i_1_n_0\,
      Q => \slv_reg3_reg[15]\(6),
      R => \^areset\
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_out[15]_i_1_n_0\,
      D => \data_out[7]_i_1_n_0\,
      Q => \slv_reg3_reg[15]\(7),
      R => \^areset\
    );
\data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_out[15]_i_1_n_0\,
      D => \data_out[8]_i_1_n_0\,
      Q => \slv_reg3_reg[15]\(8),
      R => \^areset\
    );
\data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_out[15]_i_1_n_0\,
      D => \data_out[9]_i_1_n_0\,
      Q => \slv_reg3_reg[15]\(9),
      R => \^areset\
    );
full_flag1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08C8088808C80808"
    )
        port map (
      I0 => full_flag1,
      I1 => s00_axi_aresetn,
      I2 => cl_sum_rdy_reg_n_0,
      I3 => cl_sum15_out,
      I4 => \cl_sum_prev_reg__0\(5),
      I5 => \cl_sum_prev_reg__0\(4),
      O => full_flag1_i_1_n_0
    );
full_flag1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => full_flag1_i_1_n_0,
      Q => full_flag1,
      R => '0'
    );
\full_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => Q(0),
      CLK => s00_axi_aclk,
      D => full_flag1,
      Q => \full_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r_n_0\
    );
full_flag5_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => full_flag5_reg_inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag5_reg_r_n_0,
      I1 => half_flag5_reg_r_n_0,
      O => full_flag5_reg_gate_n_0
    );
full_flag5_reg_inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag5_reg_r: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \full_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r_n_0\,
      Q => full_flag5_reg_inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag5_reg_r_n_0,
      R => '0'
    );
full_flag6_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => full_flag5_reg_gate_n_0,
      Q => p_0_in_0(1),
      R => \^areset\
    );
full_flag7_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => p_0_in_0(1),
      Q => full_flag7,
      R => \^areset\
    );
full_flag8_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => full_flag7,
      Q => full_flag8,
      R => \^areset\
    );
half_flag1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0A0F0A0E0A000A0"
    )
        port map (
      I0 => half_flag1,
      I1 => cl_sum15_out,
      I2 => s00_axi_aresetn,
      I3 => cl_sum_rdy_reg_n_0,
      I4 => \cl_sum_prev_reg__0\(4),
      I5 => \cl_sum_prev_reg__0\(5),
      O => half_flag1_i_1_n_0
    );
half_flag1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => half_flag1_i_1_n_0,
      Q => half_flag1,
      R => '0'
    );
half_flag2_reg_r: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => '1',
      Q => half_flag2_reg_r_n_0,
      R => \^areset\
    );
half_flag3_reg_r: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => half_flag2_reg_r_n_0,
      Q => half_flag3_reg_r_n_0,
      R => \^areset\
    );
half_flag4_reg_r: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => half_flag3_reg_r_n_0,
      Q => half_flag4_reg_r_n_0,
      R => \^areset\
    );
\half_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => Q(0),
      CLK => s00_axi_aclk,
      D => half_flag1,
      Q => \half_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r_n_0\
    );
half_flag5_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => half_flag5_reg_inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag5_reg_r_n_0,
      I1 => half_flag5_reg_r_n_0,
      O => half_flag5_reg_gate_n_0
    );
half_flag5_reg_inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag5_reg_r: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \half_flag4_reg_srl3___inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag4_reg_r_n_0\,
      Q => half_flag5_reg_inst_huffman_AXI_Lite_myip_v1_0_S00_AXI_inst_huffman_encoder_inst_half_flag5_reg_r_n_0,
      R => '0'
    );
half_flag5_reg_r: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => half_flag4_reg_r_n_0,
      Q => half_flag5_reg_r_n_0,
      R => \^areset\
    );
half_flag6_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => half_flag5_reg_gate_n_0,
      Q => p_0_in_0(0),
      R => \^areset\
    );
half_flag7_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => p_0_in_0(0),
      Q => half_flag7,
      R => \^areset\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \cl_sum_prev_reg__0\(4),
      I1 => \cl_sum_prev_reg__0\(5),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \cl_sum_prev_reg__0\(4),
      I1 => DOADO(4),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => DOADO(3),
      I1 => \cl_sum_prev_reg__0\(3),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => DOADO(2),
      I1 => \cl_sum_prev_reg__0\(2),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => DOADO(1),
      I1 => \cl_sum_prev_reg__0\(1),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => DOADO(0),
      I1 => \cl_sum_prev_reg__1\(0),
      O => \i__carry_i_4_n_0\
    );
in_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000008"
    )
        port map (
      I0 => \counter64_reg_n_0_[0]\,
      I1 => \counter64_reg_n_0_[2]\,
      I2 => \counter64_reg_n_0_[1]\,
      I3 => cl_sum_rdy_i_2_n_0,
      I4 => cl_sum_rdy_i_3_n_0,
      I5 => \^d\(0),
      O => in_ready_i_1_n_0
    );
in_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => in_ready_i_1_n_0,
      Q => \^d\(0),
      R => \^areset\
    );
\lower_reg1[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \mult_out3_reg__0__0\(0),
      I1 => p_0_in_0(1),
      O => \lower_reg1[14]_i_1_n_0\
    );
\lower_reg1[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \mult_out3_reg__0__0\(1),
      I1 => p_0_in_0(1),
      O => \lower_reg1[15]_i_1_n_0\
    );
\lower_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \lower_reg1[14]_i_1_n_0\,
      Q => \lower_reg1_reg_n_0_[14]\,
      R => \^areset\
    );
\lower_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \lower_reg1[15]_i_1_n_0\,
      Q => \lower_reg1_reg_n_0_[15]\,
      R => \^areset\
    );
\middle_reg1[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => Q(0),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      O => upper_reg1
    );
\middle_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \mult_out3_reg__0__0\(2),
      Q => middle_reg1(0),
      R => \^areset\
    );
\middle_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \mult_out3_reg__0__0\(12),
      Q => middle_reg1(10),
      R => \^areset\
    );
\middle_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \mult_out3_reg__0__0\(13),
      Q => middle_reg1(11),
      R => \^areset\
    );
\middle_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \mult_out3_reg__0__0\(14),
      Q => middle_reg1(12),
      R => \^areset\
    );
\middle_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \mult_out3_reg__0__0\(15),
      Q => middle_reg1(13),
      R => \^areset\
    );
\middle_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \mult_out3_reg__0__0\(16),
      Q => middle_reg1(14),
      R => \^areset\
    );
\middle_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \mult_out3_reg__0__0\(17),
      Q => middle_reg1(15),
      R => \^areset\
    );
\middle_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \mult_out3_reg__0__0\(3),
      Q => middle_reg1(1),
      R => \^areset\
    );
\middle_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \mult_out3_reg__0__0\(4),
      Q => middle_reg1(2),
      R => \^areset\
    );
\middle_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \mult_out3_reg__0__0\(5),
      Q => middle_reg1(3),
      R => \^areset\
    );
\middle_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \mult_out3_reg__0__0\(6),
      Q => middle_reg1(4),
      R => \^areset\
    );
\middle_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \mult_out3_reg__0__0\(7),
      Q => middle_reg1(5),
      R => \^areset\
    );
\middle_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \mult_out3_reg__0__0\(8),
      Q => middle_reg1(6),
      R => \^areset\
    );
\middle_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \mult_out3_reg__0__0\(9),
      Q => middle_reg1(7),
      R => \^areset\
    );
\middle_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \mult_out3_reg__0__0\(10),
      Q => middle_reg1(8),
      R => \^areset\
    );
\middle_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \mult_out3_reg__0__0\(11),
      Q => middle_reg1(9),
      R => \^areset\
    );
\middle_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg1(0),
      Q => middle_reg2(0),
      R => \^areset\
    );
\middle_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg1(10),
      Q => middle_reg2(10),
      R => \^areset\
    );
\middle_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg1(11),
      Q => middle_reg2(11),
      R => \^areset\
    );
\middle_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg1(12),
      Q => middle_reg2(12),
      R => \^areset\
    );
\middle_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg1(13),
      Q => middle_reg2(13),
      R => \^areset\
    );
\middle_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg1(14),
      Q => middle_reg2(14),
      R => \^areset\
    );
\middle_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg1(15),
      Q => middle_reg2(15),
      R => \^areset\
    );
\middle_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg1(1),
      Q => middle_reg2(1),
      R => \^areset\
    );
\middle_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg1(2),
      Q => middle_reg2(2),
      R => \^areset\
    );
\middle_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg1(3),
      Q => middle_reg2(3),
      R => \^areset\
    );
\middle_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg1(4),
      Q => middle_reg2(4),
      R => \^areset\
    );
\middle_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg1(5),
      Q => middle_reg2(5),
      R => \^areset\
    );
\middle_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg1(6),
      Q => middle_reg2(6),
      R => \^areset\
    );
\middle_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg1(7),
      Q => middle_reg2(7),
      R => \^areset\
    );
\middle_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg1(8),
      Q => middle_reg2(8),
      R => \^areset\
    );
\middle_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg1(9),
      Q => middle_reg2(9),
      R => \^areset\
    );
\middle_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg2(0),
      Q => middle_reg3(0),
      R => \^areset\
    );
\middle_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg2(10),
      Q => middle_reg3(10),
      R => \^areset\
    );
\middle_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg2(11),
      Q => middle_reg3(11),
      R => \^areset\
    );
\middle_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg2(12),
      Q => middle_reg3(12),
      R => \^areset\
    );
\middle_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg2(13),
      Q => middle_reg3(13),
      R => \^areset\
    );
\middle_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg2(14),
      Q => middle_reg3(14),
      R => \^areset\
    );
\middle_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg2(15),
      Q => middle_reg3(15),
      R => \^areset\
    );
\middle_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg2(1),
      Q => middle_reg3(1),
      R => \^areset\
    );
\middle_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg2(2),
      Q => middle_reg3(2),
      R => \^areset\
    );
\middle_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg2(3),
      Q => middle_reg3(3),
      R => \^areset\
    );
\middle_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg2(4),
      Q => middle_reg3(4),
      R => \^areset\
    );
\middle_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg2(5),
      Q => middle_reg3(5),
      R => \^areset\
    );
\middle_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg2(6),
      Q => middle_reg3(6),
      R => \^areset\
    );
\middle_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg2(7),
      Q => middle_reg3(7),
      R => \^areset\
    );
\middle_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg2(8),
      Q => middle_reg3(8),
      R => \^areset\
    );
\middle_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => middle_reg2(9),
      Q => middle_reg3(9),
      R => \^areset\
    );
mult_out2_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => data_out2(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29) => mult_out2_reg_n_24,
      ACOUT(28) => mult_out2_reg_n_25,
      ACOUT(27) => mult_out2_reg_n_26,
      ACOUT(26) => mult_out2_reg_n_27,
      ACOUT(25) => mult_out2_reg_n_28,
      ACOUT(24) => mult_out2_reg_n_29,
      ACOUT(23) => mult_out2_reg_n_30,
      ACOUT(22) => mult_out2_reg_n_31,
      ACOUT(21) => mult_out2_reg_n_32,
      ACOUT(20) => mult_out2_reg_n_33,
      ACOUT(19) => mult_out2_reg_n_34,
      ACOUT(18) => mult_out2_reg_n_35,
      ACOUT(17) => mult_out2_reg_n_36,
      ACOUT(16) => mult_out2_reg_n_37,
      ACOUT(15) => mult_out2_reg_n_38,
      ACOUT(14) => mult_out2_reg_n_39,
      ACOUT(13) => mult_out2_reg_n_40,
      ACOUT(12) => mult_out2_reg_n_41,
      ACOUT(11) => mult_out2_reg_n_42,
      ACOUT(10) => mult_out2_reg_n_43,
      ACOUT(9) => mult_out2_reg_n_44,
      ACOUT(8) => mult_out2_reg_n_45,
      ACOUT(7) => mult_out2_reg_n_46,
      ACOUT(6) => mult_out2_reg_n_47,
      ACOUT(5) => mult_out2_reg_n_48,
      ACOUT(4) => mult_out2_reg_n_49,
      ACOUT(3) => mult_out2_reg_n_50,
      ACOUT(2) => mult_out2_reg_n_51,
      ACOUT(1) => mult_out2_reg_n_52,
      ACOUT(0) => mult_out2_reg_n_53,
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16) => mult_out2_reg_i_1_n_0,
      B(15) => mult_out2_reg_i_2_n_0,
      B(14) => mult_out2_reg_i_3_n_0,
      B(13) => mult_out2_reg_i_4_n_0,
      B(12) => mult_out2_reg_i_5_n_0,
      B(11) => mult_out2_reg_i_6_n_0,
      B(10) => mult_out2_reg_i_7_n_0,
      B(9) => mult_out2_reg_i_8_n_0,
      B(8) => mult_out2_reg_i_9_n_0,
      B(7) => mult_out2_reg_i_10_n_0,
      B(6) => mult_out2_reg_i_11_n_0,
      B(5) => mult_out2_reg_i_12_n_0,
      B(4) => mult_out2_reg_i_13_n_0,
      B(3) => mult_out2_reg_i_14_n_0,
      B(2) => mult_out2_reg_i_15_n_0,
      B(1) => mult_out2_reg_i_16_n_0,
      B(0) => '0',
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mult_out2_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mult_out2_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mult_out2_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => Q(0),
      CEP => Q(0),
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mult_out2_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mult_out2_reg_OVERFLOW_UNCONNECTED,
      P(47) => mult_out2_reg_n_58,
      P(46) => mult_out2_reg_n_59,
      P(45) => mult_out2_reg_n_60,
      P(44) => mult_out2_reg_n_61,
      P(43) => mult_out2_reg_n_62,
      P(42) => mult_out2_reg_n_63,
      P(41) => mult_out2_reg_n_64,
      P(40) => mult_out2_reg_n_65,
      P(39) => mult_out2_reg_n_66,
      P(38) => mult_out2_reg_n_67,
      P(37) => mult_out2_reg_n_68,
      P(36) => mult_out2_reg_n_69,
      P(35) => mult_out2_reg_n_70,
      P(34) => mult_out2_reg_n_71,
      P(33) => mult_out2_reg_n_72,
      P(32) => mult_out2_reg_n_73,
      P(31) => mult_out2_reg_n_74,
      P(30) => mult_out2_reg_n_75,
      P(29) => mult_out2_reg_n_76,
      P(28) => mult_out2_reg_n_77,
      P(27) => mult_out2_reg_n_78,
      P(26) => mult_out2_reg_n_79,
      P(25) => mult_out2_reg_n_80,
      P(24) => mult_out2_reg_n_81,
      P(23) => mult_out2_reg_n_82,
      P(22) => mult_out2_reg_n_83,
      P(21) => mult_out2_reg_n_84,
      P(20) => mult_out2_reg_n_85,
      P(19) => mult_out2_reg_n_86,
      P(18) => mult_out2_reg_n_87,
      P(17) => mult_out2_reg_n_88,
      P(16) => mult_out2_reg_n_89,
      P(15) => mult_out2_reg_n_90,
      P(14) => mult_out2_reg_n_91,
      P(13) => mult_out2_reg_n_92,
      P(12) => mult_out2_reg_n_93,
      P(11) => mult_out2_reg_n_94,
      P(10) => mult_out2_reg_n_95,
      P(9) => mult_out2_reg_n_96,
      P(8) => mult_out2_reg_n_97,
      P(7) => mult_out2_reg_n_98,
      P(6) => mult_out2_reg_n_99,
      P(5) => mult_out2_reg_n_100,
      P(4) => mult_out2_reg_n_101,
      P(3) => mult_out2_reg_n_102,
      P(2) => mult_out2_reg_n_103,
      P(1) => mult_out2_reg_n_104,
      P(0) => mult_out2_reg_n_105,
      PATTERNBDETECT => NLW_mult_out2_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mult_out2_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => mult_out2_reg_n_106,
      PCOUT(46) => mult_out2_reg_n_107,
      PCOUT(45) => mult_out2_reg_n_108,
      PCOUT(44) => mult_out2_reg_n_109,
      PCOUT(43) => mult_out2_reg_n_110,
      PCOUT(42) => mult_out2_reg_n_111,
      PCOUT(41) => mult_out2_reg_n_112,
      PCOUT(40) => mult_out2_reg_n_113,
      PCOUT(39) => mult_out2_reg_n_114,
      PCOUT(38) => mult_out2_reg_n_115,
      PCOUT(37) => mult_out2_reg_n_116,
      PCOUT(36) => mult_out2_reg_n_117,
      PCOUT(35) => mult_out2_reg_n_118,
      PCOUT(34) => mult_out2_reg_n_119,
      PCOUT(33) => mult_out2_reg_n_120,
      PCOUT(32) => mult_out2_reg_n_121,
      PCOUT(31) => mult_out2_reg_n_122,
      PCOUT(30) => mult_out2_reg_n_123,
      PCOUT(29) => mult_out2_reg_n_124,
      PCOUT(28) => mult_out2_reg_n_125,
      PCOUT(27) => mult_out2_reg_n_126,
      PCOUT(26) => mult_out2_reg_n_127,
      PCOUT(25) => mult_out2_reg_n_128,
      PCOUT(24) => mult_out2_reg_n_129,
      PCOUT(23) => mult_out2_reg_n_130,
      PCOUT(22) => mult_out2_reg_n_131,
      PCOUT(21) => mult_out2_reg_n_132,
      PCOUT(20) => mult_out2_reg_n_133,
      PCOUT(19) => mult_out2_reg_n_134,
      PCOUT(18) => mult_out2_reg_n_135,
      PCOUT(17) => mult_out2_reg_n_136,
      PCOUT(16) => mult_out2_reg_n_137,
      PCOUT(15) => mult_out2_reg_n_138,
      PCOUT(14) => mult_out2_reg_n_139,
      PCOUT(13) => mult_out2_reg_n_140,
      PCOUT(12) => mult_out2_reg_n_141,
      PCOUT(11) => mult_out2_reg_n_142,
      PCOUT(10) => mult_out2_reg_n_143,
      PCOUT(9) => mult_out2_reg_n_144,
      PCOUT(8) => mult_out2_reg_n_145,
      PCOUT(7) => mult_out2_reg_n_146,
      PCOUT(6) => mult_out2_reg_n_147,
      PCOUT(5) => mult_out2_reg_n_148,
      PCOUT(4) => mult_out2_reg_n_149,
      PCOUT(3) => mult_out2_reg_n_150,
      PCOUT(2) => mult_out2_reg_n_151,
      PCOUT(1) => mult_out2_reg_n_152,
      PCOUT(0) => mult_out2_reg_n_153,
      RSTA => \^areset\,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => \^areset\,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => \^areset\,
      RSTP => \^areset\,
      UNDERFLOW => NLW_mult_out2_reg_UNDERFLOW_UNCONNECTED
    );
mult_out2_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => cl_sum(2),
      I1 => cl_sum(1),
      I2 => cl_sum(0),
      I3 => cl_sum(3),
      I4 => cl_sum(4),
      I5 => cl_sum(5),
      O => mult_out2_reg_i_1_n_0
    );
mult_out2_reg_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => cl_sum(4),
      I1 => cl_sum(1),
      I2 => cl_sum(0),
      I3 => cl_sum(2),
      I4 => cl_sum(3),
      I5 => cl_sum(5),
      O => mult_out2_reg_i_10_n_0
    );
mult_out2_reg_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => cl_sum(4),
      I1 => cl_sum(1),
      I2 => cl_sum(0),
      I3 => cl_sum(2),
      I4 => cl_sum(3),
      I5 => cl_sum(5),
      O => mult_out2_reg_i_11_n_0
    );
mult_out2_reg_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => cl_sum(4),
      I1 => cl_sum(0),
      I2 => cl_sum(1),
      I3 => cl_sum(2),
      I4 => cl_sum(3),
      I5 => cl_sum(5),
      O => mult_out2_reg_i_12_n_0
    );
mult_out2_reg_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => cl_sum(4),
      I1 => cl_sum(1),
      I2 => cl_sum(0),
      I3 => cl_sum(2),
      I4 => cl_sum(3),
      I5 => cl_sum(5),
      O => mult_out2_reg_i_13_n_0
    );
mult_out2_reg_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => cl_sum(4),
      I1 => cl_sum(2),
      I2 => cl_sum(1),
      I3 => cl_sum(0),
      I4 => cl_sum(3),
      I5 => cl_sum(5),
      O => mult_out2_reg_i_14_n_0
    );
mult_out2_reg_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => cl_sum(4),
      I1 => cl_sum(2),
      I2 => cl_sum(1),
      I3 => cl_sum(0),
      I4 => cl_sum(3),
      I5 => cl_sum(5),
      O => mult_out2_reg_i_15_n_0
    );
mult_out2_reg_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => cl_sum(4),
      I1 => cl_sum(2),
      I2 => cl_sum(0),
      I3 => cl_sum(1),
      I4 => cl_sum(3),
      I5 => cl_sum(5),
      O => mult_out2_reg_i_16_n_0
    );
mult_out2_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => cl_sum(4),
      I1 => cl_sum(3),
      I2 => cl_sum(1),
      I3 => cl_sum(0),
      I4 => cl_sum(2),
      I5 => cl_sum(5),
      O => mult_out2_reg_i_2_n_0
    );
mult_out2_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => cl_sum(4),
      I1 => cl_sum(3),
      I2 => cl_sum(1),
      I3 => cl_sum(0),
      I4 => cl_sum(2),
      I5 => cl_sum(5),
      O => mult_out2_reg_i_3_n_0
    );
mult_out2_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => cl_sum(4),
      I1 => cl_sum(3),
      I2 => cl_sum(0),
      I3 => cl_sum(1),
      I4 => cl_sum(2),
      I5 => cl_sum(5),
      O => mult_out2_reg_i_4_n_0
    );
mult_out2_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => cl_sum(4),
      I1 => cl_sum(3),
      I2 => cl_sum(1),
      I3 => cl_sum(0),
      I4 => cl_sum(2),
      I5 => cl_sum(5),
      O => mult_out2_reg_i_5_n_0
    );
mult_out2_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => cl_sum(4),
      I1 => cl_sum(3),
      I2 => cl_sum(2),
      I3 => cl_sum(1),
      I4 => cl_sum(0),
      I5 => cl_sum(5),
      O => mult_out2_reg_i_6_n_0
    );
mult_out2_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => cl_sum(4),
      I1 => cl_sum(3),
      I2 => cl_sum(2),
      I3 => cl_sum(1),
      I4 => cl_sum(0),
      I5 => cl_sum(5),
      O => mult_out2_reg_i_7_n_0
    );
mult_out2_reg_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => cl_sum(4),
      I1 => cl_sum(3),
      I2 => cl_sum(2),
      I3 => cl_sum(0),
      I4 => cl_sum(1),
      I5 => cl_sum(5),
      O => mult_out2_reg_i_8_n_0
    );
mult_out2_reg_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => cl_sum(4),
      I1 => cl_sum(3),
      I2 => cl_sum(2),
      I3 => cl_sum(1),
      I4 => cl_sum(0),
      I5 => cl_sum(5),
      O => mult_out2_reg_i_9_n_0
    );
\mult_out3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => mult_out2_reg_n_105,
      Q => \mult_out3_reg__0__0\(0),
      R => \^areset\
    );
\mult_out3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => mult_out2_reg_n_95,
      Q => \mult_out3_reg__0__0\(10),
      R => \^areset\
    );
\mult_out3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => mult_out2_reg_n_94,
      Q => \mult_out3_reg__0__0\(11),
      R => \^areset\
    );
\mult_out3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => mult_out2_reg_n_93,
      Q => \mult_out3_reg__0__0\(12),
      R => \^areset\
    );
\mult_out3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => mult_out2_reg_n_92,
      Q => \mult_out3_reg__0__0\(13),
      R => \^areset\
    );
\mult_out3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => mult_out2_reg_n_91,
      Q => \mult_out3_reg__0__0\(14),
      R => \^areset\
    );
\mult_out3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => mult_out2_reg_n_90,
      Q => \mult_out3_reg__0__0\(15),
      R => \^areset\
    );
\mult_out3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => mult_out2_reg_n_89,
      Q => \mult_out3_reg__0__0\(16),
      R => \^areset\
    );
\mult_out3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => mult_out2_reg_n_104,
      Q => \mult_out3_reg__0__0\(1),
      R => \^areset\
    );
\mult_out3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => mult_out2_reg_n_103,
      Q => \mult_out3_reg__0__0\(2),
      R => \^areset\
    );
\mult_out3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => mult_out2_reg_n_102,
      Q => \mult_out3_reg__0__0\(3),
      R => \^areset\
    );
\mult_out3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => mult_out2_reg_n_101,
      Q => \mult_out3_reg__0__0\(4),
      R => \^areset\
    );
\mult_out3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => mult_out2_reg_n_100,
      Q => \mult_out3_reg__0__0\(5),
      R => \^areset\
    );
\mult_out3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => mult_out2_reg_n_99,
      Q => \mult_out3_reg__0__0\(6),
      R => \^areset\
    );
\mult_out3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => mult_out2_reg_n_98,
      Q => \mult_out3_reg__0__0\(7),
      R => \^areset\
    );
\mult_out3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => mult_out2_reg_n_97,
      Q => \mult_out3_reg__0__0\(8),
      R => \^areset\
    );
\mult_out3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => mult_out2_reg_n_96,
      Q => \mult_out3_reg__0__0\(9),
      R => \^areset\
    );
\mult_out3_reg__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29) => mult_out2_reg_n_24,
      ACIN(28) => mult_out2_reg_n_25,
      ACIN(27) => mult_out2_reg_n_26,
      ACIN(26) => mult_out2_reg_n_27,
      ACIN(25) => mult_out2_reg_n_28,
      ACIN(24) => mult_out2_reg_n_29,
      ACIN(23) => mult_out2_reg_n_30,
      ACIN(22) => mult_out2_reg_n_31,
      ACIN(21) => mult_out2_reg_n_32,
      ACIN(20) => mult_out2_reg_n_33,
      ACIN(19) => mult_out2_reg_n_34,
      ACIN(18) => mult_out2_reg_n_35,
      ACIN(17) => mult_out2_reg_n_36,
      ACIN(16) => mult_out2_reg_n_37,
      ACIN(15) => mult_out2_reg_n_38,
      ACIN(14) => mult_out2_reg_n_39,
      ACIN(13) => mult_out2_reg_n_40,
      ACIN(12) => mult_out2_reg_n_41,
      ACIN(11) => mult_out2_reg_n_42,
      ACIN(10) => mult_out2_reg_n_43,
      ACIN(9) => mult_out2_reg_n_44,
      ACIN(8) => mult_out2_reg_n_45,
      ACIN(7) => mult_out2_reg_n_46,
      ACIN(6) => mult_out2_reg_n_47,
      ACIN(5) => mult_out2_reg_n_48,
      ACIN(4) => mult_out2_reg_n_49,
      ACIN(3) => mult_out2_reg_n_50,
      ACIN(2) => mult_out2_reg_n_51,
      ACIN(1) => mult_out2_reg_n_52,
      ACIN(0) => mult_out2_reg_n_53,
      ACOUT(29 downto 0) => \NLW_mult_out3_reg__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 15) => cl_sum_shift(33 downto 32),
      B(14) => \mult_out3_reg__0_i_3_n_0\,
      B(13) => \mult_out3_reg__0_i_4_n_0\,
      B(12) => \mult_out3_reg__0_i_5_n_0\,
      B(11) => \mult_out3_reg__0_i_6_n_0\,
      B(10) => \mult_out3_reg__0_i_7_n_0\,
      B(9) => \mult_out3_reg__0_i_8_n_0\,
      B(8) => \mult_out3_reg__0_i_9_n_0\,
      B(7) => \mult_out3_reg__0_i_10_n_0\,
      B(6) => \mult_out3_reg__0_i_11_n_0\,
      B(5) => \mult_out3_reg__0_i_12_n_0\,
      B(4) => \mult_out3_reg__0_i_13_n_0\,
      B(3) => \mult_out3_reg__0_i_14_n_0\,
      B(2) => \mult_out3_reg__0_i_15_n_0\,
      B(1) => \mult_out3_reg__0_i_16_n_0\,
      B(0) => \mult_out3_reg__0_i_17_n_0\,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mult_out3_reg__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mult_out3_reg__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mult_out3_reg__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '1',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => Q(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => Q(0),
      CEP => Q(0),
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mult_out3_reg__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_mult_out3_reg__0_OVERFLOW_UNCONNECTED\,
      P(47) => \mult_out3_reg__0_n_58\,
      P(46) => \mult_out3_reg__0_n_59\,
      P(45) => \mult_out3_reg__0_n_60\,
      P(44) => \mult_out3_reg__0_n_61\,
      P(43) => \mult_out3_reg__0_n_62\,
      P(42) => \mult_out3_reg__0_n_63\,
      P(41) => \mult_out3_reg__0_n_64\,
      P(40) => \mult_out3_reg__0_n_65\,
      P(39) => \mult_out3_reg__0_n_66\,
      P(38) => \mult_out3_reg__0_n_67\,
      P(37) => \mult_out3_reg__0_n_68\,
      P(36) => \mult_out3_reg__0_n_69\,
      P(35) => \mult_out3_reg__0_n_70\,
      P(34) => \mult_out3_reg__0_n_71\,
      P(33) => \mult_out3_reg__0_n_72\,
      P(32) => \mult_out3_reg__0_n_73\,
      P(31) => \mult_out3_reg__0_n_74\,
      P(30) => \mult_out3_reg__0_n_75\,
      P(29) => \mult_out3_reg__0_n_76\,
      P(28) => \mult_out3_reg__0_n_77\,
      P(27) => \mult_out3_reg__0_n_78\,
      P(26) => \mult_out3_reg__0_n_79\,
      P(25) => \mult_out3_reg__0_n_80\,
      P(24) => \mult_out3_reg__0_n_81\,
      P(23) => \mult_out3_reg__0_n_82\,
      P(22) => \mult_out3_reg__0_n_83\,
      P(21) => \mult_out3_reg__0_n_84\,
      P(20) => \mult_out3_reg__0_n_85\,
      P(19) => \mult_out3_reg__0_n_86\,
      P(18) => \mult_out3_reg__0_n_87\,
      P(17) => \mult_out3_reg__0_n_88\,
      P(16) => \mult_out3_reg__0_n_89\,
      P(15) => \mult_out3_reg__0_n_90\,
      P(14) => \mult_out3_reg__0_n_91\,
      P(13) => \mult_out3_reg__0_n_92\,
      P(12) => \mult_out3_reg__0_n_93\,
      P(11) => \mult_out3_reg__0_n_94\,
      P(10) => \mult_out3_reg__0_n_95\,
      P(9) => \mult_out3_reg__0_n_96\,
      P(8) => \mult_out3_reg__0_n_97\,
      P(7) => \mult_out3_reg__0_n_98\,
      P(6) => \mult_out3_reg__0_n_99\,
      P(5) => \mult_out3_reg__0_n_100\,
      P(4) => \mult_out3_reg__0_n_101\,
      P(3) => \mult_out3_reg__0_n_102\,
      P(2) => \mult_out3_reg__0_n_103\,
      P(1) => \mult_out3_reg__0_n_104\,
      P(0) => \mult_out3_reg__0__0\(17),
      PATTERNBDETECT => \NLW_mult_out3_reg__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mult_out3_reg__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => mult_out2_reg_n_106,
      PCIN(46) => mult_out2_reg_n_107,
      PCIN(45) => mult_out2_reg_n_108,
      PCIN(44) => mult_out2_reg_n_109,
      PCIN(43) => mult_out2_reg_n_110,
      PCIN(42) => mult_out2_reg_n_111,
      PCIN(41) => mult_out2_reg_n_112,
      PCIN(40) => mult_out2_reg_n_113,
      PCIN(39) => mult_out2_reg_n_114,
      PCIN(38) => mult_out2_reg_n_115,
      PCIN(37) => mult_out2_reg_n_116,
      PCIN(36) => mult_out2_reg_n_117,
      PCIN(35) => mult_out2_reg_n_118,
      PCIN(34) => mult_out2_reg_n_119,
      PCIN(33) => mult_out2_reg_n_120,
      PCIN(32) => mult_out2_reg_n_121,
      PCIN(31) => mult_out2_reg_n_122,
      PCIN(30) => mult_out2_reg_n_123,
      PCIN(29) => mult_out2_reg_n_124,
      PCIN(28) => mult_out2_reg_n_125,
      PCIN(27) => mult_out2_reg_n_126,
      PCIN(26) => mult_out2_reg_n_127,
      PCIN(25) => mult_out2_reg_n_128,
      PCIN(24) => mult_out2_reg_n_129,
      PCIN(23) => mult_out2_reg_n_130,
      PCIN(22) => mult_out2_reg_n_131,
      PCIN(21) => mult_out2_reg_n_132,
      PCIN(20) => mult_out2_reg_n_133,
      PCIN(19) => mult_out2_reg_n_134,
      PCIN(18) => mult_out2_reg_n_135,
      PCIN(17) => mult_out2_reg_n_136,
      PCIN(16) => mult_out2_reg_n_137,
      PCIN(15) => mult_out2_reg_n_138,
      PCIN(14) => mult_out2_reg_n_139,
      PCIN(13) => mult_out2_reg_n_140,
      PCIN(12) => mult_out2_reg_n_141,
      PCIN(11) => mult_out2_reg_n_142,
      PCIN(10) => mult_out2_reg_n_143,
      PCIN(9) => mult_out2_reg_n_144,
      PCIN(8) => mult_out2_reg_n_145,
      PCIN(7) => mult_out2_reg_n_146,
      PCIN(6) => mult_out2_reg_n_147,
      PCIN(5) => mult_out2_reg_n_148,
      PCIN(4) => mult_out2_reg_n_149,
      PCIN(3) => mult_out2_reg_n_150,
      PCIN(2) => mult_out2_reg_n_151,
      PCIN(1) => mult_out2_reg_n_152,
      PCIN(0) => mult_out2_reg_n_153,
      PCOUT(47 downto 0) => \NLW_mult_out3_reg__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => \^areset\,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => \^areset\,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => \^areset\,
      RSTP => \^areset\,
      UNDERFLOW => \NLW_mult_out3_reg__0_UNDERFLOW_UNCONNECTED\
    );
\mult_out3_reg__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => cl_sum(5),
      I1 => cl_sum(4),
      I2 => cl_sum(1),
      I3 => cl_sum(2),
      I4 => cl_sum(0),
      I5 => cl_sum(3),
      O => cl_sum_shift(33)
    );
\mult_out3_reg__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => cl_sum(3),
      I1 => cl_sum(2),
      I2 => cl_sum(1),
      I3 => cl_sum(0),
      I4 => cl_sum(4),
      I5 => cl_sum(5),
      O => \mult_out3_reg__0_i_10_n_0\
    );
\mult_out3_reg__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => cl_sum(1),
      I1 => cl_sum(0),
      I2 => cl_sum(2),
      I3 => cl_sum(3),
      I4 => cl_sum(4),
      I5 => cl_sum(5),
      O => \mult_out3_reg__0_i_11_n_0\
    );
\mult_out3_reg__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => cl_sum(1),
      I1 => cl_sum(0),
      I2 => cl_sum(2),
      I3 => cl_sum(3),
      I4 => cl_sum(4),
      I5 => cl_sum(5),
      O => \mult_out3_reg__0_i_12_n_0\
    );
\mult_out3_reg__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => cl_sum(0),
      I1 => cl_sum(1),
      I2 => cl_sum(2),
      I3 => cl_sum(3),
      I4 => cl_sum(4),
      I5 => cl_sum(5),
      O => \mult_out3_reg__0_i_13_n_0\
    );
\mult_out3_reg__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => cl_sum(1),
      I1 => cl_sum(0),
      I2 => cl_sum(2),
      I3 => cl_sum(3),
      I4 => cl_sum(4),
      I5 => cl_sum(5),
      O => \mult_out3_reg__0_i_14_n_0\
    );
\mult_out3_reg__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => cl_sum(2),
      I1 => cl_sum(1),
      I2 => cl_sum(0),
      I3 => cl_sum(3),
      I4 => cl_sum(4),
      I5 => cl_sum(5),
      O => \mult_out3_reg__0_i_15_n_0\
    );
\mult_out3_reg__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => cl_sum(2),
      I1 => cl_sum(1),
      I2 => cl_sum(0),
      I3 => cl_sum(3),
      I4 => cl_sum(4),
      I5 => cl_sum(5),
      O => \mult_out3_reg__0_i_16_n_0\
    );
\mult_out3_reg__0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => cl_sum(2),
      I1 => cl_sum(0),
      I2 => cl_sum(1),
      I3 => cl_sum(3),
      I4 => cl_sum(4),
      I5 => cl_sum(5),
      O => \mult_out3_reg__0_i_17_n_0\
    );
\mult_out3_reg__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => cl_sum(5),
      I1 => cl_sum(4),
      I2 => cl_sum(2),
      I3 => cl_sum(1),
      I4 => cl_sum(0),
      I5 => cl_sum(3),
      O => cl_sum_shift(32)
    );
\mult_out3_reg__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => cl_sum(3),
      I1 => cl_sum(1),
      I2 => cl_sum(0),
      I3 => cl_sum(2),
      I4 => cl_sum(4),
      I5 => cl_sum(5),
      O => \mult_out3_reg__0_i_3_n_0\
    );
\mult_out3_reg__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => cl_sum(3),
      I1 => cl_sum(1),
      I2 => cl_sum(0),
      I3 => cl_sum(2),
      I4 => cl_sum(4),
      I5 => cl_sum(5),
      O => \mult_out3_reg__0_i_4_n_0\
    );
\mult_out3_reg__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => cl_sum(3),
      I1 => cl_sum(0),
      I2 => cl_sum(1),
      I3 => cl_sum(2),
      I4 => cl_sum(4),
      I5 => cl_sum(5),
      O => \mult_out3_reg__0_i_5_n_0\
    );
\mult_out3_reg__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => cl_sum(3),
      I1 => cl_sum(1),
      I2 => cl_sum(0),
      I3 => cl_sum(2),
      I4 => cl_sum(4),
      I5 => cl_sum(5),
      O => \mult_out3_reg__0_i_6_n_0\
    );
\mult_out3_reg__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => cl_sum(3),
      I1 => cl_sum(2),
      I2 => cl_sum(1),
      I3 => cl_sum(0),
      I4 => cl_sum(4),
      I5 => cl_sum(5),
      O => \mult_out3_reg__0_i_7_n_0\
    );
\mult_out3_reg__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => cl_sum(3),
      I1 => cl_sum(2),
      I2 => cl_sum(1),
      I3 => cl_sum(0),
      I4 => cl_sum(4),
      I5 => cl_sum(5),
      O => \mult_out3_reg__0_i_8_n_0\
    );
\mult_out3_reg__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => cl_sum(3),
      I1 => cl_sum(2),
      I2 => cl_sum(0),
      I3 => cl_sum(1),
      I4 => cl_sum(4),
      I5 => cl_sum(5),
      O => \mult_out3_reg__0_i_9_n_0\
    );
out_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010000"
    )
        port map (
      I0 => counter32(5),
      I1 => counter32(4),
      I2 => out_valid_i_2_n_0,
      I3 => out_valid_i_3_n_0,
      I4 => out_valid_i_4_n_0,
      I5 => \^d\(1),
      O => out_valid_i_1_n_0
    );
out_valid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => counter32(3),
      I1 => counter32(2),
      O => out_valid_i_2_n_0
    );
out_valid_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter32(1),
      I1 => counter32(0),
      O => out_valid_i_3_n_0
    );
out_valid_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000042"
    )
        port map (
      I0 => counter32(0),
      I1 => counter32(2),
      I2 => counter32(3),
      I3 => counter32(1),
      I4 => counter32(4),
      I5 => counter32(5),
      O => out_valid_i_4_n_0
    );
out_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => out_valid_i_1_n_0,
      Q => \^d\(1),
      R => \^areset\
    );
\upper_reg1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0FBF8"
    )
        port map (
      I0 => middle_reg1(0),
      I1 => p_0_in_0(0),
      I2 => \mult_out3_reg__0_n_104\,
      I3 => \upper_reg1_reg_n_0_[0]\,
      I4 => p_0_in_0(1),
      O => \upper_reg1[0]_i_1_n_0\
    );
\upper_reg1[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0FBF8"
    )
        port map (
      I0 => middle_reg1(10),
      I1 => p_0_in_0(0),
      I2 => \mult_out3_reg__0_n_94\,
      I3 => \upper_reg1_reg_n_0_[10]\,
      I4 => p_0_in_0(1),
      O => \upper_reg1[10]_i_1_n_0\
    );
\upper_reg1[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0FBF8"
    )
        port map (
      I0 => middle_reg1(11),
      I1 => p_0_in_0(0),
      I2 => \mult_out3_reg__0_n_93\,
      I3 => \upper_reg1_reg_n_0_[11]\,
      I4 => p_0_in_0(1),
      O => \upper_reg1[11]_i_1_n_0\
    );
\upper_reg1[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0FBF8"
    )
        port map (
      I0 => middle_reg1(12),
      I1 => p_0_in_0(0),
      I2 => \mult_out3_reg__0_n_92\,
      I3 => \upper_reg1_reg_n_0_[12]\,
      I4 => p_0_in_0(1),
      O => \upper_reg1[12]_i_1_n_0\
    );
\upper_reg1[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0FBF8"
    )
        port map (
      I0 => middle_reg1(13),
      I1 => p_0_in_0(0),
      I2 => \mult_out3_reg__0_n_91\,
      I3 => \upper_reg1_reg_n_0_[13]\,
      I4 => p_0_in_0(1),
      O => \upper_reg1[13]_i_1_n_0\
    );
\upper_reg1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFAAFFCFFFC0"
    )
        port map (
      I0 => \lower_reg1_reg_n_0_[14]\,
      I1 => middle_reg1(14),
      I2 => p_0_in_0(0),
      I3 => \mult_out3_reg__0_n_90\,
      I4 => \upper_reg1_reg_n_0_[14]\,
      I5 => p_0_in_0(1),
      O => \upper_reg1[14]_i_1_n_0\
    );
\upper_reg1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFAAFFCFFFC0"
    )
        port map (
      I0 => \lower_reg1_reg_n_0_[15]\,
      I1 => middle_reg1(15),
      I2 => p_0_in_0(0),
      I3 => \mult_out3_reg__0_n_89\,
      I4 => \upper_reg1_reg_n_0_[15]\,
      I5 => p_0_in_0(1),
      O => \upper_reg1[15]_i_1_n_0\
    );
\upper_reg1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0FBF8"
    )
        port map (
      I0 => middle_reg1(1),
      I1 => p_0_in_0(0),
      I2 => \mult_out3_reg__0_n_103\,
      I3 => \upper_reg1_reg_n_0_[1]\,
      I4 => p_0_in_0(1),
      O => \upper_reg1[1]_i_1_n_0\
    );
\upper_reg1[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0FBF8"
    )
        port map (
      I0 => middle_reg1(2),
      I1 => p_0_in_0(0),
      I2 => \mult_out3_reg__0_n_102\,
      I3 => \upper_reg1_reg_n_0_[2]\,
      I4 => p_0_in_0(1),
      O => \upper_reg1[2]_i_1_n_0\
    );
\upper_reg1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0FBF8"
    )
        port map (
      I0 => middle_reg1(3),
      I1 => p_0_in_0(0),
      I2 => \mult_out3_reg__0_n_101\,
      I3 => \upper_reg1_reg_n_0_[3]\,
      I4 => p_0_in_0(1),
      O => \upper_reg1[3]_i_1_n_0\
    );
\upper_reg1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0FBF8"
    )
        port map (
      I0 => middle_reg1(4),
      I1 => p_0_in_0(0),
      I2 => \mult_out3_reg__0_n_100\,
      I3 => \upper_reg1_reg_n_0_[4]\,
      I4 => p_0_in_0(1),
      O => \upper_reg1[4]_i_1_n_0\
    );
\upper_reg1[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0FBF8"
    )
        port map (
      I0 => middle_reg1(5),
      I1 => p_0_in_0(0),
      I2 => \mult_out3_reg__0_n_99\,
      I3 => \upper_reg1_reg_n_0_[5]\,
      I4 => p_0_in_0(1),
      O => \upper_reg1[5]_i_1_n_0\
    );
\upper_reg1[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0FBF8"
    )
        port map (
      I0 => middle_reg1(6),
      I1 => p_0_in_0(0),
      I2 => \mult_out3_reg__0_n_98\,
      I3 => \upper_reg1_reg_n_0_[6]\,
      I4 => p_0_in_0(1),
      O => \upper_reg1[6]_i_1_n_0\
    );
\upper_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0FBF8"
    )
        port map (
      I0 => middle_reg1(7),
      I1 => p_0_in_0(0),
      I2 => \mult_out3_reg__0_n_97\,
      I3 => \upper_reg1_reg_n_0_[7]\,
      I4 => p_0_in_0(1),
      O => \upper_reg1[7]_i_1_n_0\
    );
\upper_reg1[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0FBF8"
    )
        port map (
      I0 => middle_reg1(8),
      I1 => p_0_in_0(0),
      I2 => \mult_out3_reg__0_n_96\,
      I3 => \upper_reg1_reg_n_0_[8]\,
      I4 => p_0_in_0(1),
      O => \upper_reg1[8]_i_1_n_0\
    );
\upper_reg1[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0FBF8"
    )
        port map (
      I0 => middle_reg1(9),
      I1 => p_0_in_0(0),
      I2 => \mult_out3_reg__0_n_95\,
      I3 => \upper_reg1_reg_n_0_[9]\,
      I4 => p_0_in_0(1),
      O => \upper_reg1[9]_i_1_n_0\
    );
\upper_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \upper_reg1[0]_i_1_n_0\,
      Q => \upper_reg1_reg_n_0_[0]\,
      R => \^areset\
    );
\upper_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \upper_reg1[10]_i_1_n_0\,
      Q => \upper_reg1_reg_n_0_[10]\,
      R => \^areset\
    );
\upper_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \upper_reg1[11]_i_1_n_0\,
      Q => \upper_reg1_reg_n_0_[11]\,
      R => \^areset\
    );
\upper_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \upper_reg1[12]_i_1_n_0\,
      Q => \upper_reg1_reg_n_0_[12]\,
      R => \^areset\
    );
\upper_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \upper_reg1[13]_i_1_n_0\,
      Q => \upper_reg1_reg_n_0_[13]\,
      R => \^areset\
    );
\upper_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \upper_reg1[14]_i_1_n_0\,
      Q => \upper_reg1_reg_n_0_[14]\,
      R => \^areset\
    );
\upper_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \upper_reg1[15]_i_1_n_0\,
      Q => \upper_reg1_reg_n_0_[15]\,
      R => \^areset\
    );
\upper_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \upper_reg1[1]_i_1_n_0\,
      Q => \upper_reg1_reg_n_0_[1]\,
      R => \^areset\
    );
\upper_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \upper_reg1[2]_i_1_n_0\,
      Q => \upper_reg1_reg_n_0_[2]\,
      R => \^areset\
    );
\upper_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \upper_reg1[3]_i_1_n_0\,
      Q => \upper_reg1_reg_n_0_[3]\,
      R => \^areset\
    );
\upper_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \upper_reg1[4]_i_1_n_0\,
      Q => \upper_reg1_reg_n_0_[4]\,
      R => \^areset\
    );
\upper_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \upper_reg1[5]_i_1_n_0\,
      Q => \upper_reg1_reg_n_0_[5]\,
      R => \^areset\
    );
\upper_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \upper_reg1[6]_i_1_n_0\,
      Q => \upper_reg1_reg_n_0_[6]\,
      R => \^areset\
    );
\upper_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \upper_reg1[7]_i_1_n_0\,
      Q => \upper_reg1_reg_n_0_[7]\,
      R => \^areset\
    );
\upper_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \upper_reg1[8]_i_1_n_0\,
      Q => \upper_reg1_reg_n_0_[8]\,
      R => \^areset\
    );
\upper_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => upper_reg1,
      D => \upper_reg1[9]_i_1_n_0\,
      Q => \upper_reg1_reg_n_0_[9]\,
      R => \^areset\
    );
\upper_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \upper_reg1_reg_n_0_[0]\,
      Q => upper_reg2(0),
      R => \^areset\
    );
\upper_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \upper_reg1_reg_n_0_[10]\,
      Q => upper_reg2(10),
      R => \^areset\
    );
\upper_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \upper_reg1_reg_n_0_[11]\,
      Q => upper_reg2(11),
      R => \^areset\
    );
\upper_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \upper_reg1_reg_n_0_[12]\,
      Q => upper_reg2(12),
      R => \^areset\
    );
\upper_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \upper_reg1_reg_n_0_[13]\,
      Q => upper_reg2(13),
      R => \^areset\
    );
\upper_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \upper_reg1_reg_n_0_[14]\,
      Q => upper_reg2(14),
      R => \^areset\
    );
\upper_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \upper_reg1_reg_n_0_[15]\,
      Q => upper_reg2(15),
      R => \^areset\
    );
\upper_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \upper_reg1_reg_n_0_[1]\,
      Q => upper_reg2(1),
      R => \^areset\
    );
\upper_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \upper_reg1_reg_n_0_[2]\,
      Q => upper_reg2(2),
      R => \^areset\
    );
\upper_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \upper_reg1_reg_n_0_[3]\,
      Q => upper_reg2(3),
      R => \^areset\
    );
\upper_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \upper_reg1_reg_n_0_[4]\,
      Q => upper_reg2(4),
      R => \^areset\
    );
\upper_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \upper_reg1_reg_n_0_[5]\,
      Q => upper_reg2(5),
      R => \^areset\
    );
\upper_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \upper_reg1_reg_n_0_[6]\,
      Q => upper_reg2(6),
      R => \^areset\
    );
\upper_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \upper_reg1_reg_n_0_[7]\,
      Q => upper_reg2(7),
      R => \^areset\
    );
\upper_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \upper_reg1_reg_n_0_[8]\,
      Q => upper_reg2(8),
      R => \^areset\
    );
\upper_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(0),
      D => \upper_reg1_reg_n_0_[9]\,
      Q => upper_reg2(9),
      R => \^areset\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_huffman_AXI_Lite_myip_0_0_huffman_AXI_Lite_myip_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_huffman_AXI_Lite_myip_0_0_huffman_AXI_Lite_myip_v1_0_S00_AXI : entity is "huffman_AXI_Lite_myip_v1_0_S00_AXI";
end design_1_huffman_AXI_Lite_myip_0_0_huffman_AXI_Lite_myip_v1_0_S00_AXI;

architecture STRUCTURE of design_1_huffman_AXI_Lite_myip_0_0_huffman_AXI_Lite_myip_v1_0_S00_AXI is
  signal ARESET : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_out10 : STD_LOGIC;
  signal data_out1_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \in\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal in_ready : STD_LOGIC;
  signal out_valid : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1_reg_rep_i_10_n_0 : STD_LOGIC;
  signal slv_reg1_reg_rep_i_1_n_0 : STD_LOGIC;
  signal slv_reg1_reg_rep_i_3_n_0 : STD_LOGIC;
  signal slv_reg1_reg_rep_i_4_n_0 : STD_LOGIC;
  signal slv_reg1_reg_rep_i_5_n_0 : STD_LOGIC;
  signal slv_reg1_reg_rep_i_6_n_0 : STD_LOGIC;
  signal slv_reg1_reg_rep_i_7_n_0 : STD_LOGIC;
  signal slv_reg1_reg_rep_i_8_n_0 : STD_LOGIC;
  signal slv_reg1_reg_rep_i_9_n_0 : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slv_reg3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  signal NLW_slv_reg1_reg_rep_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 5 );
  signal NLW_slv_reg1_reg_rep_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_slv_reg1_reg_rep_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_slv_reg1_reg_rep_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_slv_reg1_reg_rep__0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_slv_reg1_reg_rep__0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \NLW_slv_reg1_reg_rep__0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair19";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of slv_reg1_reg_rep : label is "p0_d5";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of slv_reg1_reg_rep : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of slv_reg1_reg_rep : label is 1280;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of slv_reg1_reg_rep : label is "inst/huffman_AXI_Lite_myip_v1_0_S00_AXI_inst/slv_reg1";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of slv_reg1_reg_rep : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of slv_reg1_reg_rep : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of slv_reg1_reg_rep : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of slv_reg1_reg_rep : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \slv_reg1_reg_rep__0\ : label is "p1_d16";
  attribute METHODOLOGY_DRC_VIOS of \slv_reg1_reg_rep__0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \slv_reg1_reg_rep__0\ : label is 4352;
  attribute RTL_RAM_NAME of \slv_reg1_reg_rep__0\ : label is "inst/huffman_AXI_Lite_myip_v1_0_S00_AXI_inst/slv_reg1";
  attribute bram_addr_begin of \slv_reg1_reg_rep__0\ : label is 0;
  attribute bram_addr_end of \slv_reg1_reg_rep__0\ : label is 1023;
  attribute bram_slice_begin of \slv_reg1_reg_rep__0\ : label is 0;
  attribute bram_slice_end of \slv_reg1_reg_rep__0\ : label is 16;
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => ARESET
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => ARESET
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => ARESET
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => ARESET
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => ARESET
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => ARESET
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => ARESET
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => ARESET
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => slv_reg1(0),
      I2 => axi_araddr(2),
      I3 => slv_reg2(0),
      I4 => axi_araddr(3),
      I5 => slv_reg0(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => slv_reg1(10),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[10]\,
      I4 => axi_araddr(3),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => slv_reg1(11),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[11]\,
      I4 => axi_araddr(3),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => slv_reg1(12),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[12]\,
      I4 => axi_araddr(3),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => slv_reg1(13),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[13]\,
      I4 => axi_araddr(3),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => slv_reg1(14),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[14]\,
      I4 => axi_araddr(3),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => slv_reg1(15),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[15]\,
      I4 => axi_araddr(3),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => axi_araddr(2),
      I2 => \slv_reg0_reg_n_0_[16]\,
      I3 => axi_araddr(3),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => axi_araddr(2),
      I2 => \slv_reg0_reg_n_0_[17]\,
      I3 => axi_araddr(3),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => axi_araddr(2),
      I2 => \slv_reg0_reg_n_0_[18]\,
      I3 => axi_araddr(3),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => axi_araddr(2),
      I2 => \slv_reg0_reg_n_0_[19]\,
      I3 => axi_araddr(3),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => slv_reg1(1),
      I2 => axi_araddr(2),
      I3 => slv_reg2(1),
      I4 => axi_araddr(3),
      I5 => slv_reg0(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => axi_araddr(2),
      I2 => \slv_reg0_reg_n_0_[20]\,
      I3 => axi_araddr(3),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => axi_araddr(2),
      I2 => \slv_reg0_reg_n_0_[21]\,
      I3 => axi_araddr(3),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => axi_araddr(2),
      I2 => \slv_reg0_reg_n_0_[22]\,
      I3 => axi_araddr(3),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => axi_araddr(2),
      I2 => \slv_reg0_reg_n_0_[23]\,
      I3 => axi_araddr(3),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => axi_araddr(2),
      I2 => \slv_reg0_reg_n_0_[24]\,
      I3 => axi_araddr(3),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => axi_araddr(2),
      I2 => \slv_reg0_reg_n_0_[25]\,
      I3 => axi_araddr(3),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => axi_araddr(2),
      I2 => \slv_reg0_reg_n_0_[26]\,
      I3 => axi_araddr(3),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => axi_araddr(2),
      I2 => \slv_reg0_reg_n_0_[27]\,
      I3 => axi_araddr(3),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => axi_araddr(2),
      I2 => \slv_reg0_reg_n_0_[28]\,
      I3 => axi_araddr(3),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => axi_araddr(2),
      I2 => \slv_reg0_reg_n_0_[29]\,
      I3 => axi_araddr(3),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => slv_reg1(2),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[2]\,
      I4 => axi_araddr(3),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => axi_araddr(2),
      I2 => \slv_reg0_reg_n_0_[30]\,
      I3 => axi_araddr(3),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => axi_araddr(2),
      I2 => \slv_reg0_reg_n_0_[31]\,
      I3 => axi_araddr(3),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => slv_reg1(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[3]\,
      I4 => axi_araddr(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => slv_reg1(4),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[4]\,
      I4 => axi_araddr(3),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => slv_reg1(5),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[5]\,
      I4 => axi_araddr(3),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => slv_reg1(6),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[6]\,
      I4 => axi_araddr(3),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => slv_reg1(7),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[7]\,
      I4 => axi_araddr(3),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => slv_reg1(8),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[8]\,
      I4 => axi_araddr(3),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => slv_reg1(9),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[9]\,
      I4 => axi_araddr(3),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => ARESET
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => ARESET
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => ARESET
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => ARESET
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => ARESET
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => ARESET
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => ARESET
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => ARESET
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => ARESET
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => ARESET
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => ARESET
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => ARESET
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => ARESET
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => ARESET
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => ARESET
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => ARESET
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => ARESET
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => ARESET
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => ARESET
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => ARESET
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => ARESET
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => ARESET
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => ARESET
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => ARESET
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => ARESET
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => ARESET
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => ARESET
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => ARESET
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => ARESET
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => ARESET
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => ARESET
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => ARESET
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => ARESET
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => ARESET
    );
huffman_encoder_inst: entity work.design_1_huffman_AXI_Lite_myip_0_0_huffman_encoder
     port map (
      ARESET => ARESET,
      D(1) => out_valid,
      D(0) => in_ready,
      DOADO(4 downto 0) => \in\(4 downto 0),
      Q(1 downto 0) => slv_reg0(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \slv_reg1_reg_rep__0\(16 downto 0) => data_out1_reg(16 downto 0),
      \slv_reg3_reg[15]\(15 downto 0) => data_out(15 downto 0)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => ARESET
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => ARESET
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => ARESET
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => ARESET
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => ARESET
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => ARESET
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => ARESET
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => ARESET
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => ARESET
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => ARESET
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => ARESET
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => ARESET
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => ARESET
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => ARESET
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => ARESET
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => ARESET
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => ARESET
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => ARESET
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => ARESET
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => ARESET
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => ARESET
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => ARESET
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => ARESET
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => ARESET
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => ARESET
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => ARESET
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => ARESET
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => ARESET
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => ARESET
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => ARESET
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => ARESET
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => ARESET
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => ARESET
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => ARESET
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => ARESET
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => ARESET
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => ARESET
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => ARESET
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => ARESET
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => ARESET
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => ARESET
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => ARESET
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => ARESET
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => ARESET
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => ARESET
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => ARESET
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => ARESET
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => ARESET
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => ARESET
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => ARESET
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => ARESET
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => ARESET
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => ARESET
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => ARESET
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => ARESET
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => ARESET
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => ARESET
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => ARESET
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => ARESET
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => ARESET
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => ARESET
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => ARESET
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => ARESET
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => ARESET
    );
slv_reg1_reg_rep: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0006000600060006000600050005000500050005000500050005000500050005",
      INIT_01 => X"0006000600060006000600060006000600060006000600060006000600060006",
      INIT_02 => X"0007000700070007000700070007000700070007000700070007000700070007",
      INIT_03 => X"0008000800080008000800080008000800080008000800070007000700070007",
      INIT_04 => X"0009000900090009000900090008000800080008000800080008000800080008",
      INIT_05 => X"000A000900090009000900090009000900090009000900090009000900090009",
      INIT_06 => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_07 => X"000B000B000B000B000B000B000B000B000B000B000B000B000A000A000A000A",
      INIT_08 => X"000C000C000C000C000C000C000B000B000B000B000B000B000B000B000B000B",
      INIT_09 => X"000D000D000C000C000C000C000C000C000C000C000C000C000C000C000C000C",
      INIT_0A => X"000D000D000D000D000D000D000D000D000D000D000D000D000D000D000D000D",
      INIT_0B => X"000E000E000E000E000E000E000E000E000E000E000E000E000E000D000D000D",
      INIT_0C => X"000F000F000F000F000F000F000F000F000E000E000E000E000E000E000E000E",
      INIT_0D => X"0010001000100010000F000F000F000F000F000F000F000F000F000F000F000F",
      INIT_0E => X"0010001000100010001000100010001000100010001000100010001000100010",
      INIT_0F => X"0011001100110011001100110011001100110011001100110011001100110011",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11) => slv_reg1_reg_rep_i_3_n_0,
      ADDRARDADDR(10) => slv_reg1_reg_rep_i_4_n_0,
      ADDRARDADDR(9) => slv_reg1_reg_rep_i_5_n_0,
      ADDRARDADDR(8) => slv_reg1_reg_rep_i_6_n_0,
      ADDRARDADDR(7) => slv_reg1_reg_rep_i_7_n_0,
      ADDRARDADDR(6) => slv_reg1_reg_rep_i_8_n_0,
      ADDRARDADDR(5) => slv_reg1_reg_rep_i_9_n_0,
      ADDRARDADDR(4) => slv_reg1_reg_rep_i_10_n_0,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"0000000000011111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 5) => NLW_slv_reg1_reg_rep_DOADO_UNCONNECTED(15 downto 5),
      DOADO(4 downto 0) => \in\(4 downto 0),
      DOBDO(15 downto 0) => NLW_slv_reg1_reg_rep_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_slv_reg1_reg_rep_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_slv_reg1_reg_rep_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => slv_reg1_reg_rep_i_1_n_0,
      ENBWREN => '0',
      REGCEAREGCE => data_out10,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => ARESET,
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\slv_reg1_reg_rep__0\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"5000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"00080006000400020000001E001C001A00180016001400120010000E000C000A",
      INIT_01 => X"003E003A00360032002E002A00260022001E001A001600120010000E000C000A",
      INIT_02 => X"0056004E0046003E0036002E00260022001E001A00160012000E000A00060002",
      INIT_03 => X"005E004E0046003E0036002E0026001E0016000E0006007E0076006E0066005E",
      INIT_04 => X"005E004E003E002E001E000E00FE00EE00DE00CE00BE00AE009E008E007E006E",
      INIT_05 => X"001E01FE01DE01BE019E017E015E013E011E00FE00DE00BE009E008E007E006E",
      INIT_06 => X"02FE02BE027E023E01FE01BE017E013E011E00FE00DE00BE009E007E005E003E",
      INIT_07 => X"037E02FE027E023E01FE01BE017E013E00FE00BE007E003E03FE03BE037E033E",
      INIT_08 => X"02FF027F01FF017F00FF007F07FF077F06FF067F05FF057F04FF047F03FF037F",
      INIT_09 => X"01FC00FC0FFC0EFD0DFD0CFD0BFD0AFD09FD08FD07FD05FF04FF047F03FF037F",
      INIT_0A => X"19F917F915F915F813F811F80FF80BFC09FC08FC07FC06FC05FC04FC03FC02FC",
      INIT_0B => X"1FF317FB13FB13FA11FA0FFA0DFA0BFA09FA07FA05FA03FB01FB1FFB1DF91BF9",
      INIT_0C => X"1BF71BF617F613F60FF60BF707F503F53FF53FF43BF037F033F02FF127F323F3",
      INIT_0D => X"17ED17EC0FE807E977E377E26FE267E35FE15FE04FE447E43FE42FF523F71FF7",
      INIT_0E => X"DFC7DFC6CFC5CFC49FCB9FCA8FCA7FCB5FE95FE847EC3FED2FEF2FEE27EE1FEF",
      INIT_0F => X"1F971F96FF95FF948FDB8FDA7FD97FD84FDF4FDE3FDD3FDC1FD31FD20FD10FD0",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11) => slv_reg1_reg_rep_i_3_n_0,
      ADDRARDADDR(10) => slv_reg1_reg_rep_i_4_n_0,
      ADDRARDADDR(9) => slv_reg1_reg_rep_i_5_n_0,
      ADDRARDADDR(8) => slv_reg1_reg_rep_i_6_n_0,
      ADDRARDADDR(7) => slv_reg1_reg_rep_i_7_n_0,
      ADDRARDADDR(6) => slv_reg1_reg_rep_i_8_n_0,
      ADDRARDADDR(5) => slv_reg1_reg_rep_i_9_n_0,
      ADDRARDADDR(4) => slv_reg1_reg_rep_i_10_n_0,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"1111111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"01",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => data_out1_reg(15 downto 0),
      DOBDO(15 downto 0) => \NLW_slv_reg1_reg_rep__0_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1) => \NLW_slv_reg1_reg_rep__0_DOPADOP_UNCONNECTED\(1),
      DOPADOP(0) => data_out1_reg(16),
      DOPBDOP(1 downto 0) => \NLW_slv_reg1_reg_rep__0_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => slv_reg1_reg_rep_i_1_n_0,
      ENBWREN => '0',
      REGCEAREGCE => data_out10,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => ARESET,
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
slv_reg1_reg_rep_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4000FFFF"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => s00_axi_wstrb(0),
      I3 => \slv_reg_wren__0\,
      I4 => s00_axi_aresetn,
      O => slv_reg1_reg_rep_i_1_n_0
    );
slv_reg1_reg_rep_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => s00_axi_aresetn,
      O => slv_reg1_reg_rep_i_10_n_0
    );
slv_reg1_reg_rep_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => slv_reg0(1),
      I1 => slv_reg0(0),
      O => data_out10
    );
slv_reg1_reg_rep_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wdata(7),
      I1 => s00_axi_aresetn,
      O => slv_reg1_reg_rep_i_3_n_0
    );
slv_reg1_reg_rep_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wdata(6),
      I1 => s00_axi_aresetn,
      O => slv_reg1_reg_rep_i_4_n_0
    );
slv_reg1_reg_rep_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wdata(5),
      I1 => s00_axi_aresetn,
      O => slv_reg1_reg_rep_i_5_n_0
    );
slv_reg1_reg_rep_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wdata(4),
      I1 => s00_axi_aresetn,
      O => slv_reg1_reg_rep_i_6_n_0
    );
slv_reg1_reg_rep_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wdata(3),
      I1 => s00_axi_aresetn,
      O => slv_reg1_reg_rep_i_7_n_0
    );
slv_reg1_reg_rep_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wdata(2),
      I1 => s00_axi_aresetn,
      O => slv_reg1_reg_rep_i_8_n_0
    );
slv_reg1_reg_rep_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => s00_axi_aresetn,
      O => slv_reg1_reg_rep_i_9_n_0
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => in_ready,
      Q => slv_reg2(0),
      R => '0'
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => out_valid,
      Q => slv_reg2(1),
      R => '0'
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_out(0),
      Q => slv_reg3(0),
      R => '0'
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_out(10),
      Q => slv_reg3(10),
      R => '0'
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_out(11),
      Q => slv_reg3(11),
      R => '0'
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_out(12),
      Q => slv_reg3(12),
      R => '0'
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_out(13),
      Q => slv_reg3(13),
      R => '0'
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_out(14),
      Q => slv_reg3(14),
      R => '0'
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_out(15),
      Q => slv_reg3(15),
      R => '0'
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_out(1),
      Q => slv_reg3(1),
      R => '0'
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_out(2),
      Q => slv_reg3(2),
      R => '0'
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_out(3),
      Q => slv_reg3(3),
      R => '0'
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_out(4),
      Q => slv_reg3(4),
      R => '0'
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_out(5),
      Q => slv_reg3(5),
      R => '0'
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_out(6),
      Q => slv_reg3(6),
      R => '0'
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_out(7),
      Q => slv_reg3(7),
      R => '0'
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_out(8),
      Q => slv_reg3(8),
      R => '0'
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_out(9),
      Q => slv_reg3(9),
      R => '0'
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_huffman_AXI_Lite_myip_0_0_huffman_AXI_Lite_myip_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_huffman_AXI_Lite_myip_0_0_huffman_AXI_Lite_myip_v1_0 : entity is "huffman_AXI_Lite_myip_v1_0";
end design_1_huffman_AXI_Lite_myip_0_0_huffman_AXI_Lite_myip_v1_0;

architecture STRUCTURE of design_1_huffman_AXI_Lite_myip_0_0_huffman_AXI_Lite_myip_v1_0 is
begin
huffman_AXI_Lite_myip_v1_0_S00_AXI_inst: entity work.design_1_huffman_AXI_Lite_myip_0_0_huffman_AXI_Lite_myip_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_huffman_AXI_Lite_myip_0_0 is
  port (
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_huffman_AXI_Lite_myip_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_huffman_AXI_Lite_myip_0_0 : entity is "design_1_huffman_AXI_Lite_myip_0_0,huffman_AXI_Lite_myip_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_huffman_AXI_Lite_myip_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_huffman_AXI_Lite_myip_0_0 : entity is "huffman_AXI_Lite_myip_v1_0,Vivado 2018.2";
end design_1_huffman_AXI_Lite_myip_0_0;

architecture STRUCTURE of design_1_huffman_AXI_Lite_myip_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_huffman_AXI_Lite_myip_0_0_huffman_AXI_Lite_myip_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
