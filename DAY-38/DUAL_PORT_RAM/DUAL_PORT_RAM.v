`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:18:05 05/25/2023 
// Design Name: 
// Module Name:    DUAL_PORT_RAM 
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
module DUAL_PORT_RAM(
    input clk,
    input [7:0] data_1,data_2,
    input [5:0] addr_1,addr_2,
    input write_enable_1,write_enable_2,
    output reg [7:0] out_1,out_2
    );
reg [7:0] ram [63:0];

always@(posedge clk)
begin
if(write_enable_1==1) begin
ram[addr_1] <= data_1;
end
else begin
out_1 <= ram[addr_1];
end
end

always@(posedge clk)
begin
if(write_enable_2==1) begin
ram[addr_2] <= data_2;
end
else begin
out_2 <= ram[addr_2];
end
end

endmodule
