`timescale 1ns / 1ps
`include "instrbus.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:55:39 11/22/2020 
// Design Name: 
// Module Name:    EX_DM 
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
module EX_DM(
	input clk,
	input reset,
	input [`instrbuswidth] instrbus,
	input [31:0] RD1,
	input [31:0] RD2,
	input [31:0] ALUOUT,
	input RegWrite, 
   input MemWrite,
	input [31:0] pc,
	input [31:0] pc8,
	input [4:0] A3,
	input [4:0] A2,
	input [31:0] regdata,
	input [2:0] tnew,

	output reg [`instrbuswidth] instrbusE,
	output reg [31:0] RD1E,
	output reg [31:0] RD2E,
	output reg [31:0] ALUOUTE,
	output reg RegWriteE, 
   output reg MemWriteE,
	output reg [31:0] pcE,
	output reg [31:0] pc8E,
	output reg [4:0] A3E,
	output reg [4:0] A2E,
	output reg [31:0] regdataE,
	output reg [2:0] tnewE
    );
always@(posedge clk)
begin
	if(reset)
	begin
	instrbusE<=0;
	RD1E<=0;
	RD2E<=0;
	ALUOUTE<=0;
	RegWriteE<=0;
	MemWriteE<=0;
	A3E<=0;
	regdataE<=0;
	A2E<=0;
	pcE<=0;
	pc8E<=0;
	tnewE<=0;
	end
	else
	begin
	instrbusE<=instrbus;
	RD1E<=RD1;
	RD2E<=RD2;
	ALUOUTE<=ALUOUT;
	RegWriteE<=RegWrite;
	MemWriteE<=MemWrite;
	A3E<=A3;
	A2E<=A2;
	regdataE<=regdata;
	pcE<=pc;
	pc8E<=pc8;
	if(tnew>0)
	tnewE<=tnew-1;
	else
	tnewE<=0;
	end
end

endmodule
