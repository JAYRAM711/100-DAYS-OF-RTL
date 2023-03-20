`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:48:43 03/20/2023 
// Design Name: 
// Module Name:    pipo_bh 
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
module pipo_bh(
    input [3:0] d,
    input clk,rst,
    output reg [3:0] q,qbar
    );

always@(posedge clk)
begin
if(rst==1) begin
q=4'b0000; qbar=~q; end
else begin
q= d;
end
end

endmodule
