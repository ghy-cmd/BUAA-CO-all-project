`include "lib.v"
module EXMEM(
    input clk,
    input reset,
    input EXMEMstall,
    input EXMEMFlush,
    input [10:0] EXInstructionID,
    input [4:0] EXRegDst,
    input EXRegWriteEn,
    input [4:0] EXRs,
    input [4:0] EXRt,
    input [4:0] EXRd,
    input [31:0] EXRD1,
    input [31:0] EXRD2,
    input [31:0] EXRegWriteData,
    input [31:0] EXALURes,
    input [31:0] EXTimeNew,
    input [31:0] EXPC,
    input [31:0] EXMdRes,
    input [31:0] EXErrorCode,
    input EXOverflow,
    input EXAddrOverflow,
    input EXBD,
    output reg [10:0] MEMInstructionID,
    output reg [4:0] MEMRegDst,
    output reg MEMRegWriteEn,
    output reg [4:0] MEMRs,
    output reg [4:0] MEMRt,
    output reg [4:0] MEMRd,
    output reg [31:0] MEMRD1,
    output reg [31:0] MEMRD2,
    output reg [31:0] MEMRegWriteData,
    output reg [31:0] MEMTimeNew,
    output reg [31:0] MEMPC,
    output reg [31:0] MEMErrorCode,
    output reg [31:0] MEMALURes,
    output reg MEMBD,
    output reg MEMOverflow,
    output reg MEMAddrOverflow
);
    
    always @(posedge clk)
    begin
       if(reset | EXMEMFlush)
           begin
            MEMInstructionID <= 0;
            MEMRegDst <= 0;
            MEMRegWriteEn <= 0;
            MEMRs <= 0;
            MEMRt <= 0;
            MEMRd <= 0;
            MEMRD1 <= 0;
            MEMRD2 <= 0;
            MEMPC <= -1;
            MEMTimeNew<=2'b0;
            MEMALURes<=0;
            MEMOverflow<=0;
            MEMAddrOverflow<=0;
            MEMBD<=0;
			MEMRegWriteData<=0;
			MEMErrorCode<=0;
       end
       else begin
           
           if(!EXMEMstall)
           begin
                MEMInstructionID <= EXInstructionID;
                MEMRegDst <= EXRegDst;
                MEMRegWriteEn <= EXRegWriteEn;
                MEMRs <= EXRs;
                MEMRt <= EXRt;
                MEMRd <= EXRd;
                MEMRD1 <= EXRD1;
                MEMRD2 <= EXRD2;
                MEMPC <= EXPC;
                MEMTimeNew<=EXTimeNew>0?EXTimeNew-1:2'b0;
                MEMRegWriteData<=
                (
                    EXInstructionID==`jal||
                    EXInstructionID==`jalr
                )?EXRegWriteData:
                (
                    EXInstructionID==`mfhi||
                    EXInstructionID==`mflo
                )?EXMdRes:EXALURes;
                MEMErrorCode<=EXErrorCode?EXErrorCode:EXOverflow?12:0;
                MEMALURes<=EXALURes;
                MEMOverflow<=EXOverflow;
                MEMAddrOverflow<=EXAddrOverflow;
                MEMBD<=EXBD;
           end
       end
    end

    endmodule