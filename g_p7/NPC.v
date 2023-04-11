`include "lib.v"
module NPC (
    input [31:0] PC,
    input [10:0] IDInstructionID,
    input [10:0] MEMInstructionID,
    input intReq,
    input [31:0] epc,
    input [25:0] imm26,
    input [31:0] RD1,
    input [15:0] imm16,
    input cmpRes,
    output [31:0] PC8,
    output [31:0] NPC
);
    
    wire b,j,eret;
    wire [31:0] bNPC;
    wire [31:0] jNPC;
    wire [31:0] extendRes;
    assign PC8=PC+4;
    assign eret=MEMInstructionID==`eret;
    //--------------------
    assign extendRes=
    b?{{14{imm16[15]}},imm16,2'b0}:
    (
        IDInstructionID==`j||
        IDInstructionID==`jal
    )?{PC[31:29],imm26,2'b0}:114520;
    //---------------------
    assign b=
    (
        IDInstructionID==`beq||
        IDInstructionID==`bne||
        IDInstructionID==`blez||
        IDInstructionID==`bgtz||
        IDInstructionID==`bltz||
        IDInstructionID==`bgez
    );
    assign bNPC=cmpRes?PC+extendRes:PC+4;
    //---------------------
    assign j=
    (
        IDInstructionID==`j||
        IDInstructionID==`jal||
        IDInstructionID==`jalr||
        IDInstructionID==`jr
    );
    assign jNPC=
    (
        IDInstructionID==`j||
        IDInstructionID==`jal
    )?extendRes:RD1;
    //---------------------
    assign NPC=eret?epc:intReq?32'h00004180:b?bNPC:j?jNPC:PC+4;
endmodule