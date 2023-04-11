`timescale 1ns / 1ps
`include "instrbus.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:54:50 11/22/2020 
// Design Name: 
// Module Name:    IM_RF 
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
module IM_RF(
	input [31:0] instr,
	input [`instrbuswidth] instrbus,
	input [31:0] pc,
	input [31:0] pc8,
	input ADELpc,
	input BD,
	output reg [31:0] instrF,
	output reg [31:0] pcF,
	output reg [31:0] pc8F,
	output reg ADELpcF,
	output reg BDF,
	input clk,
	input reset,
	input stall,
	input xiao,
	input strange,
	input eretM
    );
	 
wire [31:0] instrFL=instrF;
wire [31:0] pcFL=pcF;
wire [31:0] pc8FL=pc8F;
wire ADELpcFL=ADELpcF;
wire BDFL=BDF;

wire `instrbus;
assign {`instrbus}=instrbus;
always@(posedge clk)
begin
	if(reset||strange||eretM)
	begin
		instrF<=0;
		pcF<=-1;
		pc8F<=0;
		ADELpcF<=0;
		BDF<=0;
	end
	else if(stall)
	begin
	instrF<=instrFL;
	pcF<=pcFL;
	pc8F<=pc8FL;
	ADELpcF<=ADELpcFL;
	BDF<=BDFL;
	end
	else if(xiao&&bgezall)
	begin
		instrF<=0;
		pcF<=-1;
		pc8F<=0;
		ADELpcF<=0;
		BDF<=0;
	end
	else
	begin
		instrF<=instr;
		pcF<=pc;
		pc8F<=pc8;
		ADELpcF<=ADELpc;
		BDF<=BD;
	end
end

endmodule
