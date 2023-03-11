`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:45:01 03/11/2023 
// Design Name: 
// Module Name:    odd_parity_df 
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
module odd_parity_df(
    input [2:0] data,
    output odd_p
    );

assign odd_p=~(data[0]^data[1]^data[2]);

endmodule
