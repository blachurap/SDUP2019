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
reg in_enable;
reg [7:0] data_in;
wire [15:0] data_out;
wire out_valid;

initial
begin
    sys_clk = 0;
    sys_rst = 0;
    enable = 0;
    enable = 0;
    in_enable=0;
    
    sys_rst = #200 1;
    sys_rst = #200 0;
    
    enable = #200 1;
    in_enable = 1;
    data_in = 8'd5;
    data_in = #100 8'd68;
    data_in = #100 8'd50;
    data_in = #100 8'd100;
    data_in = #100 8'd150;
    data_in = #100 8'd200;
    data_in = #100 8'd250;
    data_in = #100 8'd255;
    in_enable = #1200 0;
    data_in = #100 8'd100;
    enable = #2000 0;
    data_in = #1000 8'd255;
end

always #50 sys_clk = ~sys_clk;   //zegar na 10MHz

huffman_encoder UUT(
            .clk(sys_clk),
            .rst(sys_rst),
            .enable(enable),
            .in_enable(in_enable),
            .data_in(data_in),
            .out_valid(out_valid),
            .data_out(data_out)            
            );
            
endmodule
