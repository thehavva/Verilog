`timescale 1ns / 1ps

module SR_Latch_tb;
    reg s,r,c;
    wire q,qn;
    SR_Latch UUT(.s(s), .r(r), .c(c), .q(q), .qn(qn));
    initial begin
    s=0;
    r=0;
    c=0;
    #5;
    s=0;
    r=1;
    c=1;
    #5;
    s=1;
    r=0;
    c=1;
    #5;
    end 
endmodule
