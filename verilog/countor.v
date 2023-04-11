`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:28:56 09/15/2020 
// Design Name: 
// Module Name:    countor 
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
module countor(
    input clk,
    input rst_n,
    output [3:0] cnt
    );
	 
	 always@(posedge clk,negedge rst_n)
	 begin
	 if(!rst_n)
	 cnt<=0;
	 else
	 cnt<=cnt+1'b1;
	 end

endmodule
