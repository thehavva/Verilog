`timescale 1ns / 1ps

module recycling_tb;
    reg clk,s,box1_sensor,box2_sensor;
    reg [3:0] temperature;
    wire [1:0] box1, box2;
    wire [1:0] protector;
    wire led,buzzer,out;
    
    recycling UUT(clk,s,box1,box2,box1_sensor,box2_sensor,protector,temperature,led,buzzer,out);
    
    initial begin
    clk=0;
    #10 
  
  /*  box1_sensor=1;
    box2_sensor=0;
    s=1;
   // #600000000000; // after boxes are open wait 10 minutes and then control the heat 
   //how much it is but it is too long we cant use it is in testbench 
   #100 temperature=4'b1000; */
     
    #10 
    box1_sensor=0;
    box2_sensor=1;
    s=0;
    #100 temperature=4'b1011;
    
    #10 
    box1_sensor=1;
    box2_sensor=1;
    s=1;
    #100 temperature=4'b0011;
    
    #10 
    box1_sensor=0;
    box2_sensor=0;
    s=1;
    #100 temperature=4'b1001;
    end 
    
    always 
    #10 clk=~clk;
endmodule
