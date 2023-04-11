module IFU (
    input [31:0] NPC,
    input clk,
    input reset,
    input PCStall,
    output [31:0] PC,
    output [31:0] instruction,
    output PCError
);
    reg [31:0]temp;
    assign PC=temp;
    reg [31:0] text [0:4095];
    integer i;
    initial begin
        //for(i=0;i<4096;i=i+1)text[i]=0;
        $readmemh("code.txt",text);
        $readmemh("code_handler.txt",text,1120,2047);
    end
    assign PCError=($signed(PC)<$signed(32'h00003000))||($signed(PC)>$signed(32'h00004ffc))||(PC[1:0]!=0);
    wire [31:0] addr;
    assign addr=PC-32'h00003000;
    assign instruction=PCError?0:text[addr[13:2]];
    always @(posedge clk) begin
		//$display("%x %x",addr,text[addr[13:2]]);
        if(reset==1)temp<=32'h00003000;
        else begin
            if(PCStall==1)temp<=temp;
            else temp<=NPC;
        end
    end
endmodule