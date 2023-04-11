`timescale 1ns / 1ps
`include "instrbus.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:07:45 11/22/2020 
// Design Name: 
// Module Name:    IFU 
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
module IFU(
    input [31:0] imm,
	 input [31:0] instr,
	 input [31:0] RD1,
	 input [31:0] RD2,
	 input [31:0] pcRF,
    input clk,
    input reset,
    input Branch,
    input EQU,
	 input stall,
	 
    output [31:0] out,
	 output [31:0] pc8,
	 output [31:0] wpc,
	 output xiao,
	 input [`instrbuswidth] instrbus
    );
reg [31:0] rst [0:1023];
reg [31:0] pc;
assign pc8=pc+8;
assign wpc=pc;
wire `instrbus;
assign {`instrbus}=instrbus;
initial
begin
$readmemh("code.txt",rst);
pc<=32'h00003000;
end
/////////////////judge////////////////////////////
assign xiao=(($signed(RD1))<($signed(0)))? 1 : 0;
wire dayu=(($signed(RD1))>=($signed(0))) ? 1 : 0;


/////////////////npc//////////////////////////////
wire [31:0] npc;
assign npc=(stall) ? pc :
				(EQU&&Branch)? (pcRF+4+(imm<<2)):
				(bltz&&xiao)? (pcRF+4+(imm<<2)):
				(dayu&&bgezall)? (pcRF+4+(imm<<2)):
				(j||jal) ? {pcRF[31:28],instr[25:0],{2{1'b0}}}:
				(jr||jalr)? RD1 : pc+4;
//////////////////////////////////////////////////

always@(posedge clk)
begin
	if(reset)
	pc<=32'h00003000;
	
	/*else if(EQU&Branch)
	begin
	pc<=pc+4+(imm<<2);
	end
	
	else if(j||jal)
	begin
	pc<={pc[31:28],instr[25:0],{2{1'b0}}};	
	end
	
	else if(jr)
	begin
	pc<=RD1;
	end
	
	else
	pc<=pc+4;
	*/
	else
	pc<=npc;
end

assign out=rst[pc[11:2]];


endmodule
