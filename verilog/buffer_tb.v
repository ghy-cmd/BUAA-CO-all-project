`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:02:52 09/19/2020
// Design Name:   buffer
// Module Name:   D:/ISE/verilog/buffer_tb.v
// Project Name:  verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: buffer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module buffer_tb;
	reg clk;
	reg in;
	
	wire out;
	buffer uut (
		.clk(clk),
		.in(in),
		.out(out)
		);
	initial begin
		clk=1;
		in=0;
		#10;
		in<=1;
		#10;
		in<=0;
		#10;
		in<=1;
	end
	always #5 clk=~clk;
endmodule