`timescale 1ns / 1ps
`include "lib.v"
`include "instrbus.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:19:31 11/22/2020 
// Design Name: 
// Module Name:    decode 
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
module decode(
	input [31:0] instr,
	output [`instrbuswidth] instrbus,
	output RegWrite,
	output MemWrite,
	output Branch,
	output [4:0] A1,
	output [4:0] A2,
	output [4:0] A3,
	output [15:0] imm,
	output ALUmux,
	output isdm,
	output [2:0] tuse_rs,
	output [2:0] tuse_rt,
	output [2:0] tnew,
	output RI,
	output [4:0] rd
	);
wire [4:0] rs;
wire [4:0] rt;
wire [5:0] op;
wire [5:0] fuction;
assign rs=instr[25:21];
assign rt=instr[20:16];
assign rd=instr[15:11];
assign op=instr[31:26];
assign fuction=instr[5:0];

wire addu=((op==`adduop)&&(fuction==`addu_fuction));
wire add=((op==`addop)&&(fuction==`add_fuction));
wire subu=((op==`subuop)&&(fuction==`subu_fuction));
wire sub=((op==`subop)&&(fuction==`sub_fuction));
wire ori=(op==`oriop);
wire lw=(op==`lwop);
wire sw=(op==`swop);
wire beq=(op==`beqop);
wire bltz=((op==`bltzop)&&(rt==5'b00000));
wire bgez=((op==`bgezop)&&(rt==`bgez_rt));
wire bgtz=(op==`bgtzop);
wire blez=(op==`blezop);
wire bne=(op==`bneop);
wire lui=(op==`luiop);
wire j=(op==`jop);
wire jal=(op==`jalop);
wire jr=((op==`jrop)&&(fuction==`jr_fuction));
wire jalr=((op==`jalrop)&&(fuction==`jalr_fuction));
wire addi=(op==`addiop);
wire addiu=(op==`addiuop);
wire org=((op==`orop)&&(fuction==`or_fuction));//orÖ¸Áî!
wire nop=(instr==8'h000000);
wire bgezall=((op==`bgezallop)&&(rt==`bgezall_rt));
wire andg=((op==`andop)&&(fuction==`and_fuction));
wire andi=(op==`andiop);
wire xorg=((op==`xorop)&&(fuction==`xor_fuction));
wire xori=(op==`xoriop);
wire norg=((op==`norop)&&(fuction==`nor_fuction));
wire slt=((op==`sltop)&&(fuction==`slt_fuction));
wire sltu=((op==`sltuop)&&(fuction==`sltu_fuction));
wire slti=(op==`sltiop);
wire sltiu=(op==`sltiuop);
wire sll=((op==`sllop)&&(fuction==`sll_fuction));
wire sllv=((op==`sllvop)&&(fuction==`sllv_fuction));
wire srl=((op==`srlop)&&(fuction==`srl_fuction));
wire srlv=((op==`srlvop)&&(fuction==`srlv_fuction));
wire sra=((op==`sraop)&&(fuction==`sra_fuction));
wire srav=((op==`sravop)&&(fuction==`srav_fuction));
wire lb=(op==`lbop);
wire lbu=(op==`lbuop);
wire lh=(op==`lhop);
wire lhu=(op==`lhuop);
wire sb=(op==`sbop);
wire sh=(op==`shop);
wire mult=((op==`multop)&&(fuction==`mult_fuction));
wire multu=((op==`multuop)&&(fuction==`multu_fuction));
wire div=((op==`divop)&&(fuction==`div_fuction));
wire divu=((op==`divuop)&&(fuction==`divu_fuction));
wire mfhi=((op==`mfhiop)&&(fuction==`mfhi_fuction));
wire mflo=((op==`mfloop)&&(fuction==`mflo_fuction));
wire mthi=((op==`mthiop)&&(fuction==`mthi_fuction));
wire mtlo=((op==`mtloop)&&(fuction==`mtlo_fuction));
wire mtc0=((op==`mtc0op)&&(rs==`mtc0_rs));
wire mfc0=((op==`mfc0op)&&(rs==`mfc0_rs));
wire eret=(instr==32'b010000_1000_0000_0000_0000_0000_011000);

assign RI=(instrbus==0) ? 1 : 0;
assign instrbus={`instrbus};
assign RegWrite=(addu||subu||ori||lw||lui||jal||addi||org||add||jalr||bgezall||sub||addiu||andg||andi||xorg||xori||norg||slt||slti||sltiu||sltu||sll||sllv||srl||srlv||sra||srav||lb||lbu||lh||lhu||mfhi||mflo||mfc0);
assign MemWrite=(sw||sb||sh);
assign Branch=beq;
assign ALUmux=(ori||lw||sw||lui||addi||addiu||andi||xori||slti||sltiu||lb||lbu||lh||lhu||sb||sh);
assign isdm=(mult||multu||div||divu||mfhi||mflo||mthi||mtlo);


assign A1=(instr[25:21]);
assign A2=(instr[20:16]);
assign A3=(addu||subu||org||add||jalr||sub||andg||xorg||norg||slt||sltu||sll||sllv||srl||srlv||sra||srav||mfhi||mflo)?(instr[15:11]):
			(jal||bgezall)?(5'b11111) : 
			(ori||lw||lui||addi||addiu||andi||xori||slti||sltiu||lb||lbu||lh||lhu||mfc0)?(instr[20:16]):0; 
assign imm=instr[15:0];			



//////////////////TUSE TNEW/////////////

assign tuse_rs=(addu||subu||ori||lw||lb||lbu||lh||lhu||sw||sb||sh||addi||org||add||sub||addiu||andg||andi||xorg||xori||norg||slt||slti||sltiu||sltu||sllv||srlv||srav||mult||multu||div||divu||mthi||mtlo)? 1 : 
					(beq||jr||jalr||bltz||bgezall||bgez||bgtz||blez||bne)? 0 : 6 ;//¶Á¼Ä´æÆ÷

assign tuse_rt=(sw||sb||sh||mtc0)? 2 :
					(addu||subu||org||add||sub||andg||xorg||norg||slt||sltu||sll||sllv||srl||srlv||sra||srav||mult||multu||div||divu)? 1 : 
					(beq||bne)? 0 : 6 ;
					
assign tnew=(lw||lb||lbu||lh||lhu||mfc0)? 3 :
				(addu||subu||ori||lui||addi||org||add||sub||addiu||andg||andi||xorg||xori||norg||slt||slti||sltiu||sltu||sll||sllv||srl||srlv||sra||srav||mfhi||mflo)? 2 : 
				(jal||jalr||bgezall)? 1 : 0;//´æ¼Ä´æÆ÷
/////////////////////////////////////////




endmodule
