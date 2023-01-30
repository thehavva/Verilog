`timescale 1ns / 1ps

module divider(clk,out);
    input clk;
    output reg [3:0] out;
    initial out=4'b0000;
    
    always @(posedge clk)
    out <= out + 1'b1;
endmodule
