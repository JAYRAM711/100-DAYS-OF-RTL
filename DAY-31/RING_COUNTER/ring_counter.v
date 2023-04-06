`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:18:46 04/05/2023 
// Design Name: 
// Module Name:    ring_counter 
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
module ring_counter(
    input clk,rst,
    output reg [3:0] q
    );

always@(posedge clk)
begin

if(rst==1) begin
q<=4'b1000; end

else begin
q<={q[0],q[3:1]};
end
end

endmodule
