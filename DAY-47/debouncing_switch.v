`timescale 1ns / 1ps

module debouncing_switch(
input clk,rst,noisy_in,timer_done,
output debounce_out,timer_reset);

reg [1:0] p_state,n_state;
parameter s0=0, s1=1, s2=2, s3=3;

always@(posedge clk , negedge rst)
begin
if(~rst) begin
p_state<= 0; end
else begin
p_state<= n_state; end
end


always@(*)
begin
n_state= p_state;

case(p_state)
s0: if (~noisy_in)
       n_state= s0;
    else if (noisy_in)
       n_state= s1;
s1: if(~noisy_in)
       n_state= s0;
    else if(noisy_in & ~timer_done)
       n_state= s1;
    else if(noisy_in & timer_done)
       n_state= s2;
s2: if(noisy_in)
       n_state= s2;
    else if(~noisy_in)
       n_state= s3;
s3: if(noisy_in)
       n_state=s2;
    else if(~noisy_in & ~timer_done)
       n_state=s3;
    else if(~noisy_in & timer_done)
       n_state=s0;
default: n_state=s0;
endcase
end

assign timer_reset= (p_state==s0 | p_state==s2);
assign debounce_out= (p_state==s2 | p_state==s3);

endmodule
