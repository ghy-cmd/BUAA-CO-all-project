`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:02:44 11/23/2020
// Design Name:   mips
// Module Name:   D:/ISE/liucpu/mips_tb.v
// Project Name:  liucpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mips_tb;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#10;
        reset=0;
        
		// Add stimulus here

	end
always #5 clk=~clk;      
endmodule

