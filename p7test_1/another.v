`timescale 1ns / 1ps
`include "instrbus.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:13:57 11/23/2020 
// Design Name: 
// Module Name:    another 
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
module another(
	input [15:0] imm,
	output [31:0] immout,
	input [`instrbuswidth] instrbus,
	input [31:0] RD1,
	input [31:0] RD2,
	output EQU
    );
wire `instrbus;
assign {`instrbus}=instrbus;
assign immout=(lw||lb||lbu||lh||lhu||sw||sb||sh||beq||j||jr||jal||addi||bltz||bne||blez||bgtz||bgez||bgezall||addiu||slti||sltiu)? {{16{imm[15]}},imm} : {{16{1'b0}},imm};

assign EQU=(RD1==RD2)? 1 : 0;

endmodule
