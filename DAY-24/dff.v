`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:13:28 03/15/2023 
// Design Name: 
// Module Name:    dff 
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
module dff(
    input d,
	 input clk,rst,
    output reg qout,qbar);
always@(posedge clk)
begin
if(rst==1'b1) begin
qout= 1'b0;
qbar= 1'b1; end

else begin
qout= d;
qbar=~d;
end

end
endmodule
