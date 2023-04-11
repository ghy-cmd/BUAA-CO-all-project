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
	 input strange,
	 input eretM,
	 input [31:0] epc,
	 
    output [31:0] out,
	 output [31:0] pc8,
	 output [31:0] wpc,
	 output xiao,
	 output ADEL,
	 output BD,
	 input [`instrbuswidth] instrbus
    );
reg [31:0] rst [0:4095];
reg [31:0] pc;
assign pc8=pc+8;
assign wpc=pc;
wire `instrbus;
assign {`instrbus}=instrbus;
assign ADEL=(((pc%4)==0)&&(pc>=32'h00003000)&&(pc<=32'h00004ffc))? 0 : 1;
assign BD=(beq||bltz||bgezall||bgez||bgtz||blez||bne||j||jal||jr||jalr);


initial
begin
$readmemh("code.txt",rst);
//$readmemh("code_handler.txt",rst,1120,2047);
pc<=32'h00003000;
end
/////////////////judge////////////////////////////
assign xiao=(($signed(RD1))<($signed(0)))? 1 : 0;
wire dayu=(($signed(RD1))>=($signed(0))) ? 1 : 0;
wire da=(($signed(RD1))>($signed(0))) ? 1 : 0;
wire xiaoyu=(($signed(RD1))<=($signed(0)))? 1 : 0;
wire budeng=(RD1!=RD2)? 1 : 0;
/////////////////npc//////////////////////////////
wire [31:0] npc;
assign npc=(strange) ? 32'h00004180 :
				(eretM) ? epc :
				(stall) ? pc :
				(EQU&&Branch)? (pcRF+4+(imm<<2)):
				(bltz&&xiao)? (pcRF+4+(imm<<2)):
				(dayu&&bgezall)? (pcRF+4+(imm<<2)):
				(dayu&&bgez) ? (pcRF+4+(imm<<2)):
				(da&&bgtz) ? (pcRF+4+(imm<<2)):
				(xiaoyu&&blez) ? (pcRF+4+(imm<<2)):
				(budeng&&bne) ? (pcRF+4+(imm<<2)):
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

wire [31:0] realpc;
assign realpc=(pc-32'h00003000);

assign out=(ADEL)? 0 : rst[realpc[13:2]];


endmodule
