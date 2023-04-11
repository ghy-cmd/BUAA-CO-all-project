`timescale 1ns / 1ps
`include "instrbus.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:47:10 11/22/2020 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input [31:0] A,
    output [31:0] RD,
    input [31:0] WD,
	 input [31:0] pc,
	 input [31:0] regdata,
	 input [`instrbuswidth] instrbus,
	 input [4:0] A3,
	 output [4:0] A3DM,
	 output [31:0] regdataDM,
    input WE,
    input clk,
    input reset
    );
reg [31:0] rst [0:4095];

assign A3DM=A3;

integer i;
assign {`instrbus}=instrbus;
wire [31:0] WDreal;
assign WDreal=(sw) ? WD :
				(sb)? WDsb :
				(sh)? WDsh :
				0;

wire [31:0] WDsb;
assign WDsb=(A[1:0]==0)? {RDword[31:8],WD[7:0]} :
				(A[1:0]==1)?{RDword[31:16],WD[7:0],RDword[7:0]}:
				(A[1:0]==2)?{RDword[31:24],WD[7:0],RDword[15:0]}:
				(A[1:0]==3)?{WD[7:0],RDword[23:0]}: 0;

wire [31:0] WDsh;
assign WDsh=((A[1:0]==0)||(A[1:0]==1))? {RDword[31:16],WD[15:0]} :
				((A[1:0]==2)||(A[1:0]==3))? {WD[15:0],RDword[15:0]} : 0;

always@(posedge clk)
begin
	if(reset)
	begin
	for(i=0;i<=4095;i=i+1)
	begin
	rst[i]<=0;
	end
	end
	else if(WE)
	begin
	$display("%d@%h: *%h <= %h",$time, pc, {{18{1'b0}},A[13:2],{2{1'b0}}}, WDreal);
	rst[A[13:2]]<=WDreal;
	end
end
wire [31:0] RDword;
assign RDword=rst[A[13:2]];

wire [31:0] lbout;
assign lbout=(A[1:0]==0) ? {{24{RDword[7]}},RDword[7:0]} :
				(A[1:0]==1) ? {{24{RDword[15]}},RDword[15:8]} :
				(A[1:0]==2) ? {{24{RDword[23]}},RDword[23:16]} :
				(A[1:0]==3) ? {{24{RDword[31]}},RDword[31:24]} : 0;

wire [31:0] lbuout;
assign lbuout=(A[1:0]==0) ? {{24{1'b0}},RDword[7:0]} :
				(A[1:0]==1) ? {{24{1'b0}},RDword[15:8]} :
				(A[1:0]==2) ? {{24{1'b0}},RDword[23:16]} :
				(A[1:0]==3) ? {{24{1'b0}},RDword[31:24]} : 0;

wire [31:0] lhout;
assign lhout=((A[1:0]==0)||(A[1:0]==1))?{{16{RDword[15]}},RDword[15:0]} : 
				((A[1:0]==2)||(A[1:0]==3)) ?{{16{RDword[31]}},RDword[31:16]} : 0;

wire [31:0] lhuout;
assign lhuout=((A[1:0]==0)||(A[1:0]==1))?{{16{1'b0}},RDword[15:0]} : 
				((A[1:0]==2)||(A[1:0]==3)) ?{{16{1'b0}},RDword[31:16]} : 0;


assign RD=(lw) ? RDword :
			(lb)? lbout :
			(lbu) ? lbuout :
			(lh) ? lhout :
			(lhu) ?lhuout :
			0;

assign regdataDM=(addu||subu||ori||lui||jal||addi||org||add||jalr||bgezall||sub||addiu||andg||andi||xorg||xori||norg||slt||slti||sltiu||sltu||sll||sllv||srl||srlv||sra||srav||mfhi||mflo)? regdata:
				(lw||lb||lbu||lh||lhu) ? RD : 0;
endmodule
