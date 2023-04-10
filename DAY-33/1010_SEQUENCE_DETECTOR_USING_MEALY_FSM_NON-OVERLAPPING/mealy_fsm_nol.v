`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:55:19 04/10/2023 
// Design Name: 
// Module Name:    mealy_fsm_nol 
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
module mealy_fsm_nol(
    input din,clk,rst,
    output reg dout
    );
reg [1:0] cs,nst;
parameter s0= 2'b00,
          s1= 2'b01,
			 s2= 2'b10,
			 s3= 2'b11;

always@(posedge clk)
begin
if(rst==1) begin
cs<= s0; end
else begin
cs<= nst; end
end

always@(cs or din)
begin
case(cs)
s0: if(din==1) begin
    nst= s1; 
	 dout= 1'b0; end
	 else begin
	 nst= cs; 
	 dout= 1'b0; end

s1: if(din==0) begin
    nst= s2; 
	 dout= 1'b0; end
	 else begin
	 nst= cs; 
	 dout= 1'b0; end

s2: if(din==1) begin
    nst= s3; 
	 dout= 1'b0; end
	 else begin
	 nst= s0; 
	 dout= 1'b0; end

s3: if(din==0) begin
    nst= s0; 
	 dout= 1'b1; end
	 else begin
	 nst= s1; 
	 dout= 1'b0; end

default: nst= s0; 	 
	 
endcase
end

endmodule
