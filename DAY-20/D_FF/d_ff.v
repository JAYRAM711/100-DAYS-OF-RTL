`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:14:53 03/14/2023 
// Design Name: 
// Module Name:    d_ff 
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
module d_ff(
    input d,clk,
    output reg q,qbar
    );
always@(posedge clk)
begin
q=1'b0; qbar=1'b1;

if(clk==1) begin
if(d==0) begin
q=1'b0; qbar=1'b1; end
else if(d==1) begin
q=1'b1; qbar=1'b0; end
end

if(clk==0) begin
q=q; qbar=qbar; end

end

endmodule
