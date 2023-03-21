`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:12:01 03/21/2023 
// Design Name: 
// Module Name:    piso_str 
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
module piso_str(
    input [3:0] d,
    input clk,rst,ls,
	 output qout,qbar
    );
wire lsbar;
wire [0:2] q,qb;
wire [8:0] x;

not_gate n1(ls,lsbar);

and_gate a1(q[0],ls,x[0]),
    a2(d[1],lsbar,x[1]),
	 a3(q[1],ls,x[2]),
	 a4(d[2],lsbar,x[3]),
	 a5(q[2],ls,x[4]),
	 a6(d[3],lsbar,x[5]);
	 
or_gate o1(x[0],x[1],x[6]),
        o2(x[2],x[3],x[7]),
	     o3(x[4],x[5],x[8]);
	
dff d1(d[0],clk,rst,q[0],qb[0]),
   d2(x[6],clk,rst,q[1],qb[1]),
	d3(x[7],clk,rst,q[2],qb[2]),
	d4(x[8],clk,rst,qout,qbar);
endmodule
