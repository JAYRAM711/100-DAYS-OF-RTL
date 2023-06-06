`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:21:29 06/06/2023 
// Design Name: 
// Module Name:    barrel_shifter 
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
module barrel_shifter(
    input [7:0] a,
    input [2:0] range,
	 input RL,RR,
    output reg [7:0] out
    );
always@(*)
begin
if(RR==1 && RL==0) begin
case(range)
3'b000: out= a;
3'b001: out= {a[0],a[7:1]};
3'b010: out= {a[1:0],a[7:2]};
3'b011: out= {a[2:0],a[7:3]};
3'b100: out= {a[3:0],a[7:4]};
3'b101: out= {a[4:0],a[7:5]};
3'b110: out= {a[5:0],a[7:6]};
3'b111: out= {a[6:0],a[7]};
default: out= a;
endcase
end

if(RR==0 && RL==1) begin
case(range)
3'b000: out= a;
3'b001: out= {a[6:0],a[7]};
3'b010: out= {a[5:0],a[7:6]};
3'b011: out= {a[4:0],a[7:5]};
3'b100: out= {a[3:0],a[7:4]};
3'b101: out= {a[2:0],a[7:3]};
3'b110: out= {a[1:0],a[7:2]};
3'b111: out= {a[0],a[7:1]};
default: out= a;
endcase
end

end

endmodule