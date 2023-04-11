module mips(
    input clk,
    input reset,
    input interrupt,
    output [31:0] addr
);
    wire [31:0] PC;
    wire [31:0] IFInstruction;
    wire [31:0] IDInstruction;
    wire PCWrong;
    //-------------------------------
    wire IFIDStall;
    wire IFIDFlush;
    //-------------------------------
    wire [10:0] IDInstructionID;
    wire [4:0] IDRegDst;
    wire IDRegWriteEn;
    wire [4:0] IDRs;
    wire [4:0] IDRt;
    wire [4:0] IDRd;
    wire [4:0] IDShamt;
    wire [15:0] IDImm16;
    wire [25:0] IDImm26;
    wire [31:0] IDTimeNew;
    wire [31:0] IDTimeRtUse; 
    wire [31:0] IDTimeRsUse; 
    wire IDEXStall;
    wire IDEXFlush;
    wire [31:0] IDRD1Forward;
    wire [31:0] IDRD2Forward;
    wire [31:0] IDPC;
    wire [31:0] IDErrorCode;
    wire IDBD;
    //------------------------------
    wire [31:0] IDRD1;
    wire [31:0] IDRD2;
    //------------------------------
    wire cmpRes;
    //------------------------------
    wire [31:0] IDPC8;
    wire [31:0] NPC;
    //-------------------------------
    wire [10:0] EXInstructionID;
    wire [4:0] EXRegDst;
    wire EXRegWriteEn;
    wire [4:0] EXRs;
    wire [4:0] EXRt;
    wire [4:0] EXRd;
    wire [4:0] EXShamt;
    wire [15:0] EXImm16;
    //wire [25:0] EXImm26;
    wire [31:0] EXRD1;
    wire [31:0] EXRD2;
    wire [31:0] EXRegWriteData;
    wire [31:0] EXTimeNew;
    wire [31:0] EXRD1Forward;
    wire [31:0] EXRD2Forward;
    wire [31:0] EXPC;
    wire [31:0] EXErrorCode;
    wire EXBD;
	wire EXOverflow;
	wire EXAddrOverflow;
    //-------------------------------
    wire busy;
    wire start;
    wire [31:0] EXMdRes;
    //-------------------------------
    wire [31:0] EXALURes;
    //------------------------------- 
    wire EXMEMStall;
    wire EXMEMFlush;
    wire [10:0] MEMInstructionID;
    wire [4:0] MEMRegDst;
    wire MEMRegWriteEn;
    wire [4:0] MEMRs;
    wire [4:0] MEMRt;
    wire [4:0] MEMRd;
    wire [31:0] MEMRD1;
    wire [31:0] MEMRD2;
    wire [31:0] MEMRegWriteData;
    wire [31:0] MEMALURes;
    wire [31:0] MEMTimeNew;
    wire [31:0] MEMRD1Forward;
    wire [31:0] MEMRD2Forward;
    wire [31:0] MEMPC;
    wire [31:0] MEMErrorCode;
    wire MEMBD;
	wire MEMOverflow;
	wire MEMAddrOverflow;
	wire [31:0] MEMCp0Out;
	wire [31:0] MEMOutData;
    //-------------------------------
    wire intReq;
    wire [31:0] epc;
    //-------------------------------
    wire MEMWBStall;
    wire MEMWBFlush;
    wire [10:0] WBInstructionID;
    wire [4:0] WBRegDst;
    wire WBRegWriteEn;
    wire [4:0] WBRs;
    wire [4:0] WBRt;
    wire [4:0] WBRd;
    wire [31:0] WBRD1;
    wire [31:0] WBRD2;
    wire [31:0] WBRegWriteData;
    wire [31:0] WBALURes;
    wire [31:0] WBData;
    wire [31:0] WBPC;
    wire [31:0] WBTimeNew;
    //-------------------------------
    IFU IFU(
        .PC(PC),
        .NPC(NPC),
        .clk(clk),
        .PCStall(IFIDStall&&!IFIDFlush),
        .reset(reset),
        .instruction(IFInstruction),
        .PCError(IFPCError)
    );
    IFID IFID (
        .clk(clk), 
        .reset(reset), 
        .IFIDStall(IFIDStall), 
        .IFIDFlush(IFIDFlush), 
        .IFInstruction(IFInstruction),
        .IDInstructionID(IDInstructionID),
        .IFPCError(IFPCError), 
        .IFPC(PC),
        .IDPC(IDPC),
        .IDInstruction(IDInstruction),
        .IDBD(IDBD),
		.IDErrorCode(IDErrorCode)
    );
    decodeUnit decodeUnit (
        .instruction(IDInstruction), 
        .instructionID(IDInstructionID), 
        .regDst(IDRegDst), 
        .regWriteEn(IDRegWriteEn), 
        .rs(IDRs), 
        .rt(IDRt), 
        .rd(IDRd), 
        .shamt(IDShamt), 
        .imm16(IDImm16), 
        .imm26(IDImm26),
        .timeNew(IDTimeNew),
        .timeRsUse(IDTimeRsUse),
        .timeRtUse(IDTimeRtUse)
    );
     // Instantiate the module
    RF RF (
        .regWriteData(WBRegWriteData), 
        .regWriteEn(WBRegWriteEn), 
        .A1(IDRs), 
        .A2(IDRt), 
        .A3(WBRegDst), 
        .clk(clk), 
        .reset(reset), 
        .RD1(IDRD1), 
        .RD2(IDRD2),
        .WBPC(WBPC)
    );
    cmp cmp (
        .instructionID(IDInstructionID), 
        .A(IDRD1Forward), 
        .B(IDRD2Forward), 
        .cmpRes(cmpRes)
    );
    NPC my_NPC (
        .PC(PC), 
        .IDInstructionID(IDInstructionID),
        .MEMInstructionID(MEMInstructionID),
        .intReq(intReq),
        .epc(epc),
        .imm26(IDImm26), 
        .RD1(IDRD1Forward), 
        .imm16(IDImm16), 
        .cmpRes(cmpRes), 
        .PC8(IDPC8), 
        .NPC(NPC)
    );
    IDEX IDEX (
        .clk(clk), 
        .reset(reset), 
        .IDEXStall(IDEXStall), 
        .IDEXFlush(IDEXFlush), 
        .IDInstructionID(IDInstructionID), 
        .IDRegDst(IDRegDst), 
        .IDRegWriteEn(IDRegWriteEn), 
        .IDRs(IDRs), 
        .IDRt(IDRt), 
        .IDRd(IDRd), 
        .IDShamt(IDShamt), 
        .IDImm16(IDImm16), 
        .IDRD1(IDRD1Forward), 
        .IDRD2(IDRD2Forward), 
        .IDPC8(IDPC8), 
        .IDTimeNew(IDTimeNew),
        .IDErrorCode(IDErrorCode),
        .IDPC(IDPC),
        .IDBD(IDBD),
        .EXPC(EXPC),
        .EXInstructionID(EXInstructionID), 
        .EXRegDst(EXRegDst), 
        .EXRegWriteEn(EXRegWriteEn), 
        .EXRs(EXRs), 
        .EXRt(EXRt), 
        .EXRd(EXRd), 
        .EXShamt(EXShamt), 
        .EXImm16(EXImm16), 
        .EXRD1(EXRD1), 
        .EXRD2(EXRD2), 
        .EXRegWriteData(EXRegWriteData),
        .EXTimeNew(EXTimeNew),
        .EXErrorCode(EXErrorCode),
        .EXBD(EXBD)
    );
    md md(
        .instructionID(EXInstructionID),
        .A(EXRD1Forward),
        .B(EXRD2Forward),
        .clk(clk),
        .reset(reset),
        .intReq(intReq),
        .start(start),
        .busy(busy),

        .mdRes(EXMdRes)
    );
    ALU ALU (
        .A(EXRD1Forward), 
        .B(EXRD2Forward), 
        .instructionID(EXInstructionID), 
        .shamt(EXShamt), 
        .imm16(EXImm16), 
        .C(EXALURes), 
        .overflow(EXOverflow),
        .addrOverflow(EXAddrOverflow)
    );
     
    EXMEM EXMEM (
        .clk(clk), 
        .reset(reset), 
        .EXMEMstall(EXMEMStall), 
        .EXMEMFlush(EXMEMFlush), 
        .EXInstructionID(EXInstructionID), 
        .EXRegDst(EXRegDst), 
        .EXRegWriteEn(EXRegWriteEn), 
        .EXRs(EXRs), 
        .EXRt(EXRt), 
        .EXRd(EXRd), 
        .EXRD1(EXRD1Forward), 
        .EXRD2(EXRD2Forward), 
        .EXRegWriteData(EXRegWriteData), 
        .EXALURes(EXALURes), 
        .EXTimeNew(EXTimeNew),
        .EXPC(EXPC),
        .EXMdRes(EXMdRes),
        .EXErrorCode(EXErrorCode),
        .EXOverflow(EXOverflow),
        .EXAddrOverflow(EXAddrOverflow),
        .EXBD(EXBD),
        .MEMALURes(MEMALURes),
        .MEMPC(MEMPC),
        .MEMInstructionID(MEMInstructionID), 
        .MEMRegDst(MEMRegDst), 
        .MEMRegWriteEn(MEMRegWriteEn), 
        .MEMRs(MEMRs), 
        .MEMRt(MEMRt), 
        .MEMRd(MEMRd), 
        .MEMRD1(MEMRD1), 
        .MEMRD2(MEMRD2), 
        .MEMRegWriteData(MEMRegWriteData), 
        .MEMTimeNew(MEMTimeNew),
        .MEMErrorCode(MEMErrorCode),
		.MEMOverflow(MEMOverflow),
		.MEMAddrOverflow(MEMAddrOverflow),
        .MEMBD(MEMBD)
    );
    
    memStage memStage (
		.clk(clk), 
		.reset(reset), 
		.MEMInstructionID(MEMInstructionID), 
		.MEMRegDst(MEMRegDst), 
		.MEMRegWriteEn(MEMRegWriteEn), 
		.MEMRs(MEMRs), 
		.MEMRt(MEMRt), 
		.MEMRd(MEMRd), 
		.MEMRD1Forward(MEMRD1Forward), 
		.MEMRD2Forward(MEMRD2Forward), 
		.MEMRegWriteData(MEMRegWriteData), 
		.MEMALURes(MEMALURes), 
		.MEMErrorCode(MEMErrorCode), 
		.interrupt(interrupt), 
		.MEMOverflow(MEMOverflow), 
		.MEMBD(MEMBD),
		.EXBD(EXBD),
		.IDBD(IDBD),
        .MEMAddrOverflow(MEMAddrOverflow),
		.WBPC(WBPC),
		.MEMPC(MEMPC), 
		.EXPC(EXPC), 
		.IDPC(IDPC), 
		.IFPC(PC), 
		.MEMOutData(MEMOutData), 
		.cp0Out(MEMCp0Out), 
		.intReq(intReq), 
		.epc(epc), 
		.unfinishedPC(addr)
    );
// Instantiate the module
    MEMWB MEMWB (
        .clk(clk), 
        .reset(reset), 
        .MEMWBStall(MEMWBStall), 
        .MEMWBFlush(MEMWBFlush), 
        .MEMInstructionID(MEMInstructionID), 
        .MEMRegDst(MEMRegDst), 
        .MEMRegWriteEn(MEMRegWriteEn), 
        .MEMRs(MEMRs), 
        .MEMRt(MEMRt), 
        .MEMRd(MEMRd), 
        .MEMRD1(MEMRD1Forward), 
        .MEMRD2(MEMRD2Forward), 
        .MEMRegWriteData(MEMRegWriteData), 
        .MEMData(MEMOutData), 
        .MEMTimeNew(MEMTimeNew),
        .MEMPC(MEMPC),
        .MEMALURes(MEMALURes),
        .MEMCp0Out(MEMCp0Out),		
        .WBPC(WBPC),
        .WBInstructionID(WBInstructionID), 
        .WBRegDst(WBRegDst), 
        .WBRegWriteEn(WBRegWriteEn), 
        .WBRegWriteData(WBRegWriteData), 
        .WBTimeNew(WBTimeNew)
    );
    forward forward (
        
        .IDRs(IDRs), 
        .IDRt(IDRt), 
        .IDRd(IDRd), 
        .IDRD1(IDRD1), 
        .IDRD2(IDRD2), 
        .EXRD1(EXRD1), 
        .EXRD2(EXRD2), 
        .EXRs(EXRs), 
        .EXRt(EXRt), 
        .EXRegDst(EXRegDst), 
        .EXRegWriteData(EXRegWriteData), 
        .MEMRD1(MEMRD1), 
        .MEMRD2(MEMRD2), 
        .MEMRs(MEMRs), 
        .MEMRt(MEMRt), 
        .MEMRegDst(MEMRegDst), 
        .MEMRegWriteData(MEMRegWriteData),
        .WBRegWriteData(WBRegWriteData), 
        .WBRegDst(WBRegDst), 
        .IDRD1Forward(IDRD1Forward), 
        .IDRD2Forward(IDRD2Forward), 
        .EXRD1Forward(EXRD1Forward), 
        .EXRD2Forward(EXRD2Forward), 
        .MEMRD1Forward(MEMRD1Forward), 
        .MEMRD2Forward(MEMRD2Forward)
        );
    stall stall(
        
        .IDInstructionID(IDInstructionID),
        .EXInstructionID(EXInstructionID),
        .MEMInstructionID(MEMInstructionID),
        .WBInstructionID(WBInstructionID),
   
        .IDTimeRsUse(IDTimeRsUse),
        .IDTimeRtUse(IDTimeRtUse),
        .IDTimeNew(IDTimeNew),
        .EXTimeNew(EXTimeNew),
        .MEMTimeNew(MEMTimeNew),
        .WBTimeNew(WBTimeNew),

        .busy(busy),
        .start(start),
		.intReq(intReq),
        .IDRs(IDRs),
        .IDRt(IDRt),
        
        .IDRegDst(IDRegDst),
        .EXRegDst(EXRegDst),
        .MEMRegDst(MEMRegDst),
        .WBRegDst(WBRegDst),
        
        .IFIDStall(IFIDStall),
        .IFIDFlush(IFIDFlush),
        .IDEXStall(IDEXStall),
        .IDEXFlush(IDEXFlush),
        .EXMEMStall(EXMEMStall),
        .EXMEMFlush(EXMEMFlush),
        .MEMWBStall(MEMWBStall),
        .MEMWBFlush(MEMWBFlush)
    );
endmodule