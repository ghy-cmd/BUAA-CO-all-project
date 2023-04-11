`include "lib.v"
module md (
    input [10:0] instructionID,
    input [31:0] A,
    input [31:0] B,
    input clk,
    input reset,
    input intReq,
    output start,
    output busy,
    output [31:0] mdRes
);
    reg [31:0] hi;
    reg [31:0] lo;
    reg [63:0] temp;
    reg [31:0] cnt;
    reg BUSY;
    assign busy=BUSY;
    assign start=instructionID==`mult||instructionID==`multu||instructionID==`div||instructionID==`divu;
    assign mdRes=
    instructionID==`mfhi?hi:
    instructionID==`mflo?lo:114567;
    always @(posedge clk ) begin
        if(reset==1)begin
            hi<=0;
            lo<=0;
            temp<=63'b0;
            cnt<=5'b0;
            BUSY<=1'b0;
        end
        if(!BUSY&&!intReq)begin
            if(start)begin
                if(instructionID==`mult)begin
                    temp<=$signed(A)*$signed(B);
                    cnt<=5;
                end
                else if(instructionID==`multu)begin
                    temp<=A*B;
                    cnt<=5;
                end
                else if(instructionID==`div)begin
                    if(B==0) temp<={hi,lo};
                    else temp<={$signed(A)%$signed(B),$signed(A)/$signed(B)};
                    cnt<=10;
                end
                else if(instructionID==`divu)begin
                    if(B==0) temp<={hi,lo};
                    else temp<={A%B,A/B};
                    cnt<=10;
                end
                else temp<=temp;
                BUSY<=1;
            end
            else begin
                if(instructionID==`mthi)hi<=A;
                else if(instructionID==`mtlo)lo<=A;
                else temp<=temp;
            end
        end
        else begin
            if(cnt>=1)cnt<=cnt-1;
            if(cnt==1)begin
                cnt<=0;
                {hi,lo}<=temp;
                BUSY<=0;
            end
        end
    end
endmodule