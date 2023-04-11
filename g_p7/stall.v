`include "lib.v"
module stall(
   
    input [10:0] IDInstructionID,
    input [10:0] EXInstructionID,
    input [10:0] MEMInstructionID,
    input [10:0] WBInstructionID,
    
    input [31:0] IDTimeRsUse,
    input [31:0] IDTimeRtUse,
    input [31:0] IDTimeNew,
    input [31:0] EXTimeNew,
    input [31:0] MEMTimeNew,
    input [31:0] WBTimeNew,

    input [4:0] IDRs,
    input [4:0] IDRt,
    input busy,
    input start,
    input intReq,

    input [4:0] IDRegDst,
    input [4:0] EXRegDst,
    input [4:0] MEMRegDst,
    input [4:0] WBRegDst,
    
    output  IFIDStall,
    output  IFIDFlush,
    output  IDEXStall,
    output  IDEXFlush,
    output  EXMEMStall,
    output  EXMEMFlush,
    output  MEMWBStall,
    output  MEMWBFlush
);
    wire stallRs;
    wire stallRt;
    assign stallrs=
    (IDTimeRsUse<EXTimeNew&&IDRs==EXRegDst&&EXRegDst!=0)||
    (IDTimeRsUse<MEMTimeNew&&IDRs==MEMRegDst&&MEMRegDst!=0)||
    (IDTimeRsUse<WBTimeNew&&IDRs==WBRegDst&&WBRegDst!=0);

    assign stallrt=
    (IDTimeRtUse<EXTimeNew&&IDRt==EXRegDst&&EXRegDst!=0)||
    (IDTimeRtUse<MEMTimeNew&&IDRt==MEMRegDst&&MEMRegDst!=0)||
    (IDTimeRtUse<WBTimeNew&&IDRt==WBRegDst&&WBRegDst!=0);

    assign stallmul  =  (busy||start)&&
    (
        IDInstructionID==`mfhi||
        IDInstructionID==`mflo||
        IDInstructionID==`mthi||
        IDInstructionID==`mtlo||
        IDInstructionID==`mult||
        IDInstructionID==`multu||
        IDInstructionID==`div||
        IDInstructionID==`divu
    );

    assign IFIDStall = stallrs|stallrt||stallmul;
    assign IDEXFlush = stallrs|stallrt||stallmul||intReq;
    assign IFIDFlush = intReq;
    assign IDEXStall = 0;
    assign EXMEMStall = 0;
    assign EXMEMFlush = intReq;
    assign MEMWBStall = 0;
    assign MEMWBFlush = intReq;
endmodule