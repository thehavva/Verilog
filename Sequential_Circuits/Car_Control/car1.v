`timescale 1ns / 1ps

module car1(clk,front,left,right,go_front,go_left,go_right);
    input clk,front,left,right;
    output reg go_front,go_left,go_right;
    
    initial begin
    go_front=0;
    go_left=0;
    go_right=0;
    end
    
    always @(posedge clk)
    begin
        if((front==0) && (left==0) && (right==0))
        begin
            go_front=1;
            go_left=0;
            go_right=0;
        end
        else if((front==0) && (left==1) && (right==0))
        begin
            go_front=1;
            go_left=0;
            go_right=0;
        end
        else if((front==0) && (left==0) && (right==1))
        begin
            go_front=1;
            go_left=0;
            go_right=0;
        end
        else if((front==0) && (left==1) && (right==1))
        begin
            go_front=1;
            go_left=0;
            go_right=0;
        end
        else if((front==1) && (left==0) && (right==0))
        begin
            go_front=0;
            go_left=0;
            go_right=1;
        end
        else if((front==1) && (left==1) && (right==0))
        begin
            go_front=0;
            go_left=0;
            go_right=1;
        end
        else if((front==1) && (left==0) && (right==1))
        begin
            go_front=0;
            go_left=1;
            go_right=0;
        end
        else if((front==1) && (left==1) && (right==1))
        begin
            go_front=0;
            go_left=0;
            go_right=0;
        end
    end
endmodule
