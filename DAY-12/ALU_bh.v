`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:48 03/07/2023 
// Design Name: 
// Module Name:    ALU_st 
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
module ALU_st(
    input [7:0] A,B,
    input LOGIC_SEL,
	 input [2:0] SEL,
    output reg [7:0] RESULT);


always@(*)
begin

//ARTIHEMTIC AND SHIFT OPERATIONS
//DIV and MOD are not used as they are not synthesizable
if (LOGIC_SEL==0) 
begin
case(SEL)
3'b000: RESULT = A + B;
3'b001: RESULT = A - B;
3'b010: RESULT = A * B;
3'b011: RESULT = A + 1;
3'b100: RESULT = {A,B};
3'b101: RESULT = {2{A}};
3'b110: RESULT = A<<1;//or B<<1;
3'b111: RESULT = A>>1;//or B>>1;
default: RESULT = 8'bxxxxxxxx;
endcase
end

//LOGICAL OPERATIONS
else
begin
case(SEL)
3'b000: RESULT = A & B;
3'b001: RESULT = A | B;
3'b010: RESULT = ~A;// or ~B;
3'b011: RESULT = ~(A & B);
3'b100: RESULT = ~(A | B);
3'b101: RESULT = (A ^ B);
3'b110: RESULT = ~(A ^ B);
3'b111: RESULT = A;//or B;
default: RESULT = 8'bxxxxxxxx;
endcase
end

end
endmodule
