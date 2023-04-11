`include "lib.v"
module MEMWB(
    input clk,
    input reset,
    input MEMWBStall,
    input MEMWBFlush,
    input [10:0] MEMInstructionID,
    input [4:0] MEMRegDst,
    input MEMRegWriteEn,
    input [4:0] MEMRs,
    input [4:0] MEMRt,
    input [4:0] MEMRd,
    input [31:0] MEMRD1,
    input [31:0] MEMRD2,
    input [31:0] MEMRegWriteData,
    input [31:0] MEMData,
    input [31:0] MEMTimeNew,
    input [31:0] MEMPC,
    input [31:0] MEMALURes,
    input [31:0] MEMCp0Out,
    output reg [10:0] WBInstructionID,
    output reg [4:0] WBRegDst,
    output reg WBRegWriteEn,
    output reg [31:0] WBPC,
    output [31:0] WBRegWriteData,
    output reg [31:0] WBTimeNew
);
    
    reg [31:0] tempData;
    reg [31:0] tempRegWriteData;
    reg [31:0] tempALURes;
    reg [31:0] tempCp0Out;
    wire [31:0] extData;
    wire [31:0] loadTempData;
    reg [31:0] hiddenPC1;
    reg [31:0] hiddenPC;
    assign loadTempData=
    (WBInstructionID==`lw)?tempData:
    (WBInstructionID==`lb||WBInstructionID==`lbu)?tempData[tempALURes[1:0]*8+7-:8]:
    (WBInstructionID==`lh||WBInstructionID==`lhu)?tempData[tempALURes[1]*16+15-:16]:114514;
    assign extData=
    (WBInstructionID==`lw)?loadTempData:
    (WBInstructionID==`lb)?{{24{loadTempData[7]}},loadTempData[7:0]}:
    (WBInstructionID==`lbu)?{{24'b0},loadTempData[7:0]}:
    (WBInstructionID==`lh)?{{16{loadTempData[15]}},loadTempData[15:0]}:
    (WBInstructionID==`lhu)?{{16'b0},loadTempData[15:0]}:114514;
    assign WBRegWriteData=(
        WBInstructionID==`lw||
        WBInstructionID==`lb||
        WBInstructionID==`lbu||
        WBInstructionID==`lh||
        WBInstructionID==`lhu
    )?extData:(
        WBInstructionID==`mfc0
    )?tempCp0Out:tempRegWriteData;

    always @(posedge clk)
    begin
           
           if(reset | MEMWBFlush)
           begin
            WBInstructionID <= 0;
            WBRegDst <= 0;
            WBRegWriteEn <= 0;
            WBPC<=0;
            tempData<=0;
            tempRegWriteData<=0;
            tempALURes<=0;
            tempCp0Out<=0;
			WBTimeNew<=0;
       end
       else begin
           if(!MEMWBStall)
           begin
                WBInstructionID <= MEMInstructionID;
                WBRegDst <= MEMRegDst;
                WBRegWriteEn <= MEMRegWriteEn;
                WBPC<=MEMPC;
                WBTimeNew<=MEMTimeNew>0?MEMTimeNew-2'b1:2'b0;
                tempData<=MEMData;
                tempRegWriteData<= MEMRegWriteData;
                tempALURes<=MEMALURes;
				tempCp0Out<=MEMCp0Out;
           end
       end
    end

    endmodule