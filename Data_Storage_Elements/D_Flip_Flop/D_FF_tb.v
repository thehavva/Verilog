`timescale 1ns / 1ps

module D_FF_tb;
    reg clk,data;
    wire q,qn;
    D_FF UUT(.data(data), .clk(clk), .q(q), .qn(qn));
    initial begin
    clk=0;
    data=0;
    #10;
    
    clk=0;
    data=1;
    #10;
    
    clk=1;
    data=0;
    #10;
    
    clk=1;
    data=1;
    #10;
    end 
endmodule
