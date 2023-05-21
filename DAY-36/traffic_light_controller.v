`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:30:16 05/21/2023 
// Design Name: 
// Module Name:    traffic_light_controller 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

//module and port declaration
module traffic_light_controller(
    input clk,rst,
    output reg [2:0] light_M1,
    output reg [2:0] light_MT,
    output reg [2:0] light_M2,
    output reg [2:0] light_S,
	 output reg [2:0] count
    );

reg [2:0] p_state;


//local parameters declaration
parameter s1=3'b000;
parameter s2=3'b001;
parameter s3=3'b010;
parameter s4=3'b011;
parameter s5=3'b100;
parameter s6=3'b101;

parameter sec_7=3'b111,sec_5=3'b101,sec_3=3'b011,sec_2=3'b010;

//code block for present state 
always@(posedge clk)
begin
if(rst==1) begin
p_state =s1;
count =3'b000;
end

else begin

case(p_state)
s1: if(count == sec_7)
    begin
	 p_state= s2;
	 count=3'b000;
    end
	 else
	 begin
	 p_state= s1;
	 count= count+3'b001; 
	 end
	 
s2: if(count == sec_2)
	 begin
	 p_state= s3;
	 count=3'b000;
	 end
	 else
    begin
	 p_state= s2;
	 count= count+3'b001;
	 end
	 
s3: if(count == sec_5)
    begin
	 p_state= s4;
	 count=3'b000;
	 end
	 else
	 begin
	 p_state= s3;
	 count= count+3'b001;
	 end
	 
	 
s4: if(count == sec_2)
    begin
	 p_state= s5;
	 count=3'b000;
	 end
	 else
	 begin
	 p_state= s4;
	 count= count+3'b001;
	 end
	 
	 
s5: if(count == sec_3)
    begin
	 p_state= s6;
	 count=3'b000;
	 end
	 else
	 begin
	 p_state= s5;
	 count= count+3'b001;
	 end

s6: if(count == sec_2)
    begin
	 p_state= s1;
	 count=3'b000;
	 end
	 else
	 begin
	 p_state= s6;
	 count= count+3'b001;
	 end
	 

default: begin
         p_state= s1;
         count= 3'b000;
			end
			
endcase
end
end


//code block for output states
always@(p_state)
begin
case(p_state)

s1: begin
    light_M1 <= 3'b001;
	 light_MT <= 3'b100;
	 light_M2 <= 3'b001;
	 light_S  <= 3'b100;
    end
	 
s2: begin
    light_M1 <= 3'b001;
	 light_MT <= 3'b100;
	 light_M2 <= 3'b010;
	 light_S  <= 3'b100;
    end
	  
s3: begin
    light_M1 <= 3'b001;
	 light_MT <= 3'b001;
	 light_M2 <= 3'b100;
	 light_S  <= 3'b100;
    end
	 
s4: begin
    light_M1 <= 3'b010;
	 light_MT <= 3'b010;
	 light_M2 <= 3'b100;
	 light_S  <= 3'b100;
    end
	
s5: begin
    light_M1 <= 3'b100;
	 light_MT <= 3'b100;
	 light_M2 <= 3'b100;
	 light_S  <= 3'b001;
    end
	 
s6: begin
    light_M1 <= 3'b100;
	 light_MT <= 3'b100;
	 light_M2 <= 3'b100;
	 light_S  <= 3'b010;	 
	 end
	 
default: begin
    light_M1 <= 3'b001;
	 light_MT <= 3'b100;
	 light_M2 <= 3'b001;
	 light_S  <= 3'b100;
    end
	 
endcase
end
 
endmodule
