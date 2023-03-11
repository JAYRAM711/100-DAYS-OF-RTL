`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:06:27 03/11/2023 
// Design Name: 
// Module Name:    even_parity_df 
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
module even_parity_df(
    input [2:0] data,
    output even_p
    );
	 
	 assign even_p=data[0]^data[1]^data[2];


endmodule
