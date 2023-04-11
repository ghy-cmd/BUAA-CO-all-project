`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:31:05 10/16/2020
// Design Name:   cpu_checker
// Module Name:   D:/ISE/verilog/cpu_checker_tb.v
// Project Name:  verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu_checker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cpu_checker_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] char;
	reg [15:0] freq;
	// Outputs
	wire [1:0] format_type;
   wire [3:0] error_code;
	// Instantiate the Unit Under Test (UUT)
	cpu_checker uut (
		.clk(clk), 
		.reset(reset), 
		.char(char), 
		.freq(freq),
		.error_code(error_code),
		.format_type(format_type)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		char = 0;
      freq =2;
		// Wait 100 ns for global reset to finish
		#10;
		char="^";
      #10;
		char="1";
		#10;
		char="0";
		#10;
		char="2";
		#10;
		char="4";
		#10;
		char="@";
		#10;
		char="0";
		#10;
		char="0";
		#10;
		char="0";
		#10;
		char="0";
		#10;
		char="3";
		#10;
		char="0";
		#10;
		char="f";
		#10;
		char="c";
		#10;
		char=":";
		#10;
		char="$";
		#10;
		char="2";
		#10;
		char=" ";
		#10;
		char="<";
		#10;
		char="=";
		#10;
		char=" ";
		#10;
		char="8";
		#10;
		char="9";
		#10;
		char="a";
		#10;
		char="b";
		#10;
		char="c";
		#10;
		char="d";
		#10;
		char="e";
		#10;
		char="f";
		#10;
		char="#";
		#10;
		char="^";
		#10;
		char="6";
		#10;
		char="4";
		// Add stimulus here
	
	end
   always #5 clk=~clk;   
endmodule

