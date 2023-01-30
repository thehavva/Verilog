`timescale 1ns / 1ps

module Car_Alarm(front1,front2,back1,back2,trunk,segment,bttnL,bttnR,bttnU,bttnD,bttnC);
    input [6:0] segment;
    output reg front1,front2,back1,back2,trunk;
    output reg bttnL,bttnR,bttnU,bttnD,bttnC;
    
    initial begin
    front1=0;
    front2=0;
    back1=0;
    back2=0;
    trunk=0;
    bttnC=0;
    bttnD=0;
    bttnL=0;
    bttnR=0;
    bttnU=0;
    end
    
    always @(segment)
    case(segment)
    7'b0001110:  //segment shows F
    begin
        front1=1; //first front door is open
        bttnL=1; //first door will be closed
        #10;
        front1=0;
    end
    7'b0000011 : //segment shows B
    begin
        front2=1; //second front door is open
        bttnR=1; //second door will be closed
        #10;
        front2=0;
    end
    7'b0000110:  //segment shows E
    begin
        back1=1; //first front door is open
        bttnU=1; //first door will be closed
        #10;
        back1=0;
    end
    7'b1000110 : //segment shows C
    begin
        back2=1; //second front door is open
        bttnD=1; //second door will be closed
        #10;
        back2=0;
    end
    7'b0100001 : //segment shows D 
    begin
        trunk=1;
        bttnC=1;
        #10;
        trunk=0;
    end
    endcase
    
    
endmodule
