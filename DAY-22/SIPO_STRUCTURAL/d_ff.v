`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:44:14 03/19/2023 
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
module d_ff(input din,clk,rst,output reg q,qbar);

always@(posedge clk)
begin
if(rst==1'b1) begin
q= 1'b0;
qbar= 1'b1; end

else begin
q= din;
qbar=~din;
end

end
endmodule
