`timescale 1ns / 1ps

module pwm(clk, led);
    input clk;
    output [3:0] led;
    // create a simple counter 
    reg [7:0] counter = 0;
    always @ (posedge clk) begin
    if (counter<100) counter <= counter +1;
    else counter <=0;
    end 
    
    assign led[0] = (counter<20) ? 1:0; // 20 duty cycle 
    assign led[1] = (counter<40) ? 1:0; // 40 duty cycle
    assign led[2] = (counter<60) ? 1:0; // 60 duty cycle
    assign led[3] = (counter<80) ? 1:0; // 80 duty cycle
    
endmodule
