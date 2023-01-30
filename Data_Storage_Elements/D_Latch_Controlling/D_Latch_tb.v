`timescale 1ns / 1ps

module D_Latch_tb;
    reg d,c;
    wire q,qn;
    D_Latch UUT(.d(d), .c(c), .q(q), .qn(qn));
    initial begin
    d=0;
    c=0;
    #5;
    d=0;
    c=1;
    #5;
    d=1;
    c=1;
    #5;
    end 
endmodule