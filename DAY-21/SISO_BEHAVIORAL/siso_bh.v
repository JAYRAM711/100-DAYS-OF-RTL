`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:12:13 03/18/2023 
// Design Name: 
// Module Name:    siso_bh 
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
module siso_bh(
    input din,clk,rst,
    output reg qout,qoutb
    );
reg [2:0] q;

always@(posedge clk)
begin
if(rst) begin
qout<= 1'b0;qoutb<= 1'b1; end

else begin
q[0]<= din;
q[1]<= q[0];
q[2]<= q[1];
qout<= q[2];
qoutb<= ~qout; end
end
endmodule
