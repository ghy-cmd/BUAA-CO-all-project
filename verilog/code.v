`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:48:24 10/11/2020 
// Design Name: 
// Module Name:    code 
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
module code(
    input Clk,
    input Reset,
    input Slt,
    input En,
    output reg [63:0] Output0,
    output reg [63:0] Output1
    );
	reg [2:0] cnt;
initial
	begin
	cnt=3'b0;
	Output0=0;
	Output1=0;
	end
	
	always@(posedge Clk)
	begin
		if(Reset==1)
		begin
			Output0<=0;
			Output1<=0;
			cnt<=0;
			end
		else if(Reset==0)
			begin
			if(En)
					begin
						if(Slt==0)
						Output0<=Output0+1;
						else if(Slt==1)
							begin
							cnt=cnt+1;//×¢Òâ×èÈû¸³Öµ
							if(cnt==3'b100)
								begin
								Output1<=Output1+1;
								cnt<=0;
								end
							end
						end
			end
	end

endmodule
