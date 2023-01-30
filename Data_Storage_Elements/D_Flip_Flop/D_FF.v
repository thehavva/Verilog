`timescale 1ns / 1ps

module D_FF(data,clk,q,qn);
    input clk,data;
    output reg q,qn;
    
    always @ (negedge clk)
    begin
    q=data;
    qn=~data;
    end 
endmodule
