`timescale 1ns / 1ps



module boolean_algebra(out,data);
    input data;
    output [3:0] out;
    
    parameter c1=1'b1;
    parameter c2=1'b0;
    
    assign out[0]=data | c1;
    assign out[1]=data & c2;
    assign out[2]=data ^ c1;
    assign out[3]=data & (~data);
endmodule
