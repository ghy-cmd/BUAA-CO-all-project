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
	output reg [31:0] instrF,
	output reg [31:0] pcF,
	output reg [31:0] pc8F,
	input clk,
	input reset,
	input stall,
	input xiao
    );
	 
wire [31:0] instrFL=instrF;
wire [31:0] pcFL=pcF;
wire [31:0] pc8FL=pc8F;
wire `instrbus;
assign {`instrbus}=instrbus;
always@(posedge clk)
begin
	if(reset)
	begin
		instrF<=0;
		pcF<=0;
		pc8F<=0;
	end
	else if(stall)
	begin
	instrF<=instrFL;
	pcF<=pcFL;
	pc8F<=pc8FL;
	end
	else if(xiao&&bgezall)
	begin
		instrF<=0;
		pcF<=0;
		pc8F<=0;
	end
	else
	begin
		instrF<=instr;
		pcF<=pc;
		pc8F<=pc8;
	end
end

endmodule
