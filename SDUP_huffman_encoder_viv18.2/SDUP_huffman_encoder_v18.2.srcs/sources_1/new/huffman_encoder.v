`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*********************************************************************************
*   huffman_encoder.v
*   Modu³ enkodera Huffmana korzystaj¹cy ze statycznego drzewa kodowego
*
*   ver. 0.1
*   Tested: yes
**/
//////////////////////////////////////////////////////////////////////////////////

 
module huffman_encoder(
    input clk, rst,
    input [7:0] data_in,
    input enable,
    output reg ready_out,
    output reg [7:0] data_out
    );
     
    `include "../new/params.v"
    
    wire data_temp[15:0];
   
    always @(posedge clk) 
    begin
            if(rst)
            begin
                ready_out <= 1'b0;
                data_out <= 0;
            end
            else if(enable)
            begin
                case(data_in)
                
                    8'h61:  assign data_temp = symb_a[$bits(symb_a)-1:0];
                    8'h62:  data_temp = symb_b;
                    8'h63:  data_temp = symb_c;
                    8'h64:  data_temp = symb_d;
                    8'h65:  data_temp = symb_e;
                    8'h66:  data_temp = symb_f;
                    8'h67:  data_temp = symb_g;
                    8'h68:  data_temp = symb_h;
                    8'h69:  data_temp = symb_i;
                    8'h6A:  data_temp = symb_j;
                    8'h6B:  data_temp = symb_k;
                    8'h6C:  data_temp = symb_l;
                    8'h6D:  data_temp = symb_m;
                    8'h6E:  data_temp = symb_n;
                    8'h6F:  data_temp = symb_o;
                    8'h70:  data_temp = symb_p;
                    8'h71:  data_temp = symb_q;
                    8'h72:  data_temp = symb_r;
                    8'h73:  data_temp = symb_s;
                    8'h74:  data_temp = symb_t;
                    8'h75:  data_temp = symb_u;
                    8'h76:  data_temp = symb_v;
                    8'h77:  data_temp = symb_w;
                    8'h78:  data_temp = symb_x;
                    8'h79:  data_temp = symb_y;
                    8'h7A:  data_temp = symb_z;
                    8'h20:  data_temp = symb_space;
                
                    default:    data_temp = 0;
                
                endcase
                
            end
           
        end
    
endmodule



    
