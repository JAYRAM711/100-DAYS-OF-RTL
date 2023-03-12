`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:50:19 03/12/2023 
// Design Name: 
// Module Name:    even_parity 
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
module even_parity(
    input [2:0] data,
	 input even_p,
    output result
    );

assign result = data[2]^data[1]^data[0]^even_p;

endmodule
