`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:15:54 10/30/2020
// Design Name:   BlockChecker
// Module Name:   D:/ISE/verilog/BlockChedker_tb.v
// Project Name:  verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BlockChecker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BlockChedker_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] in;

	// Outputs
	wire result;

	// Instantiate the Unit Under Test (UUT)
	BlockChecker uut (
		.clk(clk), 
		.reset(reset), 
		.in(in), 
		.result(result)
	);

	initial begin
	clk=0;
		reset=1;
        #12;
        reset=0;
        in="f";
#10;
in="o";
#10;
in="r";
#10;
in=" ";
#10;
in="b";
#10;
in="E";
#10;
in="g";
#10;
in="i";
#10;
in="n";
#10;
in=" ";
#10;
in="e";
#10;
in="n";
#10;
in="d";
#10;
in=" ";
#10;
in="i";
#10;
in="s";
#10;
in=" ";
#10;
in="a";
#10;
in=" ";
#10;
in="d";
#10;
in="i";
#10;
in="f";
#10;
in="f";
#10;
in="u";
#10;
in="c";
#10;
in="l";
#10;
in="t";
#10;
in=" ";
#10;
in="b";
#10;
in="e";
#10;
in="g";
#10;
in="i";
#10;
in="n";
#10;
in="n";
#10;
in=" ";
#10;
in=" ";
#10;
in=" ";
#10;
in=" ";
#10;
in="b";
#10;
in="e";
#10;
in="g";
#10;
in="i";
#10;
in="n";
#10;
in=" ";
#10;
in="E";
#10;
in="E";
#10;
in="n";
#10;
in="d";
#10;
in=" ";
#10;
in="t";
#10;
in="o";
#10;
in=" ";
#10;
in="e";
#10;
in="N";
#10;
in="d";
#10;
in=" ";
#10;
in="e";
#10;
in="N";
#10;
in="e";
#10;
in=" ";
#10;
in=" ";
#10;
in="E";
#10;
in="n";
#10;
in="d";
#10;
in="d";
#10;
in=" ";
#10;
in=" ";
#10;
in="e";
#10;
in="n";
#10;
in="d";
#10;
in=" ";
#10;

	end
always #5 clk=~clk;      
endmodule

