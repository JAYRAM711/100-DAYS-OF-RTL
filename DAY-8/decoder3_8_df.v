`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:49:27 03/01/2023 
// Design Name: 
// Module Name:    decoder3_8_df 
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
module decoder3_8_df(
    input [2:0] d,
    output [7:0] y
    );
	 wire p,q,r;
assign p= ~d[2];
assign q= ~d[1];
assign r= ~d[0];
assign y[0]= p&q&r;
assign y[1]= p&q&d[0];
assign y[2]= p&d[1]&r;
assign y[3]= p&d[1]&d[0];
assign y[4]= d[2]&q&r;
assign y[5]= d[2]&q&d[0];
assign y[6]= d[2]&d[1]&r;
assign y[7]= d[2]&d[1]&d[0];

endmodule
