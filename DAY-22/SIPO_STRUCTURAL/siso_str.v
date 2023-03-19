`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:06:53 03/15/2023 
// Design Name: 
// Module Name:    siso 
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
module siso(
    input din,clk,rst,
	 output qout,qbar
    );
	 
	 wire [2:0]q,qb;
dff d1(din,clk,rst,q[0],qb[0]),
   d2(q[0],clk,rst,q[1],qb[1]),
	d3(q[1],clk,rst,q[2],qb[2]),
	d4(q[2],clk,rst,qout,qbar);

endmodule
