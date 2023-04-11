`timescale 1ns / 1ps
`include "instrbus.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:56:05 11/22/2020 
// Design Name: 
// Module Name:    DM_WB 
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
module DM_WB(
	input clk,
	input reset,
	input [`instrbuswidth] instrbus,
	input RegWrite,
	input [31:0] pc,
	input [4:0] A3,
	input [31:0] regdata,
	
	output reg [`instrbuswidth] instrbusM,
	output reg RegWriteM,
	output reg [31:0] pcM,
	output reg [4:0] A3M,
	output reg [31:0] regdataM
    );
always@(posedge clk)
begin
if(reset)
begin
	instrbusM<=0;
	RegWriteM<=0;
	pcM<=0;
	A3M<=0;
	regdataM<=0;
end
else
begin
	instrbusM<=instrbus;
	RegWriteM<=RegWrite;
	pcM<=pc;
	A3M<=A3;
	regdataM<=regdata;
end
end

endmodule
