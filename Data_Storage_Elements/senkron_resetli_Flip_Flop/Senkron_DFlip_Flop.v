`timescale 1ns / 1ps

module Senkron_DFlip_Flop(in,clk,q,qn,reset);
    input in,clk,reset;
    output reg q,qn;
    always @ (posedge clk) begin 
    //for asenkron DFlip Flop, we should define always case as : always @ (posedge clk, posedge reset) 
    if(reset==1) begin
        q=0;
        qn=1;
        end
     else begin 
     q=in;
     qn=~in;
     end 
   end 
endmodule