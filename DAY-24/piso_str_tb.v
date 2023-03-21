`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:11:04 03/21/2023
// Design Name:   piso_str
// Module Name:   /home/jay/VERILOG_CODES/SHIFT_REGISTERS/piso_str_tb.v
// Project Name:  shift_registers
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: piso_str
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module piso_str_tb;

	// Inputs
	reg [3:0] d;
	reg clk;
	reg rst;
	reg ls;

	// Outputs
	wire qout;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	piso_str uut (
		.d(d), 
		.clk(clk), 
		.rst(rst), 
		.ls(ls), 
		.qout(qout), 
		.qbar(qbar)
	);

initial begin
rst=1'b0;
clk=1'b0;
ls=1'b0;
d=4'b1001;
#2 ls=1'b1;

#10 ls=1'b0;
d=4'b0011;
#2 ls=1'b1;

end
	
always begin
#1 clk=~clk;
end    

initial begin
$monitor("time=%g rst=%b clk=%b ls=%b d=%b qout=%b qbar=%b",$time,rst,clk,ls,d,qout,qbar);
#25 $finish;
end
      
endmodule

