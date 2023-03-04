`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:05:39 03/03/2023 
// Design Name: 
// Module Name:    clock_divider 
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
module clock_divider(
    input clk,rst,
    output reg divideby2,divideby4,divideby8,divideby16,divideby32
    );
reg [4:0]d;

initial d=0;

always@(posedge clk)
begin
if(rst==0)
begin
d=d+5'b00001;
divideby2=d[0];
divideby4=d[1];
divideby8=d[2]; 
divideby16=d[3];
divideby32=d[4];
 end
end
endmodule
