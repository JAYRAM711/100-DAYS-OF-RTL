`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:11 03/08/2023 
// Design Name: 
// Module Name:    binary_to_grey 
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
module binary_to_grey(
    input [3:0] bin,
    output [3:0] grey
    );
	 
assign grey[3]= bin[3];
assign grey[2]= bin[3]^bin[2];
assign grey[1]= bin[2]^bin[1];
assign grey[0]= bin[1]^bin[0];

endmodule
