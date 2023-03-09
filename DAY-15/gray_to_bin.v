`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:27:56 03/09/2023 
// Design Name: 
// Module Name:    gray_to_bin_st 
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
module gray_to_bin_st(
    input [3:0] gray,
    output [3:0] bin);
    
	 
assign bin[3]= gray[3];
assign bin[2]= gray[2]^bin[3];
assign bin[1]= gray[1]^bin[2];
assign bin[0]= gray[0]^bin[1];



endmodule
