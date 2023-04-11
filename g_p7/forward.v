`include "lib.v"
module forward(
    
    input [4:0] IDRs,
    input [4:0] IDRt,
    input [4:0] IDRd,
    input [31:0] IDRD1,
    input [31:0] IDRD2,

    input [31:0] EXRD1,
    input [31:0] EXRD2,
    input [4:0] EXRs,
    input [4:0] EXRt,
    input [4:0] EXRegDst,
    input [31:0] EXRegWriteData,

    input [31:0] MEMRD1,
    input [31:0] MEMRD2,
    input [4:0] MEMRs,
    input [4:0] MEMRt,
    input [4:0] MEMRegDst,
    input [31:0] MEMRegWriteData,

    input [31:0] WBRegWriteData,
    input [4:0] WBRegDst,

    output [31:0] IDRD1Forward,
    output [31:0] IDRD2Forward,

    output [31:0] EXRD1Forward,
    output [31:0] EXRD2Forward,

    output [31:0] MEMRD1Forward,
    output [31:0] MEMRD2Forward
);
    //---------------------------------
    assign IDRD1Forward=
    (EXRegDst==IDRs&&IDRs!=0)?EXRegWriteData:
    (MEMRegDst==IDRs&&IDRs!=0)?MEMRegWriteData:IDRD1;
    assign IDRD2Forward=
    (EXRegDst==IDRt&&IDRt!=0)?EXRegWriteData:
    (MEMRegDst==IDRt&&IDRt!=0)?MEMRegWriteData:IDRD2;
    //---------------------------------
    //---------------------------------
    assign EXRD1Forward=
    (MEMRegDst==EXRs&&EXRs!=0)?MEMRegWriteData:
    (WBRegDst==EXRs&&EXRs!=0)?WBRegWriteData:EXRD1;
    assign EXRD2Forward=
    (MEMRegDst==EXRt&&EXRt!=0)?MEMRegWriteData:
    (WBRegDst==EXRt&&EXRt!=0)?WBRegWriteData:EXRD2;
    //---------------------------------
    assign MEMRD1Forward=
    (WBRegDst==MEMRs&&MEMRs!=0)?WBRegWriteData:MEMRD1;
    assign MEMRD2Forward=
    (WBRegDst==MEMRt&&MEMRt!=0)?WBRegWriteData:MEMRD2;
    
endmodule