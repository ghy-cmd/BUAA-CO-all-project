`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:10:46 10/25/2020 
// Design Name: 
// Module Name:    string 
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
module string(
    input clk,
    input clr,
    input [7:0] in,
    output out
    );
reg [2:0] status;
initial
begin
status<=0;
end
always@(posedge clr)
begin
status<=0;
end
always@(posedge clk)
begin
if(clr)
status<=0;
else
begin
		case(status)
		0:begin
			if(in>="0" && in<="9")
			status<=1;
			else
			status<=4;
		end
		1:begin
			if(in=="+" || in=="*")
			status<=2;
			else
			status<=4;
		end
		2:begin
			if(in>="0" && in<="9")
			status<=3;
			else
			status<=4;
		end
		3:begin
			if(in=="+" || in=="*")
			status<=2;
			else
			status<=4;
		end
		
		endcase
end
end
assign out=(status==3)?1:
				(status==1)?1:0;
endmodule
