`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:45:52 10/12/2020
// Design Name:   id_fsm
// Module Name:   D:/ISE/verilog/id_fsm_tb.v
// Project Name:  verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: id_fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module id_fsm_tb;

	// Inputs
	reg [7:0] char;
	reg clk;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	id_fsm uut (
		.char(char), 
		.clk(clk), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		char = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        char="a";
		  #50;
		  char="b";
		  #50;
		  char="c";
		  #50;
		  char="d";
		  #50;
		  char="1";
		  #50;
		  char="2";
		  #50;
		  char="3";
		  #50;
		  char="4";
		  #50;
		  char="\\";
		  // Add stimulus here

	end
      always #25 clk=~clk;
endmodule

