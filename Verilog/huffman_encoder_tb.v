`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*****************************************************************
*   huffman_encoder_tb.v
*   Testbench do enkodera Huffmana
*   
*   ver: 0.1
*   Tested: yes
**/
module huffman_encoder_tb();

reg sys_clk, sys_rst;
reg enable;
reg [7:0] data_in;
wire [7:0] data_out;

initial
begin
    sys_clk = 0;
    sys_rst = 0;
    enable = 0;
    
    sys_rst = #200 1;
    sys_rst = #200 0;
    
    enable = #200 1;
    data_in = #300 8'h64;
    data_in = #200 8'h70;
    data_in = #300 8'h61;
    data_in = #200 8'h62;
    data_in = #300 8'h63;
    data_in = #200 8'h64;
    data_in = #300 8'h65;
    data_in = #200 8'h66;
    enable = #200 0;
    data_in = #300 8'h6A;
    data_in = #200 8'h61;
end

always #50 sys_clk = ~sys_clk;   //zegar na 10MHz

huffman_encoder UUT(
            .clk(sys_clk),
            .rst(sys_rst),
            .enable(enable),
            .data_in(data_in),
            .data_out(data_out)
            );
            
endmodule
