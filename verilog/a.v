`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:47:27 09/19/2020
// Design Name:   buffer
// Module Name:   D:/ISE/verilog/a.v
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

module a;

	// Inputs
	reg clk;
	reg in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	buffer uut (
		.clk(clk), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

