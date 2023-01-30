`timescale 1ns / 1ps

module Senkron_DFlip_Flop_tb;
    reg in,clk,reset;
    wire q,qn;
    
    Senkron_DFlip_Flop UUT(.in(in), .clk(clk), .reset(reset), .q(q), .qn(qn));
    
    initial begin
    in=0;
    clk=0;
    reset=0;
    #100;
    
    #5 
    in=1;
    #10 
    reset=1;
    end 
    
    always #10 clk=~clk;
    
    
    
endmodule
