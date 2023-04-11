`timescale 1ns / 1ps
`include "instrbus.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:45:50 11/22/2020 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] RD1,
    input [31:0] RD2,
    output [31:0] OUT,
	 input [`instrbuswidth] instrbus,
	 output [31:0] regdata,
	 input [31:0] pc8
    );
wire `instrbus;
assign {`instrbus}=instrbus;

assign OUT=(addu||lw||sw||addi||add)? RD1+RD2 :
				(subu)? RD1-RD2 :
				(ori||org)? RD1|RD2 :
				(lui)? {RD2[15:0],{16{1'b0}}} :
				0;

assign regdata=(addu||subu||ori||lui||addi||org||add) ? OUT :
					(jal||jalr||bgezall)? pc8 : 0;

endmodule