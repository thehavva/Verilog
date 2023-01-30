`timescale 1ns / 1ps

module divider_2(clk,out);
    input clk;
    output reg out =0;
    
    always @ (posedge clk)
    begin
    out=~out;
    end 
endmodule
