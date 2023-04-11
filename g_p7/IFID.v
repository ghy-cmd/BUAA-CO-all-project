`include "lib.v"
module IFID(
    input clk,
    input reset,
    input IFIDStall,
    input IFIDFlush,
    input [31:0] IFInstruction,
    input [31:0] IFPC,
    input IFPCError,
    input [10:0] IDInstructionID,
    output reg [31:0] IDPC,
    output reg [31:0] IDInstruction,
    output reg [31:0] IDErrorCode,
    output reg IDBD
);
    always @(posedge clk)
    begin
           
           if(reset | IFIDFlush)
           begin
            IDInstruction <= 0;
            IDPC<=-1;
            IDErrorCode<=0;
            IDBD<=0;
       end
       else begin
          
           if(!IFIDStall)
           begin
                IDInstruction <= IFInstruction;
                IDPC<=IFPC;
                IDErrorCode<=IFPCError?4:0;
                IDBD<=
                (IDInstructionID==`j)||
                (IDInstructionID==`jal)||
                (IDInstructionID==`jalr)||
                (IDInstructionID==`jr)||
                (IDInstructionID==`beq)||
                (IDInstructionID==`bne)||
                (IDInstructionID==`bgtz)||
                (IDInstructionID==`bgez)||
                (IDInstructionID==`blez)||
                (IDInstructionID==`bltz);
           end
       end
    end

    endmodule