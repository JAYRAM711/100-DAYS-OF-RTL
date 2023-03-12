`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:27:36 03/12/2023 
// Design Name: 
// Module Name:    odd_parity 
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
module odd_parity(
    input [2:0] data,
    input odd_p,
    output result
    );

assign result = ~(data[2]^data[1]^data[0]^odd_p);

endmodule
