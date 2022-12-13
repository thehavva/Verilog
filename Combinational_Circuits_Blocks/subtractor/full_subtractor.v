`timescale 1ns / 1ps

module full_subtractor(x,y,number);
    input [3:0] x, y;
    output [4:0] number;
    wire [3:0] ci;
    subtractor U1(x[0], y[0], 0, number[0], ci[0]);
    subtractor U2(x[1], y[1], ci[0], number[1], ci[1]);
    subtractor U3(x[2], y[2], ci[1], number[2], ci[2]);
    subtractor U4(x[3], y[3], ci[2], number[3], ci[3]);
    assign number[4]=ci[3];
    
endmodule
