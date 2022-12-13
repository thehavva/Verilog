`timescale 1ns / 1ps

module full_adder_2(x,y,number);
    input [2:0] x,y;
    output [3:0] number;
    wire [2:0] ci;
    
    full_Adder U1(x[0],y[0],0,number[0],ci[0]);
    full_Adder U2(x[1],y[1],ci[0],number[1],ci[1]);
    full_Adder U3(x[2],y[2],ci[1],number[2],ci[2]);
    assign number[3]=ci[2];
endmodule
