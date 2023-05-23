`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:27:54 05/23/2023
// Design Name:   car_parking_system
// Module Name:   /home/jay711/VERILOG_CODES/PROJECTS/CAR_PARKING_SYSTEM/car_parking_system_tb.v
// Project Name:  CAR_PARKING_SYSTEM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: car_parking_system
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module car_parking_system_tb;

	// Inputs
	reg clk;
	reg rst;
	reg entry_sensor;
	reg exit_sensor;
	reg [1:0] password_1;
	reg [1:0] password_2;
	

	// Outputs
	wire green_led;
	wire red_led;
	wire [6:0] hex_1;
	wire [6:0] hex_2;
	wire [3:0] available_spaces;
	wire [3:0] parked_spaces;
	wire [3:0] vehicle_counter;

	// Instantiate the Unit Under Test (UUT)
	car_parking_system uut (
		.clk(clk), 
		.rst(rst), 
		.entry_sensor(entry_sensor), 
		.exit_sensor(exit_sensor), 
		.password_1(password_1), 
		.password_2(password_2), 
		.green_led(green_led), 
		.red_led(red_led), 
		.hex_1(hex_1), 
		.hex_2(hex_2), 
		.available_spaces(available_spaces), 
		.parked_spaces(parked_spaces),
		.vehicle_counter(vehicle_counter)
	);

 initial begin
 clk = 1;
 forever #5 clk = ~clk;
 end
 
 initial begin

 rst = 1;
 entry_sensor = 0;
 exit_sensor = 0;
 password_1 = 0;
 password_2 = 0;
 
 #10; 
 rst = 1'b0; 
      entry_sensor = 1'b1;  
      exit_sensor = 1'b0;
      password_1 = 2'b01;
      password_2 = 2'b01;
 #80;  exit_sensor = 1'b1;
 end
 
initial begin
$monitor("time=%g, clk=%b, rst=%b, entry_sensor=%b, exit_sensor=%b, password_1=%b, password_2=%b,\ngreen_led=%b, red_led=%b, hex_1=%b, hex_2=%b, available_spaces=%d, parked_spaces=%d, vehicle_counter=%d",
          $time, clk, rst, entry_sensor, exit_sensor, password_1, password_2, green_led, red_led, hex_1, hex_2, available_spaces, parked_spaces,vehicle_counter);
#100 $finish;
end
      
endmodule

