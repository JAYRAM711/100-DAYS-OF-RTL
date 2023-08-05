`timescale 1ns / 1ps
`define DATA_WIDTH 8
`define PTR_SIZE 3
`define DEPTH 8

module SYNC_FIFO(input [`DATA_WIDTH-1:0] data_in, input clk, rst, write, read,
                 output full, empty, output reg [3:0] fifo_count, output reg [`DATA_WIDTH-1:0] data_out);

reg [`PTR_SIZE-1:0] write_ptr, read_ptr;
reg [`DATA_WIDTH-1:0] FIFO_RAM [`DEPTH-1:0];


assign full = (fifo_count==`DEPTH);
assign empty = (fifo_count==0);

//write_pointer & read_pointer operation
always@(posedge clk) 
begin
if(rst) begin
write_ptr <= 0;
read_ptr <= 0; end
else begin
write_ptr <= ((write && (!full)) || (write && read))? write_ptr+1 : write_ptr;
read_ptr <= ((read && (!empty)) || (write && read))? read_ptr+1 : read_ptr;
end
end

always@(posedge clk)
begin
if((write && (!full)) || (write && read)) begin
FIFO_RAM[write_ptr] <= data_in;end
else if((read && (!empty)) || (write && read)) begin
data_out <= FIFO_RAM[read_ptr]; end
end

always@(posedge clk)
begin
if(rst) begin
fifo_count<= 0; end
else begin
case({write,read})
2'b00: fifo_count <= fifo_count;
2'b01: fifo_count <= (fifo_count==0)? fifo_count : fifo_count-1 ;
2'b10: fifo_count <= (fifo_count==`DEPTH)? fifo_count : fifo_count+1 ;
2'b11: fifo_count <= fifo_count;
default: fifo_count <= fifo_count;
endcase
end
end

endmodule
