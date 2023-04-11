`timescale 1ns / 1ps
`include "instrbus.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:55:18 11/22/2020 
// Design Name: 
// Module Name:    RF_EX 
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
module RF_EX(
	input clk,
	input reset,
	input strange,
	input eretM,
	input [31:0]immout,
	input [`instrbuswidth] instrbus,
	input [31:0] RD1,
	input [31:0] RD2,
	input RegWrite, 
   input MemWrite, 
	input ALUmux,
	input [31:0] pc,
	input [31:0] pc8,
	input [4:0] A3,
	input [4:0] A1,
	input [4:0] A2,
	input [2:0] tnew,
	input [31:0] instr,
	input stall,
	input ADELpc,
	input RI,
	input BD,
	input [4:0] rd,
	output reg [31:0] immoutD,
	output reg [`instrbuswidth] instrbusD,
	output reg [31:0] RD1D,
	output reg [31:0] RD2D,
	output reg RegWriteD, 
   output reg MemWriteD, 
	output reg ALUmuxD,
	output reg [31:0] pcD,
	output reg [31:0] pc8D,
	output reg [4:0] A3D,
	output reg [4:0] A1D,
	output reg [4:0] A2D,
	output reg [2:0] tnewD,
	output reg [31:0] instrD,
	output reg ADELpcD,
	output reg RID,
	output reg BDD,
	output reg [4:0] rdD
    );

always@(posedge clk)
begin
	if(reset||stall||strange||eretM)
	begin
	immoutD<=0;
	instrbusD<=0;
	RD1D<=0;
	RD2D<=0;
	RegWriteD<=0;
	MemWriteD<=0;
	ALUmuxD<=0;
	pcD<=-1;
	pc8D<=0;
	A3D<=0;
	A1D<=0;
	A2D<=0;
	tnewD<=0;
	instrD<=0;
	ADELpcD<=0;
	RID<=0;
	BDD<=0;
	rdD<=0;
	end
	else
	begin
	immoutD<=immout;
	instrbusD<=instrbus;
	RD1D<=RD1;
	RD2D<=RD2;
	RegWriteD<=RegWrite;
	MemWriteD<=MemWrite;
	ALUmuxD<=ALUmux;
	pcD<=pc;
	pc8D<=pc8;
	A3D<=A3;
	A1D<=A1;
	A2D<=A2;
	instrD<=instr;
	ADELpcD<=ADELpc;
	RID<=RI;
	BDD<=BD;
	rdD<=rd;
	if(tnew>0)
	tnewD<=tnew-1;
	else
	tnewD<=0;
	end
end

endmodule
