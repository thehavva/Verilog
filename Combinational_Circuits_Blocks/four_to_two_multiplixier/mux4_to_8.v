`timescale 1ns / 1ps

module mux4_to_8(s0,s1,s2,s3,s4,s5,s6,s7,x,y,z,out);
    input [2:0] s0,s1,s2,s3,s4,s5,s6,s7;
    input x,y,z;
    wire k1,k2;
    output out;
    mux_4_to_8 U1(s0,s1,s2,s3,y,z,k1);
    mux_4_to_8 U2(s4,s5,s6,s7,y,z,k2);
    assign out = x ? k2:k1;
endmodule
