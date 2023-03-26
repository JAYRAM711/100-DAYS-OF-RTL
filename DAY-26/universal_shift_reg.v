`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:55:34 03/26/2023 
// Design Name: 
// Module Name:    universal_shift_reg 
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
module universal_shift_reg(
    input [3:0] p_in,
    output reg [3:0] p_out,
    input s_right_in,
    output s_right_out,
    input s_left_in,
    output s_left_out,
    input clk,rst,
	 input [1:0] sel
    );
always@(posedge clk)
begin
if(rst==1) begin
p_out <= 4'b0000; end

else begin
case(sel)
2'b01: p_out<={s_right_in,p_out[3:1]};
2'b10: p_out<={p_out[2:0],s_left_in};
2'b11: p_out<=p_in;
default: p_out<=p_out;
endcase
end
end

assign s_right_out = p_out[0];
assign s_left_out = p_out[3];

endmodule
