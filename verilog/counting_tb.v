`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:38:09 10/07/2020
// Design Name:   counting
// Module Name:   D:/ISE/verilog/counting_tb.v
// Project Name:  verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counting
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counting_tb;

	// Inputs
	reg [1:0] num;
	reg clk;

	// Outputs
	wire ans;

	// Instantiate the Unit Under Test (UUT)
	counting uut (
		.num(num), 
		.clk(clk), 
		.ans(ans)
	);

	initial begin
		// Initialize Inputs
		num = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
#10;
		num=1; 
		#10;
		num=1;
		#10;
		num=2;
		#10;
		num=3;
		#10
		num=3;
		#10;
		num=1;
		#10;
		num=2;
		#10;
		num=1;
		#10;
		num=1;
		#10;
		num=1;
		#10;
		num=2;
		#10;
		num=2;
		#10;
		num=3;
		#10;
		num=3;
		#10;
		num=3;
		#10;
		num=1;        
		// Add stimulus here

	end
      always #5 clk=~clk;
endmodule

