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
	input reset,
	input interrupt,
	output [31:0] addr        //宏观pc
    );

////////////////////取指阶段////////////////
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
wire ADELpc;
wire BD;
wire strange;/////中断或异常
wire eretM;
wire [31:0] epc;
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
	 .xiao(xiao),
	 .ADEL(ADELpc),
	 .BD(BD),
	 .strange(strange),
	 .eretM(eretM),
	 .epc(epc)
    );
	 
/////////////////IM_RF流水线寄存器//////////////////
wire [31:0] pc8F;
wire ADELpcF;
wire BDF;

IM_RF im_rf(
    .instr(instr), 
    .pc(wpc), 
    .pc8(pc8), 
	 .ADELpc(ADELpc),
	 .BD(BD),
	 
    .instrF(instrF), 
    .pcF(pcF), 
    .pc8F(pc8F), 
	 .ADELpcF(ADELpcF),
	 .BDF(BDF),
    .clk(clk), 
    .reset(reset),
	 .stall(stall),
	 .xiao(xiao),
	 .instrbus(instrbusRF),
	 .strange(strange),
	 .eretM(eretM)
	 
    );
//////////////////译码阶段/////////////////////////

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
wire isdm;
wire RIRF;
wire [4:0] rd;


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
	 .isdm(isdm),
	 .tuse_rs(tuse_rsRF),
	 .tuse_rt(tuse_rtRF),
	 .tnew(tnew),
	 .RI(RIRF),
	 .rd(rd)
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
wire busy;
wire start;


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
    .stall(stall),
	 .busy(busy),
	 .start(start),
	 .isdm(isdm)
    );


another ano (
    .imm(imm), 
    .immout(immoutRF), 
    .instrbus(instrbusRF),
	 .RD1(rsrealRF),
	 .RD2(rtrealRF),
	 .EQU(EQURF)
    );

////////////////RF_EX流水线寄存器////////////////
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
wire [31:0] instrD;
wire ADELpcD;
wire RID;
wire BDD;
wire [4:0] rdD;

RF_EX rf_ex(
	.clk(clk),
	.reset(reset),
	.strange(strange),
	.eretM(eretM),
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
	.instr(instrF),
	.ADELpc(ADELpcF),
	.RI(RIRF),
	.BD(BDF),
	.rd(rd),
	
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
	.tnewD(tnewD),
	.instrD(instrD),
	.ADELpcD(ADELpcD),
	.RID(RID),
	.BDD(BDD),
	.rdD(rdD)
);

//////////////执行阶段//////////////////
wire [31:0] ALURD2EX;
wire [31:0] ALUOUTEX;
wire [31:0] regdataEX;

wire [31:0] rsrealEX;
wire [31:0] rtrealEX;
wire [31:0] hi;
wire [31:0] lo;
wire OVEX;
wire ADELEX;
wire ADESEX;
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
    .instrbus(instrbusD),
	 .instr(instrD),
	 .hi(hi),
	 .lo(lo),
	 .OV(OVEX),
	 .ADELEX(ADELEX),
	 .ADESEX(ADESEX)
    );
md md (
    .instrbus(instrbusD), 
    .RD1(rsrealEX), 
    .RD2(ALURD2EX), 
    .busy(busy), 
    .start(start), 
    .hi(hi), 
    .lo(lo), 
    .clk(clk), 
    .reset(reset),
	 .strange(strange),
	 .eretM(eretM)
    );

///////////////EX_DM流水线寄存器//////////
wire [`instrbuswidth] instrbusE;
wire [31:0] RD1E;
wire [31:0] RD2E;
wire [31:0] ALUOUTE;
wire RegWriteE;
wire MemWriteE;
wire [31:0] pcE;
wire [31:0] pc8E;
wire [4:0] A2E;
wire ADELpcE;
wire RIE;
wire OVE;
wire ADELEXE;
wire ADESEXE;
wire BDE;
wire [4:0] rdE;

EX_DM ex_dm(
	.clk(clk),
	.reset(reset),
	.strange(strange),
	.eretM(eretM),
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
	.ADELpc(ADELpcD),
	.RI(RID),
	.OV(OVEX),
	.ADELEX(ADELEX),
	.ADESEX(ADESEX),
	.BD(BDD),
	.rd(rdD),
	
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
	.tnewE(tnewE),
	.ADELpcE(ADELpcE),
	.RIE(RIE),
	.OVE(OVE),
	.ADELEXE(ADELEXE),
	.ADESEXE(ADESEXE),
	.BDE(BDE),
	.rdE(rdE)
);


////////////////访存阶段///////////
wire [31:0] regdataDM;
wire [31:0] RDDM;
wire [31:0] rtrealDM;
wire [4:0] A3DM;
wire [31:0] Dout;
wire [31:0] cp0out;
wire IRQ0;
wire IRQ1;
wire ADELDM;
wire ADESDM;
wire WEreal;
assign WEreal=(strange)? 0 : MemWriteE;
zhuanfa dmf (
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
    .WE(WEreal), 
    .clk(clk),
    .reset(reset),
	 .A3DM(A3DM),
	 .A3(A3E),
	 .ADELDM(ADELDM),
	 .ADESDM(ADESDM),
	 .Dout(Dout),
	 .cp0out(cp0out)
    );
bridge bri (
    .clk(clk), 
    .reset(reset), 
    .Addr(ALUOUTE), 
    .WE(WEreal), 
    .Din(rtrealDM), 
    .Dout(Dout), 
    .IRQ0(IRQ0), 
    .IRQ1(IRQ1), 
    .instrbus(instrbusE)
    );

wire microBD;
assign addr=((pcE!=-1)||(ADELDM||ADESDM)) ? pcE :
				((pcD!=-1)||(OVEX||ADELEX||ADESEX)) ? pcD :
				((pcF!=-1)||(RIRF)) ? pcF : wpc;

assign microBD=((pcE!=-1)||(ADELDM||ADESDM)) ? BDE :
				((pcD!=-1)||(OVEX||ADELEX||ADESEX)) ? BDD :
				((pcF!=-1)||(RIRF)) ? BDF : BD;
				
cp0 cp (
    .instrbus(instrbusE), 
	 .rd(rdE),
    .pc(addr), 
    .clk(clk), 
    .reset(reset), 
    .RD2(rtrealDM), 
    .ADELpc(ADELpcE), 
    .RI(RIE), 
    .OV(OVE), 
    .ADELEX(ADELEXE), 
    .ADESEX(ADESEXE), 
    .ADELDM(ADELDM), 
    .ADESDM(ADESDM), 
    .IRQ0(IRQ0), 
    .IRQ1(IRQ1), 
    .interrupt(interrupt), 
    .BD(microBD), 
    .strange(strange),
	 .cp0out(cp0out),
	 .eretM(eretM),
	 .epc(epc)
    );
				

////////////DM_WB流水线寄存器////////////
wire [`instrbuswidth] instrbusM;




DM_WB dm_wb(
	.clk(clk),
	.reset(reset),
	.strange(strange),
	.instrbus(instrbusE),
	.RegWrite(RegWriteE),  
	.pc(pcE),
	.A3(A3DM),
	.regdata(regdataDM),
	
	.instrbusM(instrbusM),
	.RegWriteM(RegWriteM), 
	.pcM(pcM),
	.A3M(A3M),
	.regdataM(regdataM)
);
/////////////写回阶段//////////




endmodule
