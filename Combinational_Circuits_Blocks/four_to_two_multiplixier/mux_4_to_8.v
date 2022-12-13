`timescale 1ns / 1ps

module mux_4_to_8(s0,s1,s2,s3,y,z,out);
    input [2:0] s0,s1,s2,s3;
    input y,z;
    output out;
    assign out = y ?  (z ? s3:s2): (z ? s1:s0);
endmodule
