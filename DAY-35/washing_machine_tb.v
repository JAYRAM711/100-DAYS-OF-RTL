`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:34:16 05/19/2023
// Design Name:   washing_machine
// Module Name:   /home/jay711/VERILOG_CODES/PROJECTS/WASHING_MACHINE/washing_machine_tb.v
// Project Name:  WASHING_MACHINE
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: washing_machine
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module washing_machine_tb;

	// Inputs
	reg clk;
	reg rst;
	reg start;
	reg door_close;
	reg filled;
	reg normal_wash;
	reg quick_wash;
	reg detergent_added;
	reg cycle_time_out;
	reg drained;
	reg spin_time_out;

	// Outputs
	wire door_lock;
	wire fill_valve_on;
	wire water_wash;
	wire soap_wash;
	wire motor_on;
	wire drain_valve_on;
	wire done;

	// Instantiate the Unit Under Test (UUT)
	washing_machine uut (
		.clk(clk), 
		.rst(rst), 
		.start(start), 
		.door_close(door_close), 
		.filled(filled), 
		.normal_wash(normal_wash), 
		.quick_wash(quick_wash), 
		.detergent_added(detergent_added), 
		.cycle_time_out(cycle_time_out), 
		.drained(drained), 
		.spin_time_out(spin_time_out), 
		.door_lock(door_lock), 
		.fill_valve_on(fill_valve_on), 
		.water_wash(water_wash), 
		.soap_wash(soap_wash), 
		.motor_on(motor_on), 
		.drain_valve_on(drain_valve_on), 
		.done(done)
	);


always begin
forever #5 clk = ~clk;
end 

initial begin

      clk=1;
		#10 rst = 0;
		#10 start = 1;
		#10 door_close = 1;
		#10 filled = 1;
		#10 normal_wash = 1;
		#10 quick_wash = 0;
		#10 detergent_added = 1;
		#10 cycle_time_out = 1;
		#10 drained = 1;
		#10 spin_time_out = 1;
		
		#10 start = 1;
		#10 door_close = 1;
		#10 filled = 1;
		#10 normal_wash = 0;
		#10 quick_wash = 1;
		#10 detergent_added = 1;
		#10 cycle_time_out = 1;
		#10 drained = 1;
		#10 spin_time_out = 1;



end
	
initial begin
$monitor("time=%g,clk=%b,rst=%b,start=%b,door_close=%b,filled=%b,normal_wash=%b,quick_wash=%b,detergent_added=%b,cycle_time_out=%b,drained=%b,spin_time_out=%b,door_lock=%b,fill_valve_on=%b,water_wash=%b,soap_wash=%b,motor_on=%b,drain_valve_on=%b,done=%b",
$time,clk,rst,start,door_close,filled,normal_wash,quick_wash,detergent_added,cycle_time_out,drained,spin_time_out,door_lock,fill_valve_on,water_wash,soap_wash,motor_on,drain_valve_on,done);
#250 $finish;
end

endmodule

