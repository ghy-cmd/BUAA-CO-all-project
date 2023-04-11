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
	output [2:0] tuse_rs,
	output [2:0] tuse_rt,
	output [2:0] tnew
	);
wire [4:0] rs;
wire [4:0] rt;
wire [4:0] rd;
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
wire ori=(op==`oriop);
wire lw=(op==`lwop);
wire sw=(op==`swop);
wire beq=(op==`beqop);
wire bltz=((op==`bltzop)&&(rt==5'b00000));
wire lui=(op==`luiop);
wire j=(op==`jop);
wire jal=(op==`jalop);
wire jr=((op==`jrop)&&(fuction==`jr_fuction));
wire jalr=((op==`jalrop)&&(fuction==`jalr_fuction));
wire addi=(op==`addiop);
wire org=((op==`orop)&&(fuction==`or_fuction));//orÖ¸Áî!
wire nop=(instr==8'h000000);
wire bgezall=((op==`bgezallop)&&(rt==`bgezall_rt));


assign instrbus={`instrbus};
assign RegWrite=(addu||subu||ori||lw||lui||jal||addi||org||add||jalr||bgezall);
assign MemWrite=sw;
assign Branch=beq;
assign ALUmux=(ori||lw||sw||lui||addi);


assign A1=(instr[25:21]);
assign A2=(instr[20:16]);
assign A3=(addu||subu||org||add||jalr)?(instr[15:11]):
			(jal||bgezall)?(5'b11111) : 
			(ori||lw||lui||addi)?(instr[20:16]):0; 
assign imm=instr[15:0];			



//////////////////TUSE TNEW/////////////

assign tuse_rs=(addu||subu||ori||lw||sw||addi||org||add)? 1 : 
					(beq||jr||jalr||bltz||bgezall)? 0 : 6 ;//¶Á¼Ä´æÆ÷

assign tuse_rt=(sw)? 2 :
					(addu||subu||org||add)? 1 : 
					(beq)? 0 : 6 ;
					
assign tnew=(lw)? 3 :
				(addu||subu||ori||lui||addi||org||add)? 2 : 
				(jal||jalr||bgezall)? 1 : 0;//´æ¼Ä´æÆ÷
/////////////////////////////////////////




endmodule
