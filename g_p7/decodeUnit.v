`include "lib.v"
module decodeUnit (
    input [31:0] instruction,
    output [10:0] instructionID,
    output [4:0] regDst,
    output regWriteEn,
    output [4:0] rs,
    output [4:0] rt,
    output [4:0] rd,
    output [4:0] shamt,
    output [15:0] imm16,
    output [25:0] imm26,
    output [31:0] timeRsUse,
    output [31:0] timeRtUse,
    output [31:0] timeNew
);
    getInstructionID unit(
        .instruction(instruction),
        .instructionID(instructionID)
    );
    assign regDst=
    (instructionID==`lb||
    instructionID==`lbu||
    instructionID==`lhu||
    instructionID==`lh||
    instructionID==`lw||
    instructionID==`addi||
    instructionID==`addiu||
    instructionID==`andi||
    instructionID==`ori||
    instructionID==`xori||
    instructionID==`lui||
    instructionID==`slti||
    instructionID==`sltiu||
    instructionID==`mfc0
    )?rt:
    (
    instructionID==`addu||
    instructionID==`subu||
    instructionID==`add||
    instructionID==`sub||
    instructionID==`slt||
    instructionID==`sltu||
    instructionID==`sll||
    instructionID==`srl||
    instructionID==`sra||
    instructionID==`sllv||
    instructionID==`srlv||
    instructionID==`srav||
    instructionID==`and||
    instructionID==`or||
    instructionID==`xor||
    instructionID==`nor||
    instructionID==`jalr||
    instructionID==`mfhi||
    instructionID==`mflo
    )?rd:
    (instructionID==`jal)?5'b11111:5'b0;
    assign regWriteEn=regDst!=0;
    assign rs=instruction[`rs];
    assign rt=instruction[`rt];
    assign rd=instruction[`rd];
    assign shamt=instruction[`shamt];
    assign imm16=instruction[`imm16];
    assign imm26=instruction[`imm26];
    assign timeNew=
    (
        instructionID==`lw||
        instructionID==`lb||
        instructionID==`lbu||
        instructionID==`lh||
        instructionID==`lhu||
        instructionID==`mfc0
    )?3:
    (
        instructionID==`addi||
        instructionID==`addiu||
        instructionID==`andi||
        instructionID==`ori||
        instructionID==`xori||
        instructionID==`lui||
        instructionID==`slti||
        instructionID==`sltiu||
        instructionID==`addu||
        instructionID==`subu||
        instructionID==`add||
        instructionID==`sub||
        instructionID==`slt||
        instructionID==`sltu||
        instructionID==`sll||
        instructionID==`srl||
        instructionID==`sra||
        instructionID==`sllv||
        instructionID==`srlv||
        instructionID==`srav||
        instructionID==`and||
        instructionID==`or||
        instructionID==`xor||
        instructionID==`nor||
        instructionID==`mfhi||
        instructionID==`mflo
    )?2:
    (
        instructionID==`jal||
        instructionID==`jalr
    )?1:0;
    assign timeRsUse=
    (
        instructionID==`beq||
        instructionID==`bne||
        instructionID==`blez||
        instructionID==`bgtz||
        instructionID==`bltz||
        instructionID==`bgez||
        instructionID==`jalr||
        instructionID==`jr
    )?0:
    (
        instructionID==`lw||
        instructionID==`lb||
        instructionID==`lbu||
        instructionID==`lh||
        instructionID==`lhu||
        instructionID==`sw||
        instructionID==`sh||
        instructionID==`sb||
        instructionID==`addi||
        instructionID==`addiu||
        instructionID==`andi||
        instructionID==`ori||
        instructionID==`xori||
        instructionID==`lui||
        instructionID==`slti||
        instructionID==`sltiu||
        instructionID==`addu||
        instructionID==`subu||
        instructionID==`add||
        instructionID==`sub||
        instructionID==`slt||
        instructionID==`sltu||
        instructionID==`sll||
        instructionID==`srl||
        instructionID==`sra||
        instructionID==`sllv||
        instructionID==`srlv||
        instructionID==`srav||
        instructionID==`and||
        instructionID==`or||
        instructionID==`xor||
        instructionID==`nor||
        instructionID==`mult||
        instructionID==`multu||
        instructionID==`div||
        instructionID==`divu||
        instructionID==`mthi||
        instructionID==`mtlo
    )?1:5;
    assign timeRtUse=
    (
        instructionID==`sw||
        instructionID==`sh||
        instructionID==`sb||
        instructionID==`mtc0
    )?2:
    (
        instructionID==`addu||
        instructionID==`add||
        instructionID==`subu||
        instructionID==`sub||
        instructionID==`and||
        instructionID==`or||
        instructionID==`xor||
        instructionID==`nor||
        instructionID==`sll||
        instructionID==`sllv||
        instructionID==`srl||
        instructionID==`srlv||
        instructionID==`sra||
        instructionID==`srav||
        instructionID==`slt||
        instructionID==`sltu||
        instructionID==`mult||
        instructionID==`multu||
        instructionID==`div||
        instructionID==`divu
    )?1:
    (
        instructionID==`beq||
        instructionID==`bne
    )?0:5;
endmodule