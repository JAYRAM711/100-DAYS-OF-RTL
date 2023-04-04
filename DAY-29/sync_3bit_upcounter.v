`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:31:05 04/04/2023 
// Design Name: 
// Module Name:    sync_3bit_upcounter 
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
module sync_3bit_upcounter(
    input clk,rst,
    output [2:0] q
    );
wire p;

tff t1(1'b1,clk,rst,q[0]),
   t2(q[0],clk,rst,q[1]),
	t3(p,clk,rst,q[2]);
	
and_gate a1(q[0],q[1],p);

endmodule
