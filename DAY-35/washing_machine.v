`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:33:30 05/19/2023 
// Design Name: 
// Module Name:    washing_machine 
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

//module and port declarations
module washing_machine(
input clk,rst,start,door_close,filled,normal_wash,quick_wash,detergent_added,cycle_time_out,drained,spin_time_out,
output reg door_lock,fill_valve_on,water_wash,soap_wash,motor_on,drain_valve_on,done
    );
reg [2:0] p_state,n_state;

//parameters declaration for all states in machine
parameter idle= 3'b000;
parameter fill_water= 3'b001;
parameter soak= 3'b010;
parameter rinse= 3'b011;
parameter drain_water= 3'b100;
parameter dryer= 3'b101;

//code block for determining present state 
always@(posedge clk)
begin
if(rst==1) begin
p_state<= 3'b000; end
else begin
p_state<= n_state; end
end

//code block for determining next state  
always@(*)
begin
case(p_state)
idle: if(start==1 && door_close==1) 
            begin
				n_state = fill_water;
				door_lock = 1;
				fill_valve_on = 0;
				water_wash = 0;
				soap_wash = 0;
				motor_on = 0;
				drain_valve_on = 0;
				done = 0;
				end

            else
				begin
				n_state = p_state;
				door_lock = 0;
				fill_valve_on = 0;
				water_wash = 0;
				soap_wash = 0;
				motor_on = 0;
				drain_valve_on = 0;
				done = 0;
				end
				
fill_water: if(filled==1) 
           begin
			  
			       if(normal_wash==1)
			       begin
				    n_state = soak;
			       door_lock = 1;
			       fill_valve_on = 0;
			       water_wash = 0;
			       soap_wash = 1;
			       motor_on = 0;
			       drain_valve_on = 0;
			       done = 0;
			       end
			  
			       else if(quick_wash==1)
			       begin
			       n_state = rinse;
			       door_lock = 1;
			       fill_valve_on = 0;
			       water_wash = 1;
			       soap_wash = 0;
			       motor_on = 0;
			       drain_valve_on = 0;
			       done = 0;
			       end	  
           
			       else
			       begin
			       n_state = p_state;
			       door_lock = 1;
			       fill_valve_on = 1;
			       water_wash = 0;
			       soap_wash = 0;
			       motor_on = 0;
			       drain_valve_on = 0;
			       done = 0;
			       end	
			       end
			  
			  else
			  begin
			  n_state = p_state;
			  door_lock = 1;
			  fill_valve_on = 1;
			  water_wash = 0;
			  soap_wash = 0;
			  motor_on = 0;
			  drain_valve_on = 0;
			  done = 0;
			  end
			  
soak: if(detergent_added==1)
      begin
		n_state = rinse;
		door_lock = 1;
		fill_valve_on = 0;
		water_wash = 0;
		soap_wash = 1;
		motor_on = 0;
		drain_valve_on = 0;
		done = 0;
		end
		
      else
		begin
		n_state = p_state;
		door_lock = 1;
		fill_valve_on = 0;
	   water_wash = 0;
		soap_wash = 0;
		motor_on = 0;
		drain_valve_on = 0;
		done = 0;
		end

rinse: if(cycle_time_out==1)
      begin
		n_state = drain_water;
		door_lock = 1;
		fill_valve_on = 0;
		water_wash = 1;
		soap_wash = 1;
		motor_on = 0;
		drain_valve_on = 0;
		done = 0;
		end
		
      else
		begin
		n_state = p_state;
		door_lock = 1;
		fill_valve_on = 0;
	   water_wash = 0;
		soap_wash = 1;
		motor_on = 1;
		drain_valve_on = 0;
		done = 0;
		end
		
drain_water: if(drained==1)
             begin
				 n_state = dryer;
		       door_lock = 1;
		       fill_valve_on = 0;
		       water_wash = 1;
		       soap_wash = 1;
		       motor_on = 0;
		       drain_valve_on = 1;
		       done = 0;
		       end
             
				 else
             begin
				 n_state = p_state;
		       door_lock = 1;
		       fill_valve_on = 0;
		       water_wash = 1;
		       soap_wash = 1;
		       motor_on = 0;
		       drain_valve_on = 0;
		       done = 0;
		       end
				 
dryer: if(spin_time_out==1)
       begin
	    n_state = idle;
		 door_lock = 1;
		 fill_valve_on = 0;
		 water_wash = 1;
		 soap_wash = 1;
		 motor_on = 0;
		 drain_valve_on = 1;
		 done = 1;
		 end
             
		 else
       begin
		 n_state = p_state;
		 door_lock = 1;
		 fill_valve_on = 0;
		 water_wash = 1;
		 soap_wash = 1;
		 motor_on = 0;
		 drain_valve_on = 1;
		 done = 0;
		 end
		 
		 
default: n_state = idle;

endcase
end


endmodule
