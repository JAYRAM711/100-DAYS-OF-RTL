`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:40:30 02/27/2023 
// Design Name: 
// Module Name:    mux8_1 
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
module mux8_1(
    input [2:0] s,
    input [7:0] I,
    output y
    );
	 wire p,q,r;
assign p=~s[2];
assign q=~s[1];
assign r=~s[0];
assign y=(p&q&r&I[0])| (p&q&s[0]&I[1])| (p&s[1]&r&I[2])| (p&s[1]&s[0]&I[3])| 
         (s[2]&q&r&I[4])| (s[2]&q&s[0]&I[5])| (s[2]&s[1]&r&I[6])| (s[2]&s[1]&s[0]&I[7]);

endmodule
