`timescale 1ns / 1ps

module recycling(clk,s,box1,box2,box1_sensor,box2_sensor,protector,temperature,led,buzzer,out);
    input clk; // clock cycle for control the sistem with time
    input s; //control input for multiplexer which is for choicing boxes.
    input box1_sensor, box2_sensor; //  The sensor is used to understand whether the container is full, if the sensor data is 1, the lower cover is opened, 
    //if it is equal to 0, the upper cover is opened.
    output reg [1:0] box1,box2;// every outside box(container) has 2 covers as under and upper.
    input [3:0] temperature;   //temperature sensor 
    reg  cauldron=0; // where the heat treatment is carried out, not output or input.
    output reg[1:0] protector; // cold water bottom protector used to cool the boiler.
    output reg out;     // output cap(kapak) to send the heated substance to the relevant place.
    output reg led;     // controling the temperature.
    output reg buzzer;  // another controling the high temperature.  
    initial begin
    box1=2'b01; // upper cap is open
    box2=2'b01; //upper cap is open
    protector=2'b00;
    out=0;
    led=0;
    buzzer=0;
    end
    
    always @(posedge clk)
    begin
    if(((box1_sensor==1))&&((box2_sensor==1)))
    begin
        box1[0]=~box1[0];
        box2[0]=~box2[0]; 
        
        if(s==0)
        begin
            box1[1]<=1; // bottom cap open
            box2[1]<=0; // bottom cap 
            cauldron<=1;
            // withnin 10 minutes 
            if((temperature >= 7) & (temperature <= 10))    //temperature >= 200 & temperature <= 400
            begin
                led <=1;
                protector[0] <=1; // air condition is satisfying
                protector[1] <=0;
                out <=0; 
            end
            else if(temperature >10)
            begin
                led <=1;
                buzzer <=1;         
                protector[0] <= 1;      
                protector[1] <=1;       // woter condition is satisfying
                out <=0;
            end
            else if(temperature <7)
            begin
                led=0;
                buzzer=0;
                out=1;      // cycle is completed.
                cauldron <=0;
            end
            box1[1]=~box1[1];
            box1[0]=~box1[0];                      
        end
        
        if(s==1)
        begin
            box1[1]<=0;  //box1 is close.
            box2[1]<=1; //box2 is open.
            cauldron<=1;
            // withnin 10 minutes 
            if((temperature >= 7) & (temperature <= 10))
            begin
                led <=1;
                protector[0] <= 1;  //air condition is satisfying.
                protector[1] <= 0;
                out <=0;
            end
            else if(temperature > 10)
            begin
                led <=1;
                buzzer <=1;
                protector[0] <= 1;      //woter condition is satisfying 
                protector[1] <=1;
                out <=0;
            end
            else if(temperature < 7)
            begin
                led=0;
                buzzer=0;
                out=1;
                cauldron <=0;
            end
            box2[1]=~box2[1];
            box2[0]=~box2[0];             
        end
      end
     
      else if((box1_sensor==1) && (box2_sensor==0))
      begin
            box1[1]<=1; // bottom cap open
            box1[0]=~box1[0]; //upper cap close
            box2[1]<=0; // bottom cap 
            cauldron<=1;
            // withnin 10 minutes 
            if((temperature >= 7) & (temperature <= 10))
            begin
                led <=1;
                protector[0] <=1; // air condition is satisfying
                protector[1] <=0;
                out <=0; 
            end
            else if(temperature > 10)
            begin
                led <=1;
                buzzer <=1;         
                protector[0] <= 1;      
                protector[1] <=1;       // woter condition is satisfying
                out <=0;
            end
            else if(temperature < 7)
            begin
                led=0;
                buzzer=0;
                out=1;      // cycle is completed.
                cauldron <=0;
            end
            box1[1]=~box1[1];
            box1[0]=~box1[0];          
      end
      
      else if((box2_sensor==1) && (box1_sensor==0))
      begin
            box1[1]<=0;  //box1 is close.
            box2[1]<=1; //box2 is open.
            box2[0]=~box2[0];
            cauldron<=1;
            // withnin 10 minutes 
            if((temperature >= 7) & (temperature <= 10))
            begin
                led <=1;
                protector[0] <= 1;  //air condition is satisfying.
                protector[1] <= 0;
                out <=0;
            end
            else if(temperature > 10)
            begin
                led <=1;
                buzzer <=1;
                protector[0] <= 1;      //woter condition is satisfying 
                protector[1] <=1;
                out <=0;
            end
            else if(temperature < 7)
            begin
                led=0;
                buzzer=0;
                out=1;
                cauldron <=0;
            end
            box2[1]=~box2[1];
            box2[0]=~box2[0];             
      end
      
      else 
      if((box2_sensor==0) && (box1_sensor==0))
      begin
            led<=0;
            buzzer<=0;
            out<=0;
            cauldron <=0;
            protector<=2'b00;
            box1=2'b01; 
            box2=2'b01;
      end
    end
endmodule
