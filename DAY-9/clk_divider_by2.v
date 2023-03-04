`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:28:14 03/04/2023 
// Design Name: 
// Module Name:    clk_divider_by2 
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
module clk_divider_by2(
    input clk,
    output reg q
    );
initial q=0;
always@(posedge clk)
begin
q=~q;
end

endmodule
