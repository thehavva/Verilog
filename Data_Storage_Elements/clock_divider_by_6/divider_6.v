`timescale 1ns / 1ps

module divider_6(clk,out);
    input clk;
    output reg out =0;
    integer counter=0;
    always @ (posedge clk)
    begin
    counter=counter +1;
    if(counter==3) begin
    out=~out;
    counter=0;
    end 
    end
endmodule
