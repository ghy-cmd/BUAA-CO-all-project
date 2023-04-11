`include "lib.v"
module bridge(
    input clk,
    input reset,
	input [31:0] prAddr,
	input [31:0] prWD,
	input [10:0] instructionID,
	input intReq,
    output [31:0] prRD,
    output [7:2] HWInt
    );

    wire timerWe0;
    wire [31:0] timerDout0;
    wire timerIRQ0;
    wire timerWe1;
    wire [31:0] timerDout1;
    wire timerIRQ1;

    assign timerWe0=instructionID==`sw&&!intReq&&prAddr<32'h00007F10&&prAddr>=32'h00007F00;
    assign timerWe1=instructionID==`sw&&!intReq&&prAddr>=32'h00007F10&&prAddr<=32'h00007F20;
    
	TC timer0(
        .clk(clk),
        .reset(reset),
        .Addr(prAddr[31:2]),
        .WE(timerWe0),
        .Din(prWD),
        .Dout(timerDout0),
        .IRQ(timerIRQ0)
    );
    TC timer1(
        .clk(clk),
        .reset(reset),
        .Addr(prAddr[31:2]),
        .WE(timerWe1),
        .Din(prWD),
        .Dout(timerDout1),
        .IRQ(timerIRQ1)
    );
    assign prRD=(prAddr<32'h00007F10)?timerDout0:timerDout1;
    assign HWInt={4'b0,timerIRQ1,timerIRQ0};
endmodule