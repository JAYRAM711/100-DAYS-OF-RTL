`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:45:34 02/28/2023 
// Design Name: 
// Module Name:    demux1_8 
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
module demux1_8(
    input in,
    input [2:0] s,
    output [7:0] y
    );
	 wire p,q,r;

assign p=~s[2];
assign q=~s[1];
assign r=~s[0];
assign y[0]= in & p & q & r;  
assign y[1]= in & p & q & s[0];  
assign y[2]= in & p & s[1] & r;  
assign y[3]= in & p & s[1] & s[0];  
assign y[4]= in & s[2] & q & r;  
assign y[5]= in & s[2] & q & s[0];  
assign y[6]= in & s[2] & s[1] & r;  
assign y[7]= in & s[2] & s[1] & s[0];  



endmodule
