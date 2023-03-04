`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:48:16 03/04/2023 
// Design Name: 
// Module Name:    clk_div_by3 
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
module clk_div_by3(
    input clk,rst,
    output clkout,output reg q0,q1,q2
    );

wire d0;

always@(posedge clk)
begin
if(rst==1) begin
q0<=1'b0;
q1<=1'b0; end
else begin
q0<=d0;
q1<=q0; end
end

always@(negedge clk)  //for 50% duty cycle ff-3 is given with negedge clk, if posedge is provided 75%dutycyle is give at output
begin
if(rst==1) begin
q2<=1'b0; end
else begin
q2<=q1; end
end

assign d0= ~q0 &~q1;
assign clkout = q1 | q2;

endmodule
