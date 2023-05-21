`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:54:45 05/21/2023
// Design Name:   traffic_light_controller
// Module Name:   /home/jay711/VERILOG_CODES/PROJECTS/TRAFFIC_LIGHT_CONTROLLER/traffic_light_controller_tb.v
// Project Name:  TRAFFIC_LIGHT_CONTROLLER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: traffic_light_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module traffic_light_controller_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [2:0] light_M1;
	wire [2:0] light_MT;
	wire [2:0] light_M2;
	wire [2:0] light_S;
	wire [2:0] count;

	// Instantiate the Unit Under Test (UUT)
	traffic_light_controller uut (
		.clk(clk), 
		.rst(rst), 
		.light_M1(light_M1), 
		.light_MT(light_MT), 
		.light_M2(light_M2), 
		.light_S(light_S), 
		.count(count)
	);

initial
 begin
  clk=1'b1;
  forever #5 clk=~clk;
 end
 
initial
 begin
  rst=1'b1;
  #15;
  rst=1'b0;
  #1000;
  $stop;
 end

initial begin
$monitor("time=%g, rst=%b, count=%b, light_M1=%b, light_MT=%b, light_M2=%b, light_S=%b",$time,rst,count,light_M1,light_MT,light_M2,light_S);
end
      
endmodule

