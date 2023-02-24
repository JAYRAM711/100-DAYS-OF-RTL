`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:03:21 02/24/2023 
// Design Name: 
// Module Name:    halfsubtractor_st 
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
module halfsubtractor_st(
    input a,b,
    output d,bout
    );
	 wire p;
	 xor1 x1(a,b,d);
	 not1 n1(a,p);
	 and1 a1(p,b,bout);

endmodule

