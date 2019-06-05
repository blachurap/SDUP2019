`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*********************************************************************************
*   huffman_encoder.v
*   Modu³ enkodera Huffmana korzystaj¹cy ze statycznego drzewa kodowego
*
*   ver. 0.1
*   Tested: no
**/
//////////////////////////////////////////////////////////////////////////////////


module huffman_encoder(
    input clk,
    input rst,
    input [7:0] data_in,
    input enable,
    output reg [7:0] data_out
    );
    
    `include "../new/params.v"
    
    always @(posedge clk or posedge rst) begin
    
            if(rst)
            
                data_out <= 0;
                
            else if(enable)
            begin
                case(data_in)
                    8'h61:  data_out = symb_a;
                    8'h62:  data_out = symb_b;
                    8'h63:  data_out = symb_c;
                    8'h64:  data_out = symb_d;
                    8'h65:  data_out = symb_e;
                    8'h66:  data_out = symb_f;
                    8'h67:  data_out = symb_g;
                    8'h68:  data_out = symb_h;
                    8'h69:  data_out = symb_i;
                    8'h6A:  data_out = symb_j;
                    8'h6B:  data_out = symb_k;
                    8'h6C:  data_out = symb_l;
                    8'h6D:  data_out = symb_m;
                    8'h6E:  data_out = symb_n;
                    8'h6F:  data_out = symb_o;
                    8'h70:  data_out = symb_p;
                    8'h71:  data_out = symb_q;
                    8'h72:  data_out = symb_r;
                    8'h73:  data_out = symb_s;
                    8'h74:  data_out = symb_t;
                    8'h75:  data_out = symb_u;
                    8'h76:  data_out = symb_v;
                    8'h77:  data_out = symb_w;
                    8'h78:  data_out = symb_x;
                    8'h79:  data_out = symb_y;
                    8'h7A:  data_out = symb_z;
                    8'h20:  data_out = symb_space;
                
                    default:    data_out = 0;
                
                endcase
                
            end
           
        end
    
endmodule



    
