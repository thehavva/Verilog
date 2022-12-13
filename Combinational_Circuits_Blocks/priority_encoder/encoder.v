`timescale 1ns / 1ps

module encoder(x,y);
    input [3:0] x;
    output reg [1:0] y;
    initial y=2'b00;
    always @ (x)
    begin 
    casex(x)
    4'b0001 : y=2'b00;
    4'b001x : y=2'b01;
    4'b01xx : y=2'b10;
    4'b1xxx : y=2'b11;
    endcase
    end 
endmodule
