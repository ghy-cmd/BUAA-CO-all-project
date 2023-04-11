`include "lib.v"

module RF (
    input [31:0]regWriteData,
    input regWriteEn,
    input [4:0]A1,
    input [4:0]A2,
    input [4:0]A3,
    input clk,
    input reset,
    input [31:0] WBPC,
    output [31:0]RD1,
    output [31:0]RD2
);
    integer i;
    reg [31:0] register[31:0];
    
    assign RD1 = (A1==A3&&A1!=0)?regWriteData:register[A1];
    assign RD2 = (A2==A3&&A2!=0)?regWriteData:register[A2];
    always @(posedge clk) begin
        if(reset==1)begin
            for(i=0;i<32;i=i+1)begin
                register[i]<=0;
            end
        end
        else begin
            if (regWriteEn==1) begin
                if (A3!=0) begin
                    $display("%d@%h: $%d <= %h", $time,  WBPC, A3, regWriteData);
                    register[A3]<=regWriteData;
                end
            end
        end
    end
endmodule