`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*********************************************************************************
*   huffman_encoder.v
*   ModuÂ³ enkodera Huffmana korzystajÂ¹cy ze statycznego drzewa kodowego
*
*   ver. 0.1
*   Tested: no
**/
//////////////////////////////////////////////////////////////////////////////////


module huffman_encoder(
   
    input clk,
    input rst,
    input [7:0] data_in,
    input enable, in_enable,
    output reg out_valid,
    output reg [15:0] data_out);
    /* signals */ 
    reg[16:0] data_out1,data_out2,data_out3,data_out4,data_out5;
    reg[4:0] codelength;
    /*used for data shifting */
    reg[5:0] cl_sum, cl_sum_prev;
    reg[33:0] cl_sum_shift,mult_out, mult_out2, mult_out3;
    reg[6:0] counter64;
    reg[5:0] counter32;
    reg cl_sum_rdy;
    reg full_flag1,half_flag1,half_flag2,full_flag2,half_flag3,full_flag3;
    reg full_flag4,half_flag4,full_flag5,full_flag6,half_flag5,half_flag6;
    reg full_flag7,full_flag8,half_flag7,half_flag8;
    
    reg[15:0] upper_reg1,middle_reg1,lower_reg1;
    reg[15:0] upper_reg2, middle_reg2, middle_reg3;
        
    
    `include "codelength.v"
    `include "dictionary.v"
     
    /*****************************************************************************/ 

    always @(posedge clk) begin
    
            if(rst)
                begin
                 data_out1 <= 8'd0; 
                 codelength <= 5'd0;
                end    
            else if(in_enable && enable)
            begin
                case(data_in)
                    8'd0  : begin  data_out1 <= symb_0  ; codelength <= length_0  ; end
                    8'd1  : begin  data_out1 <= symb_1  ; codelength <= length_1  ; end 
                    8'd2  : begin  data_out1 <= symb_2  ; codelength <= length_2  ; end 
                    8'd3  : begin  data_out1 <= symb_3  ; codelength <= length_3  ; end 
                    8'd4  : begin  data_out1 <= symb_4  ; codelength <= length_4  ; end 
                    8'd5  : begin  data_out1 <= symb_5  ; codelength <= length_5  ; end 
                    8'd6  : begin  data_out1 <= symb_6  ; codelength <= length_6  ; end 
                    8'd7  : begin  data_out1 <= symb_7  ; codelength <= length_7  ; end 
                    8'd8  : begin  data_out1 <= symb_8  ; codelength <= length_8  ; end 
                    8'd9  : begin  data_out1 <= symb_9  ; codelength <= length_9  ; end 
                    8'd10 : begin  data_out1 <= symb_10 ; codelength <= length_10 ; end 
                    8'd11 : begin  data_out1 <= symb_11 ; codelength <= length_11 ; end 
                    8'd12 : begin  data_out1 <= symb_12 ; codelength <= length_12 ; end 
                    8'd13 : begin  data_out1 <= symb_13 ; codelength <= length_13 ; end 
                    8'd14 : begin  data_out1 <= symb_14 ; codelength <= length_14 ; end 
                    8'd15 : begin  data_out1 <= symb_15 ; codelength <= length_15 ; end 
                    8'd16 : begin  data_out1 <= symb_16 ; codelength <= length_16 ; end 
                    8'd17 : begin  data_out1 <= symb_17 ; codelength <= length_17 ; end 
                    8'd18 : begin  data_out1 <= symb_18 ; codelength <= length_18 ; end 
                    8'd19 : begin  data_out1 <= symb_19 ; codelength <= length_19 ; end 
                    8'd20 : begin  data_out1 <= symb_20 ; codelength <= length_20 ; end 
                    8'd21 : begin  data_out1 <= symb_21 ; codelength <= length_21 ; end 
                    8'd22 : begin  data_out1 <= symb_22 ; codelength <= length_22 ; end 
                    8'd23 : begin  data_out1 <= symb_23 ; codelength <= length_23 ; end 
                    8'd24 : begin  data_out1 <= symb_24 ; codelength <= length_24 ; end 
                    8'd25 : begin  data_out1 <= symb_25 ; codelength <= length_25 ; end 
                    8'd26 : begin  data_out1 <= symb_26 ; codelength <= length_26 ; end 
                    8'd27 : begin  data_out1 <= symb_27 ; codelength <= length_27 ; end 
                    8'd28 : begin  data_out1 <= symb_28 ; codelength <= length_28 ; end 
                    8'd29 : begin  data_out1 <= symb_29 ; codelength <= length_29 ; end 
                    8'd30 : begin  data_out1 <= symb_30 ; codelength <= length_30 ; end 
                    8'd31 : begin  data_out1 <= symb_31 ; codelength <= length_31 ; end 
                    8'd32 : begin  data_out1 <= symb_32 ; codelength <= length_32 ; end 
                    8'd33 : begin  data_out1 <= symb_33 ; codelength <= length_33 ; end 
                    8'd34 : begin  data_out1 <= symb_34 ; codelength <= length_34 ; end 
                    8'd35 : begin  data_out1 <= symb_35 ; codelength <= length_35 ; end 
                    8'd36 : begin  data_out1 <= symb_36 ; codelength <= length_36 ; end 
                    8'd37 : begin  data_out1 <= symb_37 ; codelength <= length_37 ; end 
                    8'd38 : begin  data_out1 <= symb_38 ; codelength <= length_38 ; end 
                    8'd39 : begin  data_out1 <= symb_39 ; codelength <= length_39 ; end 
                    8'd40 : begin  data_out1 <= symb_40 ; codelength <= length_40 ; end 
                    8'd41 : begin  data_out1 <= symb_41 ; codelength <= length_41 ; end 
                    8'd42 : begin  data_out1 <= symb_42 ; codelength <= length_42 ; end 
                    8'd43 : begin  data_out1 <= symb_43 ; codelength <= length_43 ; end 
                    8'd44 : begin  data_out1 <= symb_44 ; codelength <= length_44 ; end 
                    8'd45 : begin  data_out1 <= symb_45 ; codelength <= length_45 ; end 
                    8'd46 : begin  data_out1 <= symb_46 ; codelength <= length_46 ; end 
                    8'd47 : begin  data_out1 <= symb_47 ; codelength <= length_47 ; end 
                    8'd48 : begin  data_out1 <= symb_48 ; codelength <= length_48 ; end 
                    8'd49 : begin  data_out1 <= symb_49 ; codelength <= length_49 ; end 
                    8'd50 : begin  data_out1 <= symb_50 ; codelength <= length_50 ; end 
                    8'd51 : begin  data_out1 <= symb_51 ; codelength <= length_51 ; end 
                    8'd52 : begin  data_out1 <= symb_52 ; codelength <= length_52 ; end 
                    8'd53 : begin  data_out1 <= symb_53 ; codelength <= length_53 ; end 
                    8'd54 : begin  data_out1 <= symb_54 ; codelength <= length_54 ; end 
                    8'd55 : begin  data_out1 <= symb_55 ; codelength <= length_55 ; end 
                    8'd56 : begin  data_out1 <= symb_56 ; codelength <= length_56 ; end 
                    8'd57 : begin  data_out1 <= symb_57 ; codelength <= length_57 ; end 
                    8'd58 : begin  data_out1 <= symb_58 ; codelength <= length_58 ; end 
                    8'd59 : begin  data_out1 <= symb_59 ; codelength <= length_59 ; end 
                    8'd60 : begin  data_out1 <= symb_60 ; codelength <= length_60 ; end 
                    8'd61 : begin  data_out1 <= symb_61 ; codelength <= length_61 ; end 
                    8'd62 : begin  data_out1 <= symb_62 ; codelength <= length_62 ; end 
                    8'd63 : begin  data_out1 <= symb_63 ; codelength <= length_63 ; end 
                    8'd64 : begin  data_out1 <= symb_64 ; codelength <= length_64 ; end 
                    8'd65 : begin  data_out1 <= symb_65 ; codelength <= length_65 ; end 
                    8'd66 : begin  data_out1 <= symb_66 ; codelength <= length_66 ; end 
                    8'd67 : begin  data_out1 <= symb_67 ; codelength <= length_67 ; end 
                    8'd68 : begin  data_out1 <= symb_68 ; codelength <= length_68 ; end 
                    8'd69 : begin  data_out1 <= symb_69 ; codelength <= length_69 ; end 
                    8'd70 : begin  data_out1 <= symb_70 ; codelength <= length_70 ; end 
                    8'd71 : begin  data_out1 <= symb_71 ; codelength <= length_71 ; end 
                    8'd72 : begin  data_out1 <= symb_72 ; codelength <= length_72 ; end 
                    8'd73 : begin  data_out1 <= symb_73 ; codelength <= length_73 ; end 
                    8'd74 : begin  data_out1 <= symb_74 ; codelength <= length_74 ; end 
                    8'd75 : begin  data_out1 <= symb_75 ; codelength <= length_75 ; end 
                    8'd76 : begin  data_out1 <= symb_76 ; codelength <= length_76 ; end 
                    8'd77 : begin  data_out1 <= symb_77 ; codelength <= length_77 ; end 
                    8'd78 : begin  data_out1 <= symb_78 ; codelength <= length_78 ; end 
                    8'd79 : begin  data_out1 <= symb_79 ; codelength <= length_79 ; end 
                    8'd80 : begin  data_out1 <= symb_80 ; codelength <= length_80 ; end 
                    8'd81 : begin  data_out1 <= symb_81 ; codelength <= length_81 ; end 
                    8'd82 : begin  data_out1 <= symb_82 ; codelength <= length_82 ; end 
                    8'd83 : begin  data_out1 <= symb_83 ; codelength <= length_83 ; end 
                    8'd84 : begin  data_out1 <= symb_84 ; codelength <= length_84 ; end 
                    8'd85 : begin  data_out1 <= symb_85 ; codelength <= length_85 ; end 
                    8'd86 : begin  data_out1 <= symb_86 ; codelength <= length_86 ; end 
                    8'd87 : begin  data_out1 <= symb_87 ; codelength <= length_87 ; end 
                    8'd88 : begin  data_out1 <= symb_88 ; codelength <= length_88 ; end 
                    8'd89 : begin  data_out1 <= symb_89 ; codelength <= length_89 ; end 
                    8'd90 : begin  data_out1 <= symb_90 ; codelength <= length_90 ; end 
                    8'd91 : begin  data_out1 <= symb_91 ; codelength <= length_91 ; end 
                    8'd92 : begin  data_out1 <= symb_92 ; codelength <= length_92 ; end 
                    8'd93 : begin  data_out1 <= symb_93 ; codelength <= length_93 ; end 
                    8'd94 : begin  data_out1 <= symb_94 ; codelength <= length_94 ; end 
                    8'd95 : begin  data_out1 <= symb_95 ; codelength <= length_95 ; end 
                    8'd96 : begin  data_out1 <= symb_96 ; codelength <= length_96 ; end 
                    8'd97 : begin  data_out1 <= symb_97 ; codelength <= length_97 ; end 
                    8'd98 : begin  data_out1 <= symb_98 ; codelength <= length_98 ; end 
                    8'd99 : begin  data_out1 <= symb_99 ; codelength <= length_99 ; end 
                    8'd100: begin  data_out1 <= symb_100; codelength <= length_100; end 
                    8'd101: begin  data_out1 <= symb_101; codelength <= length_101; end 
                    8'd102: begin  data_out1 <= symb_102; codelength <= length_102; end 
                    8'd103: begin  data_out1 <= symb_103; codelength <= length_103; end 
                    8'd104: begin  data_out1 <= symb_104; codelength <= length_104; end 
                    8'd105: begin  data_out1 <= symb_105; codelength <= length_105; end 
                    8'd106: begin  data_out1 <= symb_106; codelength <= length_106; end 
                    8'd107: begin  data_out1 <= symb_107; codelength <= length_107; end 
                    8'd108: begin  data_out1 <= symb_108; codelength <= length_108; end 
                    8'd109: begin  data_out1 <= symb_109; codelength <= length_109; end 
                    8'd110: begin  data_out1 <= symb_110; codelength <= length_110; end 
                    8'd111: begin  data_out1 <= symb_111; codelength <= length_111; end 
                    8'd112: begin  data_out1 <= symb_112; codelength <= length_112; end 
                    8'd113: begin  data_out1 <= symb_113; codelength <= length_113; end 
                    8'd114: begin  data_out1 <= symb_114; codelength <= length_114; end 
                    8'd115: begin  data_out1 <= symb_115; codelength <= length_115; end 
                    8'd116: begin  data_out1 <= symb_116; codelength <= length_116; end 
                    8'd117: begin  data_out1 <= symb_117; codelength <= length_117; end 
                    8'd118: begin  data_out1 <= symb_118; codelength <= length_118; end 
                    8'd119: begin  data_out1 <= symb_119; codelength <= length_119; end 
                    8'd120: begin  data_out1 <= symb_120; codelength <= length_120; end 
                    8'd121: begin  data_out1 <= symb_121; codelength <= length_121; end 
                    8'd122: begin  data_out1 <= symb_122; codelength <= length_122; end 
                    8'd123: begin  data_out1 <= symb_123; codelength <= length_123; end 
                    8'd124: begin  data_out1 <= symb_124; codelength <= length_124; end 
                    8'd125: begin  data_out1 <= symb_125; codelength <= length_125; end 
                    8'd126: begin  data_out1 <= symb_126; codelength <= length_126; end 
                    8'd127: begin  data_out1 <= symb_127; codelength <= length_127; end 
                    8'd128: begin  data_out1 <= symb_128; codelength <= length_128; end 
                    8'd129: begin  data_out1 <= symb_129; codelength <= length_129; end 
                    8'd130: begin  data_out1 <= symb_130; codelength <= length_130; end 
                    8'd131: begin  data_out1 <= symb_131; codelength <= length_131; end 
                    8'd132: begin  data_out1 <= symb_132; codelength <= length_132; end 
                    8'd133: begin  data_out1 <= symb_133; codelength <= length_133; end 
                    8'd134: begin  data_out1 <= symb_134; codelength <= length_134; end 
                    8'd135: begin  data_out1 <= symb_135; codelength <= length_135; end 
                    8'd136: begin  data_out1 <= symb_136; codelength <= length_136; end 
                    8'd137: begin  data_out1 <= symb_137; codelength <= length_137; end 
                    8'd138: begin  data_out1 <= symb_138; codelength <= length_138; end 
                    8'd139: begin  data_out1 <= symb_139; codelength <= length_139; end 
                    8'd140: begin  data_out1 <= symb_140; codelength <= length_140; end 
                    8'd141: begin  data_out1 <= symb_141; codelength <= length_141; end 
                    8'd142: begin  data_out1 <= symb_142; codelength <= length_142; end 
                    8'd143: begin  data_out1 <= symb_143; codelength <= length_143; end 
                    8'd144: begin  data_out1 <= symb_144; codelength <= length_144; end 
                    8'd145: begin  data_out1 <= symb_145; codelength <= length_145; end 
                    8'd146: begin  data_out1 <= symb_146; codelength <= length_146; end 
                    8'd147: begin  data_out1 <= symb_147; codelength <= length_147; end 
                    8'd148: begin  data_out1 <= symb_148; codelength <= length_148; end 
                    8'd149: begin  data_out1 <= symb_149; codelength <= length_149; end 
                    8'd150: begin  data_out1 <= symb_150; codelength <= length_150; end 
                    8'd151: begin  data_out1 <= symb_151; codelength <= length_151; end 
                    8'd152: begin  data_out1 <= symb_152; codelength <= length_152; end 
                    8'd153: begin  data_out1 <= symb_153; codelength <= length_153; end 
                    8'd154: begin  data_out1 <= symb_154; codelength <= length_154; end 
                    8'd155: begin  data_out1 <= symb_155; codelength <= length_155; end 
                    8'd156: begin  data_out1 <= symb_156; codelength <= length_156; end 
                    8'd157: begin  data_out1 <= symb_157; codelength <= length_157; end 
                    8'd158: begin  data_out1 <= symb_158; codelength <= length_158; end 
                    8'd159: begin  data_out1 <= symb_159; codelength <= length_159; end 
                    8'd160: begin  data_out1 <= symb_160; codelength <= length_160; end 
                    8'd161: begin  data_out1 <= symb_161; codelength <= length_161; end 
                    8'd162: begin  data_out1 <= symb_162; codelength <= length_162; end 
                    8'd163: begin  data_out1 <= symb_163; codelength <= length_163; end 
                    8'd164: begin  data_out1 <= symb_164; codelength <= length_164; end 
                    8'd165: begin  data_out1 <= symb_165; codelength <= length_165; end 
                    8'd166: begin  data_out1 <= symb_166; codelength <= length_166; end 
                    8'd167: begin  data_out1 <= symb_167; codelength <= length_167; end 
                    8'd168: begin  data_out1 <= symb_168; codelength <= length_168; end 
                    8'd169: begin  data_out1 <= symb_169; codelength <= length_169; end 
                    8'd170: begin  data_out1 <= symb_170; codelength <= length_170; end 
                    8'd171: begin  data_out1 <= symb_171; codelength <= length_171; end 
                    8'd172: begin  data_out1 <= symb_172; codelength <= length_172; end 
                    8'd173: begin  data_out1 <= symb_173; codelength <= length_173; end 
                    8'd174: begin  data_out1 <= symb_174; codelength <= length_174; end 
                    8'd175: begin  data_out1 <= symb_175; codelength <= length_175; end 
                    8'd176: begin  data_out1 <= symb_176; codelength <= length_176; end 
                    8'd177: begin  data_out1 <= symb_177; codelength <= length_177; end 
                    8'd178: begin  data_out1 <= symb_178; codelength <= length_178; end 
                    8'd179: begin  data_out1 <= symb_179; codelength <= length_179; end 
                    8'd180: begin  data_out1 <= symb_180; codelength <= length_180; end 
                    8'd181: begin  data_out1 <= symb_181; codelength <= length_181; end 
                    8'd182: begin  data_out1 <= symb_182; codelength <= length_182; end 
                    8'd183: begin  data_out1 <= symb_183; codelength <= length_183; end 
                    8'd184: begin  data_out1 <= symb_184; codelength <= length_184; end 
                    8'd185: begin  data_out1 <= symb_185; codelength <= length_185; end 
                    8'd186: begin  data_out1 <= symb_186; codelength <= length_186; end 
                    8'd187: begin  data_out1 <= symb_187; codelength <= length_187; end 
                    8'd188: begin  data_out1 <= symb_188; codelength <= length_188; end 
                    8'd189: begin  data_out1 <= symb_189; codelength <= length_189; end 
                    8'd190: begin  data_out1 <= symb_190; codelength <= length_190; end 
                    8'd191: begin  data_out1 <= symb_191; codelength <= length_191; end 
                    8'd192: begin  data_out1 <= symb_192; codelength <= length_192; end 
                    8'd193: begin  data_out1 <= symb_193; codelength <= length_193; end 
                    8'd194: begin  data_out1 <= symb_194; codelength <= length_194; end 
                    8'd195: begin  data_out1 <= symb_195; codelength <= length_195; end 
                    8'd196: begin  data_out1 <= symb_196; codelength <= length_196; end 
                    8'd197: begin  data_out1 <= symb_197; codelength <= length_197; end 
                    8'd198: begin  data_out1 <= symb_198; codelength <= length_198; end 
                    8'd199: begin  data_out1 <= symb_199; codelength <= length_199; end 
                    8'd200: begin  data_out1 <= symb_200; codelength <= length_200; end 
                    8'd201: begin  data_out1 <= symb_201; codelength <= length_201; end 
                    8'd202: begin  data_out1 <= symb_202; codelength <= length_202; end 
                    8'd203: begin  data_out1 <= symb_203; codelength <= length_203; end 
                    8'd204: begin  data_out1 <= symb_204; codelength <= length_204; end 
                    8'd205: begin  data_out1 <= symb_205; codelength <= length_205; end 
                    8'd206: begin  data_out1 <= symb_206; codelength <= length_206; end 
                    8'd207: begin  data_out1 <= symb_207; codelength <= length_207; end 
                    8'd208: begin  data_out1 <= symb_208; codelength <= length_208; end 
                    8'd209: begin  data_out1 <= symb_209; codelength <= length_209; end 
                    8'd210: begin  data_out1 <= symb_210; codelength <= length_210; end 
                    8'd211: begin  data_out1 <= symb_211; codelength <= length_211; end 
                    8'd212: begin  data_out1 <= symb_212; codelength <= length_212; end 
                    8'd213: begin  data_out1 <= symb_213; codelength <= length_213; end 
                    8'd214: begin  data_out1 <= symb_214; codelength <= length_214; end 
                    8'd215: begin  data_out1 <= symb_215; codelength <= length_215; end 
                    8'd216: begin  data_out1 <= symb_216; codelength <= length_216; end 
                    8'd217: begin  data_out1 <= symb_217; codelength <= length_217; end 
                    8'd218: begin  data_out1 <= symb_218; codelength <= length_218; end 
                    8'd219: begin  data_out1 <= symb_219; codelength <= length_219; end 
                    8'd220: begin  data_out1 <= symb_220; codelength <= length_220; end 
                    8'd221: begin  data_out1 <= symb_221; codelength <= length_221; end 
                    8'd222: begin  data_out1 <= symb_222; codelength <= length_222; end 
                    8'd223: begin  data_out1 <= symb_223; codelength <= length_223; end 
                    8'd224: begin  data_out1 <= symb_224; codelength <= length_224; end 
                    8'd225: begin  data_out1 <= symb_225; codelength <= length_225; end 
                    8'd226: begin  data_out1 <= symb_226; codelength <= length_226; end 
                    8'd227: begin  data_out1 <= symb_227; codelength <= length_227; end
                    8'd228: begin  data_out1 <= symb_228; codelength <= length_228; end 
                    8'd229: begin  data_out1 <= symb_229; codelength <= length_229; end 
                    8'd230: begin  data_out1 <= symb_230; codelength <= length_230; end 
                    8'd231: begin  data_out1 <= symb_231; codelength <= length_231; end 
                    8'd232: begin  data_out1 <= symb_232; codelength <= length_232; end 
                    8'd233: begin  data_out1 <= symb_233; codelength <= length_233; end 
                    8'd234: begin  data_out1 <= symb_234; codelength <= length_234; end 
                    8'd235: begin  data_out1 <= symb_235; codelength <= length_235; end 
                    8'd236: begin  data_out1 <= symb_236; codelength <= length_236; end 
                    8'd237: begin  data_out1 <= symb_237; codelength <= length_237; end 
                    8'd238: begin  data_out1 <= symb_238; codelength <= length_238; end 
                    8'd239: begin  data_out1 <= symb_239; codelength <= length_239; end 
                    8'd240: begin  data_out1 <= symb_240; codelength <= length_240; end 
                    8'd241: begin  data_out1 <= symb_241; codelength <= length_241; end 
                    8'd242: begin  data_out1 <= symb_242; codelength <= length_242; end 
                    8'd243: begin  data_out1 <= symb_243; codelength <= length_243; end
                    8'd244: begin  data_out1 <= symb_244; codelength <= length_244; end 
                    8'd245: begin  data_out1 <= symb_245; codelength <= length_245; end 
                    8'd246: begin  data_out1 <= symb_246; codelength <= length_246; end 
                    8'd247: begin  data_out1 <= symb_247; codelength <= length_247; end 
                    8'd248: begin  data_out1 <= symb_248; codelength <= length_248; end 
                    8'd249: begin  data_out1 <= symb_249; codelength <= length_249; end 
                    8'd250: begin  data_out1 <= symb_250; codelength <= length_250; end 
                    8'd251: begin  data_out1 <= symb_251; codelength <= length_251; end 
                    8'd252: begin  data_out1 <= symb_252; codelength <= length_252; end 
                    8'd253: begin  data_out1 <= symb_253; codelength <= length_253; end 
                    8'd254: begin  data_out1 <= symb_254; codelength <= length_254; end 
                    8'd255: begin  data_out1 <= symb_255; codelength <= length_255; end 
                
                    default: begin  data_out1 <= 8'd0; codelength <= 5'd0; end
                
                endcase
                
            end
           
        end
/**************************************************************************************************/
/*pipelining*/
              always @ (posedge clk ) 
             begin 
              if (rst) 
                 begin 
                data_out2   <= 18'b0; 
                data_out3   <= 18'b0;
                data_out4   <= 18'b0;
                data_out5   <= 18'b0;
                end 
            else  
                begin      
                   data_out2 <= data_out1;
                   data_out3 <= data_out2; 
                   data_out4 <= data_out3;
                   data_out5 <= data_out4; 
                end 
             end 
/*****************************************************************************/ 
/* The maximum length of the huffman code can be 17 bits . The minimum  length 
of the vlc code is 5 bits. . After  finding the huffman code for a particular
input, the code is shifted into a barrel shifter. 
 
Every time there are 16 bits in the barrel shifter, the contends of the shifter is 
enabled out as the huffman_out signal. Each  value is read in and the corresponding  
code is found out. The codelengths are added up (cl_sum) and when it reaches 16 or 32,  
the code is sent out.  
 
The maximum  value for cl_sum happens when a 17 bit code is followed by a 17 bit 
code. So the max. value for cl_sum is 17*2 = 34. The barrel shifter has 34 valid 
registers. For ease of coding, 48 (3 * 16) registers are used. These registers are 
divided into upper_reg, middle_reg and lower_reg. Each time upper_reg if full (ie.,  
16 or more bits in barrel shifter), the contends are sent out. The remaining bits 
, if any, in the middle_reg are moved up to the upper_reg. If the barrel shifter  
has 32 or more valid data, the upper and middle registers are full and the upper 
reg data is sent out followed by the middle reg data. The remaining bits, if any  
in the lower register is moved up to the upper register.*/ 
 
/*****************************************************************************/ 
/* calculate sum of codelength. set half flag and full flag . Half flags indicates 
that the upper_reg is full and full flag indicates that the lower register is full. 
cl_sum_prev gives the sum of the codelengths which is used to set the flags. cl_sum 
is used to find out the number of shifts to be done in the barrel shifts.*/ 
    always @ (posedge clk) 
     begin 
    if (rst) 
       begin 
       cl_sum <= 6'd34; 
       cl_sum_prev <= 6'd0; 
       half_flag1 <= 1'b0;
       full_flag1 <= 1'b0; 
       end 
         else if ( cl_sum_rdy == 1'b1) 
          begin 
              if (cl_sum_prev < 6'd16) 
                begin  
                cl_sum_prev <= codelength + cl_sum_prev; 
                cl_sum <= (6'd34 - cl_sum_prev); 
                half_flag1 <= 1'b0;
                full_flag1 <= 1'b0; 
			     end 
          else if (cl_sum_prev <= 6'd32 && cl_sum_prev >= 6'd16) 
                begin  
                cl_sum_prev <= codelength + (cl_sum_prev - 5'b10000); 
                cl_sum <= (6'd34 - cl_sum_prev); 
                half_flag1 <= 1'b1;
                full_flag1 <= 1'b0; 
			     end 
          else if (cl_sum_prev >= 6'd32) 
                begin  
                cl_sum_prev <= codelength + (cl_sum_prev - 6'b100000); 
                cl_sum <= (6'd34 - cl_sum_prev); 
                half_flag1 <= 1'b1;
                full_flag1 <= 1'b1; 
			    end 
       end 
   end 
/*****************************************************************************/ 
 
/* barrel shifting done using multiplier. Barrel shifting coefficients are 
stored in a ROM and selected depending on the value of cl_sum */ 
 
always @ (posedge clk) 
   begin 
   if (rst) 
       begin 
       cl_sum_shift <= 34'b0;  
       end 
   else  
    begin 
      case (cl_sum) 
       6'd0 : begin cl_sum_shift <=  34'b0000000000000000000000000000000000; end    
       6'd1 : begin cl_sum_shift <=  34'b0000000000000000000000000000000010; end    
       6'd2 : begin cl_sum_shift <=  34'b0000000000000000000000000000000100; end    
       6'd3 : begin cl_sum_shift <=  34'b0000000000000000000000000000001000; end    
       6'd4 : begin cl_sum_shift <=  34'b0000000000000000000000000000010000; end    
       6'd5 : begin cl_sum_shift <=  34'b0000000000000000000000000000100000; end    
       6'd6 : begin cl_sum_shift <=  34'b0000000000000000000000000001000000; end    
       6'd7 : begin cl_sum_shift <=  34'b0000000000000000000000000010000000; end    
       6'd8 : begin cl_sum_shift <=  34'b0000000000000000000000000100000000; end    
       6'd9 : begin cl_sum_shift <=  34'b0000000000000000000000001000000000; end    
       6'd10 : begin cl_sum_shift <= 34'b0000000000000000000000010000000000; end    
       6'd11 : begin cl_sum_shift <= 34'b0000000000000000000000100000000000; end    
       6'd12 : begin cl_sum_shift <= 34'b0000000000000000000001000000000000; end    
       6'd13 : begin cl_sum_shift <= 34'b0000000000000000000010000000000000; end    
       6'd14 : begin cl_sum_shift <= 34'b0000000000000000000100000000000000; end    
       6'd15 : begin cl_sum_shift <= 34'b0000000000000000001000000000000000; end    
       6'd16 : begin cl_sum_shift <= 34'b0000000000000000010000000000000000; end    
       6'd17 : begin cl_sum_shift <= 34'b0000000000000000100000000000000000; end    
       6'd18 : begin cl_sum_shift <= 34'b0000000000000001000000000000000000; end    
       6'd19 : begin cl_sum_shift <= 34'b0000000000000010000000000000000000; end    
       6'd20 : begin cl_sum_shift <= 34'b0000000000000100000000000000000000; end    
       6'd21 : begin cl_sum_shift <= 34'b0000000000001000000000000000000000; end    
       6'd22 : begin cl_sum_shift <= 34'b0000000000010000000000000000000000; end    
       6'd23 : begin cl_sum_shift <= 34'b0000000000100000000000000000000000; end    
       6'd24 : begin cl_sum_shift <= 34'b0000000001000000000000000000000000; end    
       6'd25 : begin cl_sum_shift <= 34'b0000000010000000000000000000000000; end    
       6'd26 : begin cl_sum_shift <= 34'b0000000100000000000000000000000000; end    
       6'd27 : begin cl_sum_shift <= 34'b0000001000000000000000000000000000; end    
       6'd28 : begin cl_sum_shift <= 34'b0000010000000000000000000000000000; end    
       6'd29 : begin cl_sum_shift <= 34'b0000100000000000000000000000000000; end    
       6'd30 : begin cl_sum_shift <= 34'b0001000000000000000000000000000000; end    
       6'd31 : begin cl_sum_shift <= 34'b0010000000000000000000000000000000; end    
       6'd32 : begin cl_sum_shift <= 34'b0100000000000000000000000000000000; end    
       6'd33 : begin cl_sum_shift <= 34'b1000000000000000000000000000000000; end       
     default : begin cl_sum_shift <= 34'b0000000000000000000000000000000000; end   
    endcase 
   end 
end
/*****************************************************************************/ 

/* multiplier used to do barrel shifting of codeword. flags pipeleined to match 
the pipe line stages of upper, middle and lower registers. */ 
 
always @ (posedge clk) 
   begin 
   if (rst) 
       begin 
       mult_out <= 34'b0; 
       mult_out2 <= 34'b0; 
       mult_out3 <= 34'b0; 
       full_flag2 <= 1'b0; half_flag2 <= 1'b0; 
       full_flag3 <= 1'b0; half_flag3 <= 1'b0; 
       full_flag4 <= 1'b0; half_flag4 <= 1'b0; 
       full_flag5 <= 1'b0; half_flag5 <= 1'b0; 
       full_flag6 <= 1'b0; 
       full_flag7 <= 1'b0; half_flag6 <= 1'b0; 
       full_flag8 <= 1'b0; half_flag7 <= 1'b0; 
       end 
   else if (enable == 1'b1) 
       begin 
         mult_out <= data_out4 * cl_sum_shift; 
         mult_out2 <= mult_out;
         mult_out3 <= mult_out2;
         full_flag2 <= full_flag1; half_flag2 <= half_flag1; 
         full_flag3 <= full_flag2; half_flag3 <= half_flag2; //tyle starczy?
         full_flag4 <= full_flag3; half_flag4 <= half_flag3; 
         full_flag5 <= full_flag4; half_flag5 <= half_flag4; 
         full_flag6 <= full_flag5;  
        full_flag7 <= full_flag6;  half_flag6 <= half_flag5; 
        full_flag8 <= full_flag7;  half_flag7 <= half_flag6; 
       end 
end 
  
/*****************************************************************************/ 
always @ (posedge clk) 
   begin 
   if (rst) 
       begin 
       upper_reg1 <= 16'b0; middle_reg1 <= 16'b0; lower_reg1 <= 16'b0; 
       end 
   else if (enable == 1'b1) 
       begin 
         case({full_flag6, half_flag6}) 
         2'b00: begin  upper_reg1[15:0] <= mult_out3[33:18] | upper_reg1[15:0]; 
                       middle_reg1 <= mult_out3[17:2]; 
                       lower_reg1 <= {mult_out3[1:0],14'b0 }; end 
         2'b01: begin  upper_reg1[15:0] <= mult_out3[33:18] | middle_reg1[15:0]; 
                       middle_reg1 <= mult_out3[17:2]; 
                       lower_reg1 <= {mult_out3[1:0],14'b0}; end 
         2'b11: begin  upper_reg1 <= mult_out3[33:18] | lower_reg1; 
                       middle_reg1 <= mult_out3[17:2]; 
                       lower_reg1 <= {16'b0}; end 
         default:begin upper_reg1 <= upper_reg1; 
                       middle_reg1 <= middle_reg1; 
                       lower_reg1 <= lower_reg1; end 
         endcase 
       end      
   end 
 
/*****************************************************************************/ 
 
always @ (posedge clk ) 
   begin 
   if (rst) 
       begin 
       upper_reg2 <= 16'b0; middle_reg2 <= 16'b0;  
       middle_reg3 <= 16'b0;  
       end 
   else if (enable == 1'b1) 
       begin 
          upper_reg2 <= upper_reg1; 
          
          middle_reg2 <= middle_reg1; 
          middle_reg3 <= middle_reg2;  
       end      
   end 
 
/*****************************************************************************/ 
 
always @ (posedge clk)
   begin 
   if (rst) 
       begin 
       data_out <= 16'b0;  
       end 
   else if (enable == 1'b1) 
       begin 
       if (half_flag7 == 1'b1) 
           data_out <= upper_reg2; 
       else if (full_flag8 == 1'b1) 
           data_out <= middle_reg3; 
		end 
    end 
 
/*****************************************************************************/ 
/* counter that counts upto 64. */ 
 
always @ (posedge clk ) 
   begin 
   if (rst) 
       begin 
       counter64 <= 7'b1000000; 
       end 
       else if (enable == 1'b1) 
        begin 
          if (counter64 < 7'b1000000) 
              counter64 <= counter64 + 1; 
         else  
              counter64 <= 7'b0000001; 
        end 
  end   
 
/* cl_sum starts after 2 clks from reset. */ 
 
always @ (posedge clk) 
   begin 
   if (rst) 
       begin 
       cl_sum_rdy <= 1'b0; 
       
       end 
   else  
        begin 
          if (counter64 == 7'b0000010) 
              cl_sum_rdy <= 1'b1; 
          else  
              cl_sum_rdy <= cl_sum_rdy; 
          end 
  end  
  /*****************************************************************************/ 
/* counter that counts upto 64. */ 
 
always @ (posedge clk ) 
   begin 
   if (rst || enable == 1'b0) 
       begin 
       counter32 <= 6'b000000; 
       end 
       else if (enable == 1'b1 && in_enable ==1'b1 ) 
        begin 
          if (counter32 < 6'd13) 
              counter32 <= counter32 + 1; 
         else  
              counter32 <= 6'd13; 
        end 
        else if (in_enable ==1'b0 ) 
        begin 
          if (counter32 > 6'd0) 
              counter32 <= counter32 - 1; 
         else  
              counter32 <= 6'd0; 
        end 
  end    
  
  always @ (posedge clk) 
   begin 
   if (rst) 
       begin 
            out_valid <= 1'b0;
       end 
   else 
        begin 
          if (counter32 == 6'd12)  //powinnno to byæ 15 taktów od in_enable 
              out_valid <= 1'b1; 
          else if  (counter32 == 6'b000001)
              out_valid <= 1'b0;
          else  
              out_valid <= out_valid; 
        end 
  end   
/*****************************************************************************/ 

endmodule
