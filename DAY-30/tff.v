`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:36:30 04/04/2023 
// Design Name: 
// Module Name:    tff 
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
module t_ff(
    input t,clk,rst,
    output reg q,qbar
    );

always@(negedge clk)
begin

if(rst==1) begin
q=1'b0; qbar=1'b1; end
else
if(t==0) begin
q=q; qbar=qbar; end
else if(t==1) begin
q=~q; qbar=~qbar; end	
end

endmodule