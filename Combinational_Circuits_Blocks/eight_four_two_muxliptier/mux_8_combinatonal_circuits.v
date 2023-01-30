`timescale 1ns / 1ps

module mux_8_combinatonal_circuits(x,y,z,s0,s1,s2,s3,s4,s5,s6,s7,out);
    input [2:0] s0,s1,s2,s3,s4,s5,s6,s7;
    input x,y,z;
    output out;
    assign out=(s3&(~x)&y&z)|(s5&(~y)&x&z)|(s6&(~z)&x&y)|(s7&x&y&z);
endmodule
