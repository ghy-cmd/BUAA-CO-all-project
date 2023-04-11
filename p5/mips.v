`timescale 1ns / 1ps
`include "instrbus.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:34:44 11/22/2020 
// Design Name: 
// Module Name:    mips 
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
module mips(
	input clk,
	input reset
    );

////////////////////È¡Ö¸½×¶Î////////////////
wire [31:0] immoutRF;
wire [31:0] instrF;
wire [31:0] RD1RF;
wire BranchRF;
wire EQURF;
wire [31:0] instr;
wire [31:0] pc8;
wire [31:0] wpc;
wire [`instrbuswidth] instrbusRF;
wire stall;
wire [31:0] rsrealRF;
wire [31:0] rtrealRF;
wire [31:0] pcF;
wire xiao;
IFU ifu (
    .imm(immoutRF), 
    .instr(instrF), 
    .RD1(rsrealRF), 
	 .RD2(rtrealRF),
    .clk(clk), 
    .reset(reset), 
    .Branch(BranchRF), 
    .EQU(EQURF), 
    .out(instr), 
    .pc8(pc8), 
    .wpc(wpc),
	 .instrbus(instrbusRF),
	 .stall(stall),
	 .pcRF(pcF),
	 .xiao(xiao)
    );
	 
/////////////////IM_RFÁ÷Ë®Ïß¼Ä´æÆ÷//////////////////
wire [31:0] pc8F;

IM_RF im_rf(
    .instr(instr), 
    .pc(wpc), 
    .pc8(pc8), 
    .instrF(instrF), 
    .pcF(pcF), 
    .pc8F(pc8F), 
    .clk(clk), 
    .reset(reset),
	 .stall(stall),
	 .xiao(xiao),
	 .instrbus(instrbusRF)
	 
    );
//////////////////ÒëÂë½×¶Î/////////////////////////

wire RegWriteRF;
wire MemWriteRF;
wire [4:0] A1;
wire [4:0] A2;
wire [4:0] A3RF;
wire ALUmuxRF;
wire [15:0] imm;


wire [2:0] tuse_rsRF;
wire [2:0] tuse_rtRF;
wire [2:0] tnew;
wire [2:0] tnewD;
wire [2:0] tnewE;
decode de (
    .instr(instrF), 
    .instrbus(instrbusRF), 
    .RegWrite(RegWriteRF), 
    .MemWrite(MemWriteRF), 
    .Branch(BranchRF), 
    .A1(A1), 
    .A2(A2), 
    .A3(A3RF),
	 .imm(imm),
	 .ALUmux(ALUmuxRF),
	 .tuse_rs(tuse_rsRF),
	 .tuse_rt(tuse_rtRF),
	 .tnew(tnew)
    );

wire [4:0] A3M;
wire [31:0] RD2RF;
wire [31:0] regdataM;
wire [31:0] pcM;
wire RegWriteM;

GRF grf (
    .A1(A1), 
    .A2(A2), 
    .A3(A3M), 
    .RD1(RD1RF), 
    .RD2(RD2RF), 
    .WD(regdataM), 
    .pc(pcM), 
    .clk(clk), 
    .reset(reset)
    );

wire [31:0] pc8D;
wire [4:0] A3D;
wire [4:0] A3E;
wire [31:0] regdataE;


zhuanfa cmp (
    .rsyuanRF(RD1RF), 
    .rtyuanRF(RD2RF), 
    .rsARF(A1), 
    .rtARF(A2), 
    .A3D(A3D), 
    .A3E(A3E), 
    .A3M(A3M), 
    .regdataD(pc8D), 
    .regdataE(regdataE), 
    .regdataM(regdataM), 
    .rsrealRF(rsrealRF), 
    .rtrealRF(rtrealRF),
	 .tuse_rs(tuse_rsRF), 
    .tuse_rt(tuse_rtRF), 
    .tnewD(tnewD), 
    .tnewE(tnewE),  
    .stall(stall)
    );


another ano (
    .imm(imm), 
    .immout(immoutRF), 
    .instrbus(instrbusRF),
	 .RD1(rsrealRF),
	 .RD2(rtrealRF),
	 .EQU(EQURF)
    );

////////////////RF_EXÁ÷Ë®Ïß¼Ä´æÆ÷////////////////
wire [31:0] immoutD;
wire [`instrbuswidth] instrbusD;
wire [31:0] RD1D;
wire [31:0] RD2D;
wire RegWriteD;
wire MemWriteD;
wire ALUmuxD;
wire [31:0] pcD;
wire [4:0] A1D;
wire [4:0] A2D;


RF_EX rf_ex(
	.clk(clk),
	.reset(reset),
	.immout(immoutRF),
	.instrbus(instrbusRF),
	.RD1(rsrealRF),
	.RD2(rtrealRF),
	.RegWrite(RegWriteRF), 
   .MemWrite(MemWriteRF), 
	.ALUmux(ALUmuxRF),
	.pc(pcF),
	.pc8(pc8F),
	.A3(A3RF),
	.A1(A1),
	.A2(A2),
	.tnew(tnew),
	.stall(stall),
	
	.immoutD(immoutD),
	.instrbusD(instrbusD),
	.RD1D(RD1D),
	.RD2D(RD2D),
	.RegWriteD(RegWriteD), 
   .MemWriteD(MemWriteD), 
	.ALUmuxD(ALUmuxD),
	.pcD(pcD),
	.pc8D(pc8D),
	.A3D(A3D),
	.A1D(A1D),
	.A2D(A2D),
	.tnewD(tnewD)
);

//////////////Ö´ÐÐ½×¶Î//////////////////
wire [31:0] ALURD2EX;
wire [31:0] ALUOUTEX;
wire [31:0] regdataEX;

wire [31:0] rsrealEX;
wire [31:0] rtrealEX;
zhuanfa ALU (
    .A3D(A3D), 
    .A3E(A3E), 
    .A3M(A3M), 
    .regdataE(regdataE), 
    .regdataM(regdataM),  
    .rsyuanEX(RD1D), 
    .rtyuanEX(RD2D), 
    .rsAEX(A1D), 
    .rtAEX(A2D), 
    .rsrealEX(rsrealEX), 
    .rtrealEX(rtrealEX),
	 .tnewEDM(tnewE)
    );

assign ALURD2EX=(ALUmuxD==1)?immoutD:rtrealEX;

ALU alu (
    .RD1(rsrealEX), 
    .RD2(ALURD2EX), 
    .OUT(ALUOUTEX),
	 .pc8(pc8D),
	 .regdata(regdataEX),
    .instrbus(instrbusD)
    );

///////////////EX_DMÁ÷Ë®Ïß¼Ä´æÆ÷//////////
wire [`instrbuswidth] instrbusE;
wire [31:0] RD1E;
wire [31:0] RD2E;
wire [31:0] ALUOUTE;
wire RegWriteE;
wire MemWriteE;
wire [31:0] pcE;
wire [31:0] pc8E;
wire [4:0] A2E;

EX_DM ex_dm(
	.clk(clk),
	.reset(reset),
	.instrbus(instrbusD),
	.RD1(rsrealEX),
	.RD2(rtrealEX),
	.ALUOUT(ALUOUTEX),
	.RegWrite(RegWriteD), 
   .MemWrite(MemWriteD), 
	.pc(pcD),
	.pc8(pc8D),
	.A3(A3D),
	.A2(A2D),
	.regdata(regdataEX),
	.tnew(tnewD),
	
	.instrbusE(instrbusE),
	.RD1E(RD1E),
	.RD2E(RD2E),
	.ALUOUTE(ALUOUTE),
	.RegWriteE(RegWriteE), 
   .MemWriteE(MemWriteE),
	.pcE(pcE),
	.pc8E(pc8E),
	.A3E(A3E),
	.A2E(A2E),
	.regdataE(regdataE),
	.tnewE(tnewE)
);


////////////////·Ã´æ½×¶Î///////////
wire [31:0] regdataDM;
wire [31:0] RDDM;
wire [31:0] rtrealDM;
zhuanfa dmf (
    .A3D(A3D), 
    .A3E(A3E), 
    .A3M(A3M), 
    .regdataE(regdataE), 
    .regdataM(regdataM), 
    .rtyuanDM(RD2E), 
    .rtADM(A2E), 
    .rtrealDM(rtrealDM)
    );

DM dm (
	.instrbus(instrbusE),
	.regdata(regdataE),
	.regdataDM(regdataDM),
    .A(ALUOUTE), 
    .RD(RDDM), 
    .WD(rtrealDM), 
    .pc(pcE), 
    .WE(MemWriteE), 
    .clk(clk),
    .reset(reset)
    );

////////////DM_WBÁ÷Ë®Ïß¼Ä´æÆ÷////////////
wire [`instrbuswidth] instrbusM;




DM_WB dm_wb(
	.clk(clk),
	.reset(reset),
	.instrbus(instrbusE),
	.RegWrite(RegWriteE),  
	.pc(pcE),
	.A3(A3E),
	.regdata(regdataDM),
	
	.instrbusM(instrbusM),
	.RegWriteM(RegWriteM), 
	.pcM(pcM),
	.A3M(A3M),
	.regdataM(regdataM)
);
/////////////Ð´»Ø½×¶Î//////////




endmodule
