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
	 input [31:0] instr,
	 output [31:0] regdata,
	 input [31:0] pc8,
	 input [31:0] hi,
	 input [31:0] lo,
	 output OV,
	 output ADELEX,
	 output ADESEX
    );
wire `instrbus;
assign {`instrbus}=instrbus;
wire [4:0] s;
assign s=(sll||srl||sra) ? instr[10:6] :
			(sllv||srlv||srav) ? RD1[4:0] :
			0;
wire [32:0] tempadd;
wire [32:0] tempsub;
assign tempadd={RD1[31],RD1}+{RD2[31],RD2};
assign tempsub={RD1[31],RD1}-{RD2[31],RD2};
assign OV=(((tempadd[32]!=tempadd[31])&&(add||addi))||((tempsub[32]!=tempsub[31])&&sub)) ? 1 : 0;
assign ADELEX=((tempadd[32]!=tempadd[31])&&(lw||lb||lbu||lh||lhu));
assign ADESEX=((tempadd[32]!=tempadd[31])&&(sw||sb||sh));
assign OUT=(addu||lw||sw||addi||add||addiu||lb||lbu||lh||lhu||sb||sh)? RD1+RD2 :
				(subu||sub)? RD1-RD2 :
				(ori||org)? RD1|RD2 :
				(norg) ? (~(RD1|RD2)) :
				(slt&&(($signed(RD1))<($signed(RD2)))) ? 1 :
				(slti&&(($signed(RD1))<($signed(RD2)))) ? 1 :
				((sltiu||sltu)&&(RD1<RD2)) ? 1 :
				(andg||andi) ? RD1&RD2 :
				(xorg||xori) ? (RD1^RD2) :
				(sll||sllv) ? (RD2<<s) :
				(srl||srlv) ? (RD2>>s) :
				(sra||srav) ? ($signed(($signed(RD2))>>>s)) :
				(lui)? {RD2[15:0],{16{1'b0}}} :
				0;

assign regdata=(addu||subu||ori||lui||addi||org||add||sub||addiu||andg||andi||xorg||xori||norg||slt||slti||sltiu||sltu||sll||sllv||srl||srlv||sra||srav) ? OUT :
					(jal||jalr||bgezall)? pc8 :
					(mfhi)? hi :
					(mflo)? lo :
					0;

endmodule