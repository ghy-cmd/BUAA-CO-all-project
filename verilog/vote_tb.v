`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:57:14 09/25/2020
// Design Name:   vote
// Module Name:   D:/ISE/verilog/vote_tb.v
// Project Name:  verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vote
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vote_tb;

	// Inputs
	reg A;
	reg B;
	reg C;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	vote uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 1;
		B = 1;
		C = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

