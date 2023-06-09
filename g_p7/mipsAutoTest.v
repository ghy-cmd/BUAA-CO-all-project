`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:32:05 11/03/2020
// Design Name:   mips
// Module Name:   D:/iseproject/mips/mips_tb.v
// Project Name:  mips
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

module mipsAutoTest;

    // Inputs
    reg clk;
    reg reset;
	reg interrupt;
    // Output
	wire [31:0]addr;
    // Instantiate the Unit Under Test (UUT)
    mips uut (
        .clk(clk), 
        .reset(reset),
		.interrupt(interrupt),
		.addr(addr)
    );

    initial begin
        // Initialize Inputs
        clk = 0;
        reset = 1;
		interrupt=0;
        // Wait 100 ns for global reset to finish
        #21;
                reset = 0;
        // Add stimulus here

    end
    always#5 clk=~clk;
endmodule

