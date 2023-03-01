`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:24:54 03/01/2023 
// Design Name: 
// Module Name:    encoder8_3 
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
module encoder8_3(
    input [7:0] d,
    output [2:0] y
    );
assign y[2]= d[4] | d[5] | d[6] | d[7];
assign y[1]= d[2] | d[3] | d[6] | d[7];
assign y[0]= d[1] | d[3] | d[5] | d[7];

endmodule
