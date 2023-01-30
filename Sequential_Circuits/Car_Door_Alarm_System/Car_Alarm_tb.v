`timescale 1ns / 1ps

module Car_Alarm_tb;
    reg [6:0] segment;
    wire front1,front2,back1,back2,trunk;
    wire bttnL,bttnR,bttnU,bttnD,bttnC;
    
    Car_Alarm UUT(front1,front2,back1,back2,trunk,segment,bttnL,bttnR,bttnU,bttnD,bttnC);
    
    initial begin
        segment=7'b0001110;
        #20;
    end 
endmodule
