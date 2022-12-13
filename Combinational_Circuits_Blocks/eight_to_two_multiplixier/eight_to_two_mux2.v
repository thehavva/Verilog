`timescale 1ns / 1ps

module eight_to_two_mux2(s0,s1,s2,s3,s4,s5,s6,s7,x,y,z,out);
    input [2:0] s0,s1,s2,s3,s4,s5,s6,s7;
    input x,y,z;
    output out;
    assign out=(s5&x&z&(~y))|(s6&x&y&(~z))|(s7&x&z&y);
endmodule
