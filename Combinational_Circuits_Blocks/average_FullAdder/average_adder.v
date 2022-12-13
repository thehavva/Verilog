`timescale 1ns / 1ps

module average_adder(x,y,number,average);
    input [2:0] x,y;
    output [3:0] number,average;
    wire [2:0] ci;
    
    average_full_adder U1(x[0],y[0],0,number[0],ci[0]);
    average_full_adder U2(x[1],y[1],ci[0],number[1],ci[1]);
    average_full_adder U3(x[2],y[2],ci[1],number[2],ci[2]);
    assign number[3]=ci[2];
    assign average=number>>1;
endmodule