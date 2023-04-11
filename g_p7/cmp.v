`include "lib.v"
module cmp(
    input [10:0] instructionID,
    input [31:0] A,
    input [31:0] B,
    output cmpRes
);
    assign cmpRes=
    (instructionID==`beq)?(A==B):
    (instructionID==`bne)?(A!=B):
    (instructionID==`blez)?($signed(A)<=$signed(0)):
    (instructionID==`bgtz)?($signed(A)>$signed(0)):
    (instructionID==`bltz)?($signed(A)<$signed(0)):
    (instructionID==`bgez)?($signed(A)>=$signed(0)):1'b0;
endmodule