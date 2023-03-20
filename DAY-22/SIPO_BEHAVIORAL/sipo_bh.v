`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:36:59 03/19/2023 
// Design Name: 
// Module Name:    sipo_bh 
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
module sipo_bh(
    input din,clk,rst,
    output reg [0:3] q,qbar
    );

always@(posedge clk)
begin
if(rst==1) begin
q<= 1'b0;qbar<= 1'b1; end

else begin
q[0]<= din;
q[1]<= q[0];
q[2]<= q[1];
q[3]<= q[2];
qbar<= ~q;
end
end

endmodule
