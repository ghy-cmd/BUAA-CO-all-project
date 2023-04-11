module IDEX(
    input clk,
    input reset,
    input IDEXStall,
    input IDEXFlush,
    input [10:0] IDInstructionID,
    input [4:0] IDRegDst,
    input IDRegWriteEn,
    input [4:0] IDRs,
    input [4:0] IDRt,
    input [4:0] IDRd,
    input [4:0] IDShamt,
    input [15:0] IDImm16,
    input [31:0] IDTimeNew,
    input [31:0] IDRD1,
    input [31:0] IDRD2,
    input [31:0] IDPC8,
    input [31:0] IDPC,
    input [31:0] IDErrorCode,
    input IDBD,
    output reg [31:0] EXPC,
    output reg [10:0] EXInstructionID,
    output reg [4:0] EXRegDst,
    output reg EXRegWriteEn,
    output reg [4:0] EXRs,
    output reg [4:0] EXRt,
    output reg [4:0] EXRd,
    output reg [4:0] EXShamt,
    output reg [15:0] EXImm16,
    output reg [31:0] EXRD1,
    output reg [31:0] EXRD2,
    output reg [31:0] EXRegWriteData,
    output reg [31:0] EXTimeNew,
    output reg [31:0] EXErrorCode,
    output reg EXBD
);
    always @(posedge clk)
   
    begin
           
           if(reset | IDEXFlush)
           begin
            EXInstructionID <= 0;
            EXRegDst <= 0;
            EXRegWriteEn <= 0;
            EXRs <= 0;
            EXRt <= 0;
            EXRd <= 0;
            EXShamt <= 0;
            EXImm16 <= 0;
            EXRD1 <= 0;
            EXRD2 <= 0;
			EXRegWriteData<=0;
            EXTimeNew<=2'b0;
            EXPC<=-1;
            EXErrorCode<=0;
            EXBD<=0;
       end
       else begin
           
           if(!IDEXStall)
           begin
                EXInstructionID <= IDInstructionID;
                EXRegDst <= IDRegDst;
                EXRegWriteEn <= IDRegWriteEn;
                EXRs <= IDRs;
                EXRt <= IDRt;
                EXRd <= IDRd;
                EXShamt <= IDShamt;
                EXImm16 <= IDImm16;
                EXRD1 <= IDRD1;
                EXRD2 <= IDRD2;
                EXTimeNew<=IDTimeNew>0?IDTimeNew-1:0;
                EXPC<=IDPC;
                EXRegWriteData<=IDPC8;
                EXErrorCode<=IDErrorCode?IDErrorCode:IDInstructionID==100?10:0;
                EXBD<=IDBD;
           end
       end
    end

    endmodule