`timescale 1ns / 1ps

module testbench;

reg clk,rst;
reg noisy_in;
wire debounce_out;
integer i;

top_module uut(
      .clk(clk),
      .rst(rst),
      .noisy_in(noisy_in),
      .debounce_out(debounce_out)
      );

localparam T = 10;
always
begin
 clk=1'b0;
 #(T/2);
 clk=1'b1;
 #(T/2);
end

localparam delay = 50_000_000;

initial 
begin
 rst = 1'b0;
 noisy_in = 1'b1;
 #2
 rst= 1'b1;
 
 repeat(2) @(negedge clk);
 noisy_in = 1'b1;
 
 #(delay);
 noisy_in =1'b0;
 
 #(delay);
 
 repeat(20) @(negedge clk);
 for (i=0;i<5;i=i+1)
 #(delay/40) noisy_in= ~noisy_in;
 
 #(delay/2);
 for(i=0;i<5;i=i+1)
 #(delay/40) noisy_in= ~noisy_in;
 
  #(delay/2);
  noisy_in= ~noisy_in;
  for(i=0;i<5;i=i+1)
  #(delay/40) noisy_in= ~noisy_in; 

  #(delay/2);
  noisy_in= ~noisy_in;
  
  #(delay/2);
  for(i=0;i<6;i=i+1)
  #(delay/40) noisy_in= ~noisy_in;
  
  #(delay/2) noisy_in = 1'b0;
  #(delay) $stop;
end
endmodule
