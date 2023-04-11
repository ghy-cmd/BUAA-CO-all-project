`include "lib.v"
module ALU (input [31:0] A,
            input [31:0] B,
            input [10:0] instructionID,
            input [4:0] shamt,
            input [15:0] imm16,
            output [31:0] C,
            output overflow,
            output addrOverflow
);
    wire math,bite,memory,shift,cmp;
    //---------------------------
    wire [31:0]extResult;
    assign extResult=
    (
        instructionID==`andi||
        instructionID==`ori||
        instructionID==`xori
    )
    ?{16'b0,imm16}:
    (
        instructionID==`lui
    )
    ?{imm16,16'b0}:{{16{imm16[15]}},imm16};
    //---------------------------
    wire [32:0] mathA;
    wire [32:0] mathB;
    wire [32:0] mathRes;
    assign math=
    (
        instructionID==`addu||
        instructionID==`add||
        instructionID==`addi||
        instructionID==`addiu||
        instructionID==`subu||
        instructionID==`sub
    );
    assign mathA={A[31],A};
    assign mathB=
    (
        instructionID==`addi||
        instructionID==`addiu
    )?{extResult[31],extResult}:{B[31],B};

    assign mathRes=(
        instructionID==`addu||
        instructionID==`add||
        instructionID==`addi||
        instructionID==`addiu
    )?(mathA+mathB):(mathA-mathB);

    assign overflow=(
        instructionID==`add||
        instructionID==`sub||
        instructionID==`addi
    )?(mathRes[32]!=mathRes[31]):1'b0;
    assign addrOverflow=(
        instructionID==`lb||
        instructionID==`lbu||
        instructionID==`lhu||
        instructionID==`lh||
        instructionID==`lw||
        instructionID==`sb||
        instructionID==`sh||
        instructionID==`sw
    )?(memoryRes[32]!=memoryRes[31]):1'b0;
    //---------------------------
    wire [32:0] memoryA;
    wire [32:0] memoryB;
    wire [32:0] memoryRes;
    assign memory=
    (
        instructionID==`lb||
        instructionID==`lbu||
        instructionID==`lhu||
        instructionID==`lh||
        instructionID==`lw||
        instructionID==`sb||
        instructionID==`sh||
        instructionID==`sw
    );
    assign memoryA={A[31],A};
    assign memoryB={extResult[31],extResult};
    assign memoryRes=memoryA+memoryB;
    //---------------------------
    wire [31:0] bitA;
    wire [31:0] bitB;
    wire [31:0] bitRes;
    assign bite = 
    (
        instructionID==`and||
        instructionID==`andi||
        instructionID==`or||
        instructionID==`ori||
        instructionID==`xori||
        instructionID==`xor||
        instructionID==`nor||
        instructionID==`lui
    );
    assign bitA=A;
    assign bitB=
    (
        instructionID==`andi||	
        instructionID==`ori||	
        instructionID==`xori	
    )?extResult:B;
    assign bitRes=
    (
        instructionID==`andi||
        instructionID==`and
    )?bitA&bitB:
    (	
        instructionID==`ori||
        instructionID==`or
    )?bitA|bitB:
    (	
        instructionID==`xori||
        instructionID==`xor
    )?bitA^bitB:
    (	
        instructionID==`nor
    )?~(bitA|bitB):extResult;
    //---------------------------
    wire [31:0] shiftA;
    wire [31:0] shiftB;
    wire [31:0] shiftRes;
    assign shift = 
    (
        instructionID==`sll||
        instructionID==`sllv||
        instructionID==`srl||
        instructionID==`srlv||
        instructionID==`sra||
        instructionID==`srav
    );
    assign shiftA=
    B;
    assign  shiftB=
    (
        instructionID==`sll||
        instructionID==`srl||
        instructionID==`sra
    )?shamt:A[4:0];
    assign shiftRes=
    (
        instructionID==`sll||
        instructionID==`sllv
    )?(shiftA<<shiftB):
    (
        instructionID==`srl||
        instructionID==`srlv
    )?(shiftA>>shiftB):
    (
        instructionID==`sra||
        instructionID==`srav
    )?($signed($signed(shiftA)>>>shiftB)):114513;
    //---------------------------
    wire [31:0] cmpA;
    wire [31:0] cmpB;
    wire [31:0] cmpRes;
    assign cmp =
    (
        instructionID==`slti||
        instructionID==`sltiu||
        instructionID==`slt||
        instructionID==`sltu
    );
    assign cmpA=A;
    assign cmpB=
    (
        instructionID==`slti||
        instructionID==`sltiu
    )?extResult:B;
    assign cmpRes=
    (
        instructionID==`sltu||
        instructionID==`sltiu
    )?(cmpA<cmpB):(($signed(cmpA))<($signed(cmpB)));
    //---------------------------
    assign C=
    math?mathRes[31:0]:
    memory?memoryRes[31:0]:
    bite?bitRes:
    shift?shiftRes:
    cmp?cmpRes:114516;
    //---------------------------
    
endmodule
