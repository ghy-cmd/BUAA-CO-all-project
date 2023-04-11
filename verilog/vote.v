`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:54:48 09/25/2020 
// Design Name: 
// Module Name:    vote 
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
module vote(
    input A,
    input B,
    input C,
    output Y
    );
	assign Y=(A&B) | (A&C) | (B&C);

endmodule
