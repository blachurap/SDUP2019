/***************************************
*   param2.v
*   Drzewo kodowe Huffmana dla wybranego rozk�adu, 0 najwieksze prawdopodobie�stwo, 255 najmniejsze
**/
 parameter symb_0  = 5'b 01010;
 parameter symb_1  = 5'b 01100;
 parameter symb_2  = 5'b 01110;
 parameter symb_3  = 5'b 10000;
 parameter symb_4  = 5'b 10010;
 parameter symb_5  = 5'b 10100;
 parameter symb_6  = 5'b 10110;
 parameter symb_7  = 5'b 11000;
 parameter symb_8  = 5'b 11010;
 parameter symb_9  = 5'b 11100;
 parameter symb_10  = 5'b 11110;
 parameter symb_11  = 6'b 000000;
 parameter symb_12  = 6'b 000010;
 parameter symb_13  = 6'b 000100;
 parameter symb_14  = 6'b 000110;
 parameter symb_15  = 6'b 001000;
 parameter symb_16  = 6'b 001010;
 parameter symb_17  = 6'b 001100;
 parameter symb_18  = 6'b 001110;
 parameter symb_19  = 6'b 010000;
 parameter symb_20  = 6'b 010010;
 parameter symb_21  = 6'b 010110;
 parameter symb_22  = 6'b 011010;
 parameter symb_23  = 6'b 011110;
 parameter symb_24  = 6'b 100010;
 parameter symb_25  = 6'b 100110;
 parameter symb_26  = 6'b 101010;
 parameter symb_27  = 6'b 101110;
 parameter symb_28  = 6'b 110010;
 parameter symb_29  = 6'b 110110;
 parameter symb_30  = 6'b 111010;
 parameter symb_31  = 6'b 111110;
 parameter symb_32  = 7'b 0000010;
 parameter symb_33  = 7'b 0000110;
 parameter symb_34  = 7'b 0001010;
 parameter symb_35  = 7'b 0001110;
 parameter symb_36  = 7'b 0010010;
 parameter symb_37  = 7'b 0010110;
 parameter symb_38  = 7'b 0011010;
 parameter symb_39  = 7'b 0011110;
 parameter symb_40  = 7'b 0100010;
 parameter symb_41  = 7'b 0100110;
 parameter symb_42  = 7'b 0101110;
 parameter symb_43  = 7'b 0110110;
 parameter symb_44  = 7'b 0111110;
 parameter symb_45  = 7'b 1000110;
 parameter symb_46  = 7'b 1001110;
 parameter symb_47  = 7'b 1010110;
 parameter symb_48  = 7'b 1011110;
 parameter symb_49  = 7'b 1100110;
 parameter symb_50  = 7'b 1101110;
 parameter symb_51  = 7'b 1110110;
 parameter symb_52  = 7'b 1111110;
 parameter symb_53  = 8'b 00000110;
 parameter symb_54  = 8'b 00001110;
 parameter symb_55  = 8'b 00010110;
 parameter symb_56  = 8'b 00011110;
 parameter symb_57  = 8'b 00100110;
 parameter symb_58  = 8'b 00101110;
 parameter symb_59  = 8'b 00110110;
 parameter symb_60  = 8'b 00111110;
 parameter symb_61  = 8'b 01000110;
 parameter symb_62  = 8'b 01001110;
 parameter symb_63  = 8'b 01011110;
 parameter symb_64  = 8'b 01101110;
 parameter symb_65  = 8'b 01111110;
 parameter symb_66  = 8'b 10001110;
 parameter symb_67  = 8'b 10011110;
 parameter symb_68  = 8'b 10101110;
 parameter symb_69  = 8'b 10111110;
 parameter symb_70  = 8'b 11001110;
 parameter symb_71  = 8'b 11011110;
 parameter symb_72  = 8'b 11101110;
 parameter symb_73  = 8'b 11111110;
 parameter symb_74  = 9'b 000001110;
 parameter symb_75  = 9'b 000011110;
 parameter symb_76  = 9'b 000101110;
 parameter symb_77  = 9'b 000111110;
 parameter symb_78  = 9'b 001001110;
 parameter symb_79  = 9'b 001011110;
 parameter symb_80  = 9'b 001101110;
 parameter symb_81  = 9'b 001111110;
 parameter symb_82  = 9'b 010001110;
 parameter symb_83  = 9'b 010011110;
 parameter symb_84  = 9'b 010111110;
 parameter symb_85  = 9'b 011011110;
 parameter symb_86  = 9'b 011111110;
 parameter symb_87  = 9'b 100011110;
 parameter symb_88  = 9'b 100111110;
 parameter symb_89  = 9'b 101011110;
 parameter symb_90  = 9'b 101111110;
 parameter symb_91  = 9'b 110011110;
 parameter symb_92  = 9'b 110111110;
 parameter symb_93  = 9'b 111011110;
 parameter symb_94  = 9'b 111111110;
 parameter symb_95  = 10'b 0000011110;
 parameter symb_96  = 10'b 0000111110;
 parameter symb_97  = 10'b 0001011110;
 parameter symb_98  = 10'b 0001111110;
 parameter symb_99  = 10'b 0010011110;
 parameter symb_100  = 10'b 0010111110;
 parameter symb_101  = 10'b 0011011110;
 parameter symb_102  = 10'b 0011111110;
 parameter symb_103  = 10'b 0100011110;
 parameter symb_104  = 10'b 0100111110;
 parameter symb_105  = 10'b 0101111110;
 parameter symb_106  = 10'b 0110111110;
 parameter symb_107  = 10'b 0111111110;
 parameter symb_108  = 10'b 1000111110;
 parameter symb_109  = 10'b 1001111110;
 parameter symb_110  = 10'b 1010111110;
 parameter symb_111  = 10'b 1011111110;
 parameter symb_112  = 10'b 1100111110;
 parameter symb_113  = 10'b 1101111110;
 parameter symb_114  = 10'b 1110111110;
 parameter symb_115  = 10'b 1111111110;
 parameter symb_116  = 11'b 00000111110;
 parameter symb_117  = 11'b 00001111110;
 parameter symb_118  = 11'b 00010111110;
 parameter symb_119  = 11'b 00011111110;
 parameter symb_120  = 11'b 00100111110;
 parameter symb_121  = 11'b 00101111110;
 parameter symb_122  = 11'b 00110111110;
 parameter symb_123  = 11'b 00111111110;
 parameter symb_124  = 11'b 01000111110;
 parameter symb_125  = 11'b 01001111110;
 parameter symb_126  = 11'b 01011111110;
 parameter symb_127  = 11'b 01101111110;
 parameter symb_128  = 11'b 01101111111;
 parameter symb_129  = 11'b 01111111111;
 parameter symb_130  = 11'b 10001111111;
 parameter symb_131  = 11'b 10011111111;
 parameter symb_132  = 11'b 10101111111;
 parameter symb_133  = 11'b 10111111111;
 parameter symb_134  = 11'b 11001111111;
 parameter symb_135  = 11'b 11011111111;
 parameter symb_136  = 11'b 11101111111;
 parameter symb_137  = 11'b 11111111111;
 parameter symb_138  = 12'b 000001111111;
 parameter symb_139  = 12'b 000011111111;
 parameter symb_140  = 12'b 000101111111;
 parameter symb_141  = 12'b 000111111111;
 parameter symb_142  = 12'b 001001111111;
 parameter symb_143  = 12'b 001011111111;
 parameter symb_144  = 12'b 001101111111;
 parameter symb_145  = 12'b 001111111111;
 parameter symb_146  = 12'b 010001111111;
 parameter symb_147  = 12'b 010011111111;
 parameter symb_148  = 12'b 010111111111;
 parameter symb_149  = 12'b 011111111101;
 parameter symb_150  = 12'b 100011111101;
 parameter symb_151  = 12'b 100111111101;
 parameter symb_152  = 12'b 101011111101;
 parameter symb_153  = 12'b 101111111101;
 parameter symb_154  = 12'b 110011111101;
 parameter symb_155  = 12'b 110111111101;
 parameter symb_156  = 12'b 111011111101;
 parameter symb_157  = 12'b 111111111100;
 parameter symb_158  = 13'b 0000011111100;
 parameter symb_159  = 13'b 0000111111100;
 parameter symb_160  = 13'b 0001011111100;
 parameter symb_161  = 13'b 0001111111100;
 parameter symb_162  = 13'b 0010011111100;
 parameter symb_163  = 13'b 0010111111100;
 parameter symb_164  = 13'b 0011011111100;
 parameter symb_165  = 13'b 0011111111100;
 parameter symb_166  = 13'b 0100011111100;
 parameter symb_167  = 13'b 0100111111100;
 parameter symb_168  = 13'b 0101111111100;
 parameter symb_169  = 13'b 0111111111000;
 parameter symb_170  = 13'b 1000111111000;
 parameter symb_171  = 13'b 1001111111000;
 parameter symb_172  = 13'b 1010111111000;
 parameter symb_173  = 13'b 1010111111001;
 parameter symb_174  = 13'b 1011111111001;
 parameter symb_175  = 13'b 1100111111001;
 parameter symb_176  = 13'b 1101111111001;
 parameter symb_177  = 13'b 1110111111001;
 parameter symb_178  = 13'b 1111111111011;
 parameter symb_179  = 14'b 00000111111011;
 parameter symb_180  = 14'b 00001111111011;
 parameter symb_181  = 14'b 00010111111010;
 parameter symb_182  = 14'b 00011111111010;
 parameter symb_183  = 14'b 00100111111010;
 parameter symb_184  = 14'b 00101111111010;
 parameter symb_185  = 14'b 00110111111010;
 parameter symb_186  = 14'b 00111111111010;
 parameter symb_187  = 14'b 01000111111010;
 parameter symb_188  = 14'b 01001111111010;
 parameter symb_189  = 14'b 01001111111011;
 parameter symb_190  = 14'b 01011111111011;
 parameter symb_191  = 14'b 01111111110011;
 parameter symb_192  = 14'b 10001111110011;
 parameter symb_193  = 14'b 10011111110011;
 parameter symb_194  = 14'b 10111111110001;
 parameter symb_195  = 14'b 11001111110000;
 parameter symb_196  = 14'b 11011111110000;
 parameter symb_197  = 14'b 11101111110000;
 parameter symb_198  = 14'b 11111111110100;
 parameter symb_199  = 14'b 11111111110101;
 parameter symb_200  = 15'b 000001111110101;
 parameter symb_201  = 15'b 000011111110101;
 parameter symb_202  = 15'b 000101111110111;
 parameter symb_203  = 15'b 000111111110110;
 parameter symb_204  = 15'b 001001111110110;
 parameter symb_205  = 15'b 001011111110110;
 parameter symb_206  = 15'b 001101111110110;
 parameter symb_207  = 15'b 001101111110111;
 parameter symb_208  = 15'b 001111111110111;
 parameter symb_209  = 15'b 010001111110111;
 parameter symb_210  = 15'b 010111111110101;
 parameter symb_211  = 15'b 011111111100100;
 parameter symb_212  = 15'b 100011111100100;
 parameter symb_213  = 15'b 100111111100100;
 parameter symb_214  = 15'b 101111111100000;
 parameter symb_215  = 15'b 101111111100001;
 parameter symb_216  = 15'b 110011111100011;
 parameter symb_217  = 15'b 110111111100010;
 parameter symb_218  = 15'b 111011111100010;
 parameter symb_219  = 15'b 111011111100011;
 parameter symb_220  = 16'b 0000011111101001;
 parameter symb_221  = 16'b 0000111111101000;
 parameter symb_222  = 16'b 0001011111101100;
 parameter symb_223  = 16'b 0001011111101101;
 parameter symb_224  = 16'b 0001111111101111;
 parameter symb_225  = 16'b 0010011111101110;
 parameter symb_226  = 16'b 0010111111101110;
 parameter symb_227  = 16'b 0010111111101111;
 parameter symb_228  = 16'b 0011111111101101;
 parameter symb_229  = 16'b 0100011111101100;
 parameter symb_230  = 16'b 0101111111101000;
 parameter symb_231  = 16'b 0101111111101001;
 parameter symb_232  = 16'b 0111111111001011;
 parameter symb_233  = 16'b 1000111111001010;
 parameter symb_234  = 16'b 1001111111001010;
 parameter symb_235  = 16'b 1001111111001011;
 parameter symb_236  = 16'b 1100111111000100;
 parameter symb_237  = 16'b 1100111111000101;
 parameter symb_238  = 16'b 1101111111000110;
 parameter symb_239  = 16'b 1101111111000111;
 parameter symb_240  = 17'b 00000111111010000;
 parameter symb_241  = 17'b 00000111111010001;
 parameter symb_242  = 17'b 00001111111010010;
 parameter symb_243  = 17'b 00001111111010011;
 parameter symb_244  = 17'b 00011111111011100;
 parameter symb_245  = 17'b 00011111111011101;
 parameter symb_246  = 17'b 00100111111011110;
 parameter symb_247  = 17'b 00100111111011111;
 parameter symb_248  = 17'b 00111111111011000;
 parameter symb_249  = 17'b 00111111111011001;
 parameter symb_250  = 17'b 01000111111011010;
 parameter symb_251  = 17'b 01000111111011011;
 parameter symb_252  = 17'b 01111111110010100;
 parameter symb_253  = 17'b 01111111110010101;
 parameter symb_254  = 17'b 10001111110010110;
 parameter symb_255  = 17'b 10001111110010111;
















