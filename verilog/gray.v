`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:38:48 10/25/2020 
// Design Name: 
// Module Name:    gray 
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
module gray(
    input Clk,
    input Reset,
    input En,
    output reg [2:0] Output,
    output reg Overflow
    );
initial
begin
Output<=0;
Overflow<=0;
end

always@(posedge Clk)
begin
	if(Reset==1)
	begin
	Output<=0;
	Overflow<=0;
	end
	else
	begin
		case(Output)
		0:begin
			if(En)
			Output<=1;
		end
		1:begin
			if(En)
			Output<=3;
		end
		2:begin
			if(En)
			Output<=6;
		end
		3:begin
			if(En)
			Output<=2;
		end
		4:begin
			if(En)
			begin
			Output<=0;
			Overflow<=1;
			end
		end
		5:begin
			if(En)
			begin
				Output<=4;
			end
		end
		6:begin
			if(En)
			Output<=7;
		end
		7:begin
			if(En)
			Output<=5;
		end
		endcase
	end
end
endmodule
