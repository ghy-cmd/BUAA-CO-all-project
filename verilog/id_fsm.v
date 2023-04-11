`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:21:00 10/12/2020 
// Design Name: 
// Module Name:    id_fsm 
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
module id_fsm(
    input [7:0] char,
    input clk,
    output out
    );
	reg [7:0] before;
	reg [1:0] status;
initial
	begin
	before<=0;
	status<=1;
	end

always@(posedge clk)
begin
	if((97<=char && char<=122) || (65<=char && char<=90))
	begin
			case(status)
			0:begin
				status<=1;
			end
			1:begin
				status<=1;
			end
			2:begin
				status<=1;
			end
			endcase
	end
	else if(48<=char && char<=57)
	begin
		case(status)
			0:begin
				status<=0;
			end
			1:begin
				status<=2;
			end
			2:begin
				status<=2;
			end
			endcase
	end
	else
	begin
		case(status)
			0:begin
				status<=0;
			end
			1:begin
				status<=0;
			end
			2:begin
				status<=0;
			end
			endcase
	end
end
	assign out=(status == 2)? 1 :0 ;

endmodule
