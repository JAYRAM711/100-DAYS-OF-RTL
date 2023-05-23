`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:28:25 05/23/2023 
// Design Name: 
// Module Name:    car_parking_system 
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
module car_parking_system(
    input clk,rst,entry_sensor,exit_sensor,
	 input [1:0] password_1,password_2,
	 output reg green_led,red_led,
	 output reg [6:0] hex_1,hex_2,
	 output reg [3:0] available_spaces,parked_spaces,
	 output reg [3:0] vehicle_counter
	 );
	 
reg [3:0] total_spaces=4'b1000;
reg [2:0] current_state,next_state;

reg [1:0] wait_time;

//declaring parameters list
parameter idle = 3'b000, 
          wait_state=3'b001, 
			 right_password=3'b010, 
			 wrong_password=3'b011, 
			 stop=3'b100;

//declarimg current state			 
always@(posedge clk)
begin
if(rst==1) begin
current_state<= idle; end
else begin
current_state<= next_state; end
end

//parking space management
always@(posedge clk) 
begin
if(rst==1) begin //reseting whole design
available_spaces<= total_spaces;
parked_spaces<= 0;
vehicle_counter<=4'b0; end
else begin
if ((entry_sensor==1) && (available_spaces>0))begin //entry of 1 vehicle
available_spaces<= available_spaces - 3'b001;
parked_spaces<= parked_spaces + 3'b001; 
vehicle_counter<=vehicle_counter + 4'b0001; end
else if ((exit_sensor==1) && (parked_spaces>0))begin //exit of 1 vehicle
available_spaces<= available_spaces + 3'b001;
parked_spaces<= parked_spaces - 3'b001; 
vehicle_counter<= vehicle_counter - 4'b0001; end
else begin //no vehicle entered and exited
available_spaces<= total_spaces;
parked_spaces<= 0;
vehicle_counter<=4'b0; end
end
end

//declarationn of waiting period in the wait_state
always@(posedge clk)
begin
   if(rst==1) begin
   wait_time<= 2'b0; end
	else begin
   if(current_state==wait_state) begin
   wait_time<= wait_time + 2'b01; end
   else begin
   wait_time<= 2'b0; end
	end
end

//declaration of next state
always@(*) 
begin
case(current_state)
idle: begin
      if((entry_sensor==1) && (available_spaces>0)) begin
      next_state<= wait_state; end
		else begin
		next_state<= idle; end
		end
		
wait_state: begin
      if(wait_time<= 3'b011) begin
      next_state<= wait_state; end
      else begin
		if ((password_1==2'b01) && (password_2==2'b01)) begin
      next_state<= right_password; end
		else begin
		next_state<= wrong_password; end
		end
		end
		
right_password: begin
      if((entry_sensor==1) && (exit_sensor==1)) begin
      next_state<= stop; end
		else if((exit_sensor==1)) begin
		next_state<= idle; end
		else begin
		next_state<= right_password; end
		end
		
wrong_password: begin
      if((password_1==2'b01) && (password_2==2'b01)) begin
      next_state<= right_password; end
		else begin
		next_state<= wrong_password; end
		end
		
stop: begin 
      if((password_1==2'b01) && (password_2==2'b01)) begin
      next_state<= right_password; end
		else begin
		next_state<= stop; end
      end
		
default: begin
      next_state<= idle;
      end
		
endcase
end


always@(posedge clk)
begin

case(current_state)

idle: begin //starting state with no entry and exit of vehicles
      green_led<= 1'b0;
		red_led<= 1'b0;
		hex_1<= 7'b0000000; //0
		hex_2<= 7'b0000000; //0
		end
		
wait_state: begin //vechile waiting in the lobby
      green_led<= ~green_led;
		red_led<= 1'b0;
		hex_1<= 7'b1111001; //alphabet-E
		hex_2<= 7'b0110111; //N -> ENTER
		end
		
right_password: begin //vehicle entering and providing right_password
      green_led<= 1'b1;
		red_led<= 1'b0;
		hex_1<= 7'b1111001; //6
		hex_2<= 7'b0000000; //0 -> GO
		end
		
wrong_password: begin //vehicle entering and providing wrong_password
      green_led<= 1'b0;
		red_led<= 1'b1;
		hex_1<= 7'b1111001; //E
		hex_2<= 7'b1111001; //E -> ERROR
		end
		
stop: begin //stay of the vehicle for some period
      green_led<= 1'b0;
		red_led<= ~red_led;
		hex_1<= 7'b1101101; //5
		hex_2<= 7'b1110011; //P -> STOP
		end
		
endcase
end

endmodule
