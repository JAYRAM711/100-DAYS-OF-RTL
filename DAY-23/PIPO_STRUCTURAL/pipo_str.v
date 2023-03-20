`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:54:47 03/20/2023 
// Design Name: 
// Module Name:    pipo_str 
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
module pipo_str(
    input [3:0] d,
    input clk,rst,
    output [3:0] q,qbar
    );

dff d1(d[0],clk,rst,q[0],qbar[0]),
   d2(d[1],clk,rst,q[1],qbar[1]),
	d3(d[2],clk,rst,q[2],qbar[2]),
	d4(d[3],clk,rst,q[3],qbar[3]);

endmodule
