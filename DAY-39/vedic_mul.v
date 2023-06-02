`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:23:57 06/02/2023 
// Design Name: 
// Module Name:    vedic_mul 
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

//implementation of 2-bit vedic multiplier
module ha(input a,b,output sum,carry);
assign sum= a^b;
assign carry= a&b;
endmodule

module vedic_mul_2x2(a,b,y);
input [1:0] a,b;
output [3:0] y;
wire [3:0] y;
wire [3:0] temp;
assign y[0]= a[0] & b[0];
assign temp[0]= a[1] & b[0];
assign temp[1]= a[0] & b[1];
assign temp[2]= a[1] & b[1];

ha h1(temp[0],temp[1],y[1],temp[3]);
ha h2(temp[2],temp[3],y[2],y[3]);

endmodule

//---------------------------------------------------------------------------------

//implementation of 4-bit vedic multiplier
module sum_4(input [3:0] a,b, output [3:0] sum);
assign sum= a+b;
endmodule

module sum_6(input [5:0] a,b, output [5:0] sum);
assign sum= a+b;
endmodule

module vedic_mul_4x4 (a,b,y);
input [3:0] a,b;
output [7:0] y;
wire [7:0] y;
wire [3:0] q0;
wire [3:0] q1;
wire [3:0] q2;
wire [3:0] q3;
wire [3:0] q4;
wire [5:0] q5;
wire [5:0] q6;
wire [3:0] temp1;
wire [5:0] temp2;
wire [5:0] temp3;
wire [5:0] temp4;

vedic_mul_2x2 v1(a[1:0],b[1:0],q0);
vedic_mul_2x2 v2(a[3:2],b[1:0],q1);
vedic_mul_2x2 v3(a[1:0],b[3:2],q2);
vedic_mul_2x2 v4(a[3:2],b[3:2],q3);

assign temp1= {2'b00,q0[3:2]};
assign temp2= {2'b00,q2[3:0]};
assign temp3= {q3[3:0],2'b00};

sum_4 s1(temp1,q1,q4);
sum_6 s2(temp2,temp3,q5);

assign temp4= {2'b00,q4[3:0]};
sum_6 s3(q5,temp4,q6);

assign y[1:0]= q0[1:0];
assign y[7:2]= q6[5:0];

endmodule 

//---------------------------------------------------------------------------------

//implementation of 8-bit multiplier
module sum_8(input [7:0]a,b, output [7:0] sum);
assign sum= a+b;
endmodule

module sum_12(input [11:0]a,b, output [11:0] sum);
assign sum= a+b;
endmodule

module vedic_mul(a,b,y);
input [7:0] a,b;
output [15:0] y;
wire [15:0] y;
wire [7:0] q0;
wire [7:0] q1;
wire [7:0] q2;
wire [7:0] q3;
wire [7:0] q4;
wire [11:0] q5;
wire [11:0] q6;
wire [7:0] temp1;
wire [11:0] temp2;
wire [11:0] temp3;
wire [11:0] temp4;

vedic_mul_4x4 ve1(a[3:0],b[3:0],q0);
vedic_mul_4x4 ve2(a[7:4],b[3:0],q1);
vedic_mul_4x4 ve3(a[3:0],b[7:4],q2);
vedic_mul_4x4 ve4(a[7:4],b[7:4],q3);

assign temp1= {4'b0000,q0[7:4]};
assign temp2= {4'b0000,q2[7:0]};
assign temp3= {q3[7:0],4'b0000};

sum_8 s4(temp1,q1,q4);
sum_12 s5(temp2,temp3,q5);

assign temp4= {4'b0000,q4[7:0]};
sum_12 s6(q5,temp4,q6);

assign y[3:0]= q0[3:0];
assign y[15:4]= q6[11:0];

endmodule 
