`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:19 03/10/2023 
// Design Name: 
// Module Name:    comparator_bh 
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
module comparator_bh(
    input [3:0] a,b,
    output reg [2:0] y
    );
always@(*)
begin
if(a>b) begin
y[0] = 1'b1; //y[0] indicates a>b
y[1] = 1'b0;
y[2] = 1'b0;
end
else if(a==b) begin
y[0] = 1'b0;
y[1] = 1'b1; //y[1] indicates a=b
y[2] = 1'b0;
end
else if(a<b) begin
y[0] = 1'b0;
y[1] = 1'b0;
y[2] = 1'b1; //y[2] indicates a>b
end
else begin
y[0] = 1'bx;
y[1] = 1'bx;
y[2] = 1'bx;
end
end
endmodule
