`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:36:32 05/17/2023 
// Design Name: 
// Module Name:    vending_machine 
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

//module and ports declaration
module vending_machine(
    output reg newspaper, chocolate, coke,
    output reg [4:0] balance,
    input [4:0] money,
    input [1:0] select_product,
    input [4:0] extra_money,
    input clk,rst);
reg [2:0] p_state,n_state; //declaring present and next states

//money inserted in vending machine
parameter [4:0] money_5 = 5'd5;
parameter [4:0] money_10 = 5'd10;
parameter [4:0] money_20 = 5'd20;

//selecting product from vending machine
parameter [1:0] select_newspaper = 2'b01;
parameter [1:0] select_chocolate = 2'b10;
parameter [1:0] select_coke = 2'b11;

//declating all the states in the machine
parameter [2:0] null = 3'b000;
parameter [2:0] five = 3'b001;
parameter [2:0] ten = 3'b010;
parameter [2:0] fifteen = 3'b011;


//Initial Block for the Present State and the Next State
always@(posedge clk) begin
if(rst==1) begin
p_state<= null; end
else begin
p_state<= n_state; end
end

//code for determining the next state in vending machine
always@(*)
begin

case(p_state)
//Next State after Null State
null: if(money == money_5 && select_product == select_newspaper) begin
      n_state<= five; end
		else if(money == money_5 && select_product == select_chocolate) begin
      n_state<= ten; end
      else if(money == money_5 && select_product == select_coke) begin
      n_state<= fifteen; end
      else if(money == money_10 && select_product == select_newspaper) begin
      n_state<= five; end
      else if(money == money_10 && select_product == select_chocolate) begin
      n_state<= ten; end
      else if(money == money_10 && select_product == select_coke) begin
      n_state<= fifteen; end
      else if(money == money_20 && select_product == select_newspaper) begin
      n_state<= five; end
      else if(money == money_20 && select_product == select_chocolate) begin
      n_state<= ten; end
		else if(money == money_20 && select_product == select_coke) begin
      n_state<= fifteen; end

//Next State after Five State		
five:  if(money == money_5 && select_product == select_newspaper) begin
      n_state<= five; end
		else if(money == money_5 && select_product == select_chocolate) begin
      n_state<= ten; end
      else if(money == money_5 && select_product == select_coke) begin
      n_state<= fifteen; end
      else if(money == money_10 && select_product == select_newspaper) begin
      n_state<= five; end
      else if(money == money_10 && select_product == select_chocolate) begin
      n_state<= ten; end
      else if(money == money_10 && select_product == select_coke) begin
      n_state<= fifteen; end
      else if(money == money_20 && select_product == select_newspaper) begin
      n_state<= five; end
      else if(money == money_20 && select_product == select_chocolate) begin
      n_state<= ten; end
		else if(money == money_20 && select_product == select_coke) begin
      n_state<= fifteen; end
		
//Next State after Ten State
ten:  if(money == money_5 && select_product == select_newspaper) begin
      n_state<= five; end
		else if(money == money_5 && select_product == select_chocolate) begin
      n_state<= ten; end
      else if(money == money_5 && select_product == select_coke) begin
      n_state<= fifteen; end
      else if(money == money_10 && select_product == select_newspaper) begin
      n_state<= five; end
      else if(money == money_10 && select_product == select_chocolate) begin
      n_state<= ten; end
      else if(money == money_10 && select_product == select_coke) begin
      n_state<= fifteen; end
      else if(money == money_20 && select_product == select_newspaper) begin
      n_state<= five; end
      else if(money == money_20 && select_product == select_chocolate) begin
      n_state<= ten; end
		else if(money == money_20 && select_product == select_coke) begin
      n_state<= fifteen; end

//Next State after Fifteen State		
fifteen: if(money == money_5 && select_product == select_newspaper) begin
      n_state<= five; end
		else if(money == money_5 && select_product == select_chocolate) begin
      n_state<= ten; end
      else if(money == money_5 && select_product == select_coke) begin
      n_state<= fifteen; end
      else if(money == money_10 && select_product == select_newspaper) begin
      n_state<= five; end
      else if(money == money_10 && select_product == select_chocolate) begin
      n_state<= ten; end
      else if(money == money_10 && select_product == select_coke) begin
      n_state<= fifteen; end
      else if(money == money_20 && select_product == select_newspaper) begin
      n_state<= five; end
      else if(money == money_20 && select_product == select_chocolate) begin
      n_state<= ten; end
		else if(money == money_20 && select_product == select_coke) begin
      n_state<= fifteen; end
//Default state
default: n_state<= null;

endcase
end

//code for generating the output in vending machine
always@(posedge clk)
begin

case(n_state)
//Output Code block for Null State
null: begin
      newspaper<= 1'b0;
      chocolate<= 1'b0;
		coke<= 1'b0;
		balance<= money;
		$display("You have entered no money, Here is your balance %d",balance);
      end
		
//Output Code block for Five State		
five: if(money == money_5) 
     begin
           newspaper<= 1'b1;
           chocolate<= 1'b0;
		     coke<= 1'b0;
			  balance<= 5'd0;
			  $display("Your newspaper will be delivered soon! Thanks for purchasing with us with Amount of %d, Here is your balance %d",money,balance);
	  end
     
	  else if(money == money_10) 
     begin
           newspaper<= 1'b1;
           chocolate<= 1'b0;
		     coke<= 1'b0;
		     balance<= 5'd5;
			  $display("Your newspaper will be delivered soon! Thanks for purchasing with us with Amount of %d, Here is your balance %d",money,balance); 
	  end
	  
	  else if(money == money_20) 
     begin
           newspaper<= 1'b1;
           chocolate<= 1'b0;
		     coke<= 1'b0;
		     balance<= 5'd15;
			  $display("Your newspaper will be delivered soon! Thanks for purchasing with us with Amount of %d, Here is your balance %d",money,balance);
	  end
	  
//Output Code block for Ten State	  
ten: if(money == money_5) 
     begin
           newspaper<= 1'b0;
           chocolate<= 1'b0;
		     coke<= 1'b0;
			  $display("if you want to buy a chocolate Rs.5 is not sufficient! please enter extra Rs.5");
			  
			  if(extra_money == money_5) 
           begin
           newspaper<= 1'b0;
           chocolate<= 1'b1;
		     coke<= 1'b0;
			  balance<= 5'd0;
			  $display("Your chocolate will be delivered soon! Thanks for purchasing with us with Amount of %d, Here is your balance %d",money+extra_money,balance);
	        end
			  
			  else begin
		     balance<= 5'd5;
			  $display("Sorry, you won't get a chocolate for Rs.5,Here is your balance %d",balance);
	        end
	  end
     
	  else if(money == money_10) 
     begin
           newspaper<= 1'b0;
           chocolate<= 1'b1;
		     coke<= 1'b0;
			  balance<= 5'd0;
			  $display("Your chocolate will be delivered soon! Thanks for purchasing with us with Amount of %d, Here is your balance %d",money,balance);
	  end
	  
	  else if(money == money_20) 
     begin
           newspaper<= 1'b0;
           chocolate<= 1'b1;
		     coke<= 1'b0;
		     balance<= 5'd10;
			  $display("Your chocolate will be delivered soon! Thanks for purchasing with us with Amount of %d, Here is your balance %d",money,balance);
	  end
	  
//Output Code block for Fifteen State
fifteen: if(money == money_5) 
     begin
           newspaper<= 1'b0;
           chocolate<= 1'b0;
		     coke<= 1'b0;
			  $display("if you want to buy a coke Rs.5 is not sufficient! please enter extra Rs.10");
			  
			  if(extra_money == money_10) 
           begin
           newspaper<= 1'b0;
           chocolate<= 1'b0;
		     coke<= 1'b1;
			  balance<= 5'd0;
			  $display("Your coke will be delivered soon! Thanks for purchasing with us with Amount of %d, Here is your balance %d",money+extra_money,balance);
	        end
			  
			  else begin
		     balance<= 5'd5;
			  $display("Sorry, you won't get a coke for Rs.5 Here is your balance %d",balance);
	        end
	  end
     
	  else if(money == money_10) 
     begin
           newspaper<= 1'b0;
           chocolate<= 1'b0;
		     coke<= 1'b0;
			  $display("if you want to buy a coke Rs.10 is not sufficient! please enter extra Rs.5");
			  
			  if(extra_money == money_5) 
           begin
           newspaper<= 1'b0;
           chocolate<= 1'b0;
		     coke<= 1'b1;
			  balance<= 5'd0;
			  $display("Your coke will be delivered soon! Thanks for purchasing with us with Amount of %d, Here is your balance %d",money+extra_money,balance);
	        end
			  
			  else begin
		     balance<= 5'd10;
			  $display("Sorry, you won't get a coke for Rs.10,Here is your balance %d",balance);
	        end
	  end
	  
	  else if(money == money_20) 
     begin
           newspaper<= 1'b0;
           chocolate<= 1'b0;
		     coke<= 1'b1;
		     balance<= 5'd5;
			  $display("Your coke will be delivered soon! Thanks for purchasing with us with Amount of %d, Here is your balance %d",money,balance);
	  end	  
//Default case
default: begin
         newspaper<= 1'b0;
         chocolate<= 1'b0;
		   coke<= 1'b0;
		   balance<= 5'b0;
			$display("You have entered no money, Here is your balance %d",balance);
			end
			
endcase
end

endmodule
