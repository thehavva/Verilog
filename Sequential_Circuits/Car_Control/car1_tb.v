`timescale 1ns / 1ps

module car1_tb;
    reg clk,front,left,right;
    wire go_front,go_left,go_right;
   
    car1 UUT(clk,front,left,right,go_front,go_left,go_right);
    
    initial begin
    clk=0;
 
    front=0;
    left=1;
    right=1;
    #10;
    
    front=0;
    left=0;
    right=0;
    #10;
    
    front=1;
    left=0;
    right=0;
    #10;
    
    front=1;
    left=0;
    right=1;
    #10; 
    
    front=1;
    left=1;
    right=1;
    #10; 
    
    front=0;
    left=1;
    right=0;
    #10;
   
    front=1;
    left=0;
    right=0;
    #10;
    end
    
    always
    #10 clk=~clk;
endmodule
