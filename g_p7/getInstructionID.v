`include "lib.v"
module getInstructionID (
    input [31:0] instruction,
    output [10:0] instructionID
);
    wire [5:0] opCode;
    wire [5:0] func;
    wire [5:0] bkind;
    wire [4:0] cp0kind;
    assign opCode=instruction[`opCode];
    assign func=instruction[`func];
    assign bkind=instruction[`rt];
    assign cp0kind=instruction[`rs];
    assign instructionID=
(opCode==0&&func==`addfunc)?`add:
(opCode==`addiopCode)?`addi:
(opCode==`addiuopCode)?`addiu:
(opCode==0&&func==`addufunc)?`addu:
(opCode==0&&func==`andfunc)?`and:
(opCode==`andiopCode)?`andi:
(opCode==`beqopCode)?`beq:
(opCode==`bgezopCode&&bkind==5'b00001)?`bgez:
(opCode==`bgtzopCode)?`bgtz:
(opCode==`blezopCode)?`blez:
(opCode==`bltzopCode&&bkind==0)?`bltz:
(opCode==`bneopCode)?`bne:
(opCode==0&&func==`breakfunc)?`break:
(opCode==0&&func==`divfunc)?`div:
(opCode==0&&func==`divufunc)?`divu:
(instruction==32'b01000010000000000000000000011000)?`eret:
(opCode==`jopCode)?`j:
(opCode==`jalopCode)?`jal:
(opCode==0&&func==`jalrfunc)?`jalr:
(opCode==0&&func==`jrfunc)?`jr:
(opCode==`lbopCode)?`lb:
(opCode==`lbuopCode)?`lbu:
(opCode==`lhopCode)?`lh:
(opCode==`lhuopCode)?`lhu:
(opCode==`luiopCode)?`lui:
(opCode==`lwopCode)?`lw:
(opCode==`mfc0opCode&&cp0kind==5'b00000)?`mfc0:
(opCode==0&&func==`mfhifunc)?`mfhi:
(opCode==0&&func==`mflofunc)?`mflo:
(opCode==`mtc0opCode&&cp0kind==5'b00100)?`mtc0:
(opCode==0&&func==`mthifunc)?`mthi:
(opCode==0&&func==`mtlofunc)?`mtlo:
(opCode==0&&func==`multfunc)?`mult:
(opCode==0&&func==`multufunc)?`multu:
(opCode==0&&func==`norfunc)?`nor:
(opCode==0&&func==`orfunc)?`or:
(opCode==`oriopCode)?`ori:
(opCode==`sbopCode)?`sb:
(opCode==`shopCode)?`sh:
(opCode==0&&func==`sllfunc)?`sll:
(opCode==0&&func==`sllvfunc)?`sllv:
(opCode==0&&func==`sltfunc)?`slt:
(opCode==`sltiopCode)?`slti:
(opCode==`sltiuopCode)?`sltiu:
(opCode==0&&func==`sltufunc)?`sltu:
(opCode==0&&func==`srafunc)?`sra:
(opCode==0&&func==`sravfunc)?`srav:
(opCode==0&&func==`srlfunc)?`srl:
(opCode==0&&func==`srlvfunc)?`srlv:
(opCode==0&&func==`subfunc)?`sub:
(opCode==0&&func==`subufunc)?`subu:
(opCode==`swopCode)?`sw:
//(opCode==0&&func==`syscallfunc)?`syscall:
(opCode==0&&func==`xorfunc)?`xor:
(opCode==`xoriopCode)?`xori:11'd100;

endmodule