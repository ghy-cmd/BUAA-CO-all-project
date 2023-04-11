`include "lib.v"
module memStage(
	input clk,
	input reset,
	input [10:0] MEMInstructionID,
    input [4:0] MEMRegDst,
    input MEMRegWriteEn,
    input [4:0] MEMRs,
    input [4:0] MEMRt,
    input [4:0] MEMRd,
    input [31:0] MEMRD1Forward,
    input [31:0] MEMRD2Forward,
    input [31:0] MEMRegWriteData,
    input [31:0] MEMALURes,
    input [31:0] MEMErrorCode,
    input interrupt,
    input MEMOverflow,
    input MEMAddrOverflow,
    input MEMBD,
    input EXBD,
    input IDBD,
	input [31:0] WBPC,
    input [31:0] MEMPC,
    input [31:0] EXPC,
    input [31:0] IDPC,
    input [31:0] IFPC,
    output [31:0] MEMOutData,
    output [31:0] cp0Out,
    output intReq,
    output [31:0] epc,
    output [31:0] unfinishedPC
);
	wire memStoreError;
    wire memLoadError;
	wire [31:0] finalErrorCode;
	wire [31:0] prRD;
    wire [7:2]timerIRQ;
	wire [31:0] DMData;
	wire isKernel;
	wire [31:0] finalEpc;
    wire finalBD;
	assign MEMOutData=(MEMALURes<32'h00003000)?DMData:prRD;
	assign isLoad=(
        MEMInstructionID==`lb||
        MEMInstructionID==`lbu||
        MEMInstructionID==`lhu||
        MEMInstructionID==`lh||
		MEMInstructionID==`lw
    );
    assign isStore=(
        MEMInstructionID==`sb||
        MEMInstructionID==`sh||
        MEMInstructionID==`sw
    );
    
    assign memLoadError=(isLoad&&(!(MEMALURes<=32'h00002fff||(MEMALURes>=32'h00007F00&&MEMALURes<=32'h00007F0B)||(MEMALURes>=32'h00007F10&&MEMALURes<=32'h00007F1B))))||
                        (isLoad&&MEMAddrOverflow)||
                        (MEMInstructionID==`lw&&MEMALURes[1:0]!=0)||
                        ((MEMInstructionID==`lh||MEMInstructionID==`lhu)&&MEMALURes[0]!=0)||
                        (isLoad&&MEMInstructionID!=`lw&&((MEMALURes>=32'h00007f00&&MEMALURes<=32'h00007F1F)));
    assign memStoreError=(isStore&&(!(MEMALURes<=32'h00002FFF||(MEMALURes>=32'h00007F00&&MEMALURes<=32'h00007F0B)||(MEMALURes>=32'h00007F10&&MEMALURes<=32'h00007F1B))))||
                        (isStore&&MEMAddrOverflow)||
                        (MEMInstructionID==`sw&&MEMALURes[1:0]!=0)||
                        ((MEMInstructionID==`sh)&&MEMALURes[0]!=0)||
                        (isStore&&MEMInstructionID!=`sw&&((MEMALURes>=32'h00007F00&&MEMALURes<=32'h00007F1F)))||
                        (MEMInstructionID==`sw&&(MEMALURes==32'h00007f08||MEMALURes==32'h00007f18));
    
    assign finalErrorCode=MEMErrorCode?MEMErrorCode:memStoreError?5:memLoadError?4:0;
    
    assign isKernel=MEMPC>=32'h00004180;
    
    assign finalBD=MEMPC!=-1?MEMBD:
                    EXPC!=-1?EXBD:
				    IDPC!=-1?IDBD:0;

    assign finalEpc=finalBD?unfinishedPC-4:unfinishedPC;
	DM DM (
        .memInData(MEMRD2Forward), 
        .instructionID(MEMInstructionID), 
        .clk(clk), 
		.intReq(intReq),
        .reset(reset), 
        .MEMPC(MEMPC),
        .memInAddr(MEMALURes), 
        .memOutData(DMData)
    );
    cp0 cp0(
    	.clk(clk),
        .reset(reset),
        .MEMInstructionID(MEMInstructionID),
        .MEMRd(MEMRd),		
        .MEMRD2Forward(MEMRD2Forward),
        .finalEpc({finalEpc[31:2],2'b0}),
        .errorCode(finalErrorCode),
        .HWInt({3'b0,interrupt,timerIRQ[3:2]}),	
    	.BD(finalBD),
        .intReq(intReq),		
        .epc(epc),
        .cp0Out(cp0Out)
    );
    
    bridge bridge(
        .clk(clk),
        .reset(reset),
        .prAddr(MEMALURes),
        .prWD(MEMRD2Forward),
        .instructionID(MEMInstructionID),
        .intReq(intReq),
        .prRD(prRD),
        .HWInt(timerIRQ)
    );
    assign unfinishedPC[31:2]=MEMPC!=-1?MEMPC[31:2]:
                            EXPC!=-1?EXPC[31:2]:
					        IDPC!=-1?IDPC[31:2]:IFPC[31:2];
    assign unfinishedPC[1:0]=2'b0;
 endmodule