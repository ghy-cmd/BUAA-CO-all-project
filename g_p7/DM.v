`include "lib.v"
module DM (
    input [31:0] memInData,
    input [10:0] instructionID,
    input clk,
    input reset,
    input intReq,
    input [31:0] memInAddr,
    input [31:0] MEMPC, 
    output [31:0] memOutData
);
    reg [31:0] dm[0:4095];
    integer i;
    wire [31:0] tempData;
    assign tempData=
    (instructionID==`lw)?dm[memInAddr[13:2]]:
    (instructionID==`lb||instructionID==`lbu)?dm[memInAddr[13:2]][memInAddr[1:0]*8+7-:8]:
    (instructionID==`lh||instructionID==`lhu)?dm[memInAddr[13:2]][memInAddr[1]*16+15-:16]:114514;
    /*
    assign memOutData=
    (instructionID==`lw)?tempData:
    (instructionID==`lb)?{{24{tempData[7]}},tempData[7:0]}:
    (instructionID==`lbu)?{{24'b0},tempData[7:0]}:
    (instructionID==`lh)?{{16{tempData[15]}},tempData[15:0]}:
    (instructionID==`lhu)?{{16'b0},tempData[15:0]}:114514;*/
    
    assign memWriteEn=
    {
        instructionID==`sb||
        instructionID==`sh||
        instructionID==`sw
    }&&memInAddr<=32'h00002fff;
    assign memOutData = dm[memInAddr[13:2]];
    initial begin
        for(i = 0; i < 4096; i = i + 1) 
                dm[i] <= 0;
    end
    always @(posedge clk)begin	
        if (reset==1) begin
            for(i = 0; i < 4096; i = i + 1) 
                dm[i] <= 0;
        end
        else if(memWriteEn==1&&intReq==0)begin
            if(instructionID==`sb)begin
                dm[memInAddr[13:2]][(memInAddr[1:0]*8+7)-:8]=memInData[7:0];
                $display("%d@%h: *%h <= %h", $time,  MEMPC, {memInAddr[31:2],2'b0}, dm[memInAddr[13:2]]);
            end
            else if(instructionID==`sh)begin
                dm[memInAddr[13:2]][(memInAddr[1]*16+15)-:16]=memInData[15:0];
                $display("%d@%h: *%h <= %h", $time,  MEMPC, {memInAddr[31:2],2'b0}, dm[memInAddr[13:2]]);
            end
            else begin
                dm[memInAddr[13:2]]=memInData;
                $display("%d@%h: *%h <= %h", $time,  MEMPC, {memInAddr[31:2],2'b0}, dm[memInAddr[13:2]]);
            end
        end
       
    end
    
endmodule