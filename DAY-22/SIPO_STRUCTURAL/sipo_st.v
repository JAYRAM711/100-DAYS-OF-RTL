`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:41:58 03/19/2023 
// Design Name: 
// Module Name:    sipo_st 
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
module sipo_st(
    input din,clk,rst,
    inout [0:3] q,
    inout [0:3] qbar
    );
d_ff d1(din,clk,rst,q[0],qbar[0]),
    d2(q[0],clk,rst,q[1],qbar[1]),
	 d3(q[1],clk,rst,q[2],qbar[2]),
	 d4(q[2],clk,rst,q[3],qbar[3]);

endmodule
