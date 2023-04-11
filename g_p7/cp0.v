`include "lib.v"
module cp0(
	input clk,
    input reset,
    input [10:0] MEMInstructionID,
    input [4:0] MEMRd,		
    input [31:0] MEMRD2Forward,
    input [31:0] finalEpc,
    input [31:0] errorCode,
    input [7:2] HWInt,	
	input BD,
    output intReq,		
    output reg [31:0] epc,
    output [31:0] cp0Out
);
	reg [31:0] sr;
	reg [31:0] cause;
	reg [31:0] prID;
	wire trueInterrupt;
	assign cp0Out=(MEMInstructionID==`mfc0)?(
		MEMRd==12?sr:
		MEMRd==13?cause:
		MEMRd==14?epc:
		MEMRd==15?prID:0
	):114548;
	assign trueInterrupt=(|(HWInt[7:2]&sr[15:10]))&&sr[0]&&!sr[1];
	assign intReq=((errorCode!=0)||trueInterrupt)||MEMInstructionID==`eret;
	always @(posedge clk) begin
		if (reset) begin
			sr<=32'h00000001;
			cause<=0;
			prID<=0;
			epc<=32'h00003000;
		end
		else begin
			cause[15:10]<=HWInt[7:2];
			if(MEMInstructionID==`eret)sr[1]<=0;
			else if(intReq) begin
				if(trueInterrupt)begin
					epc<=finalEpc;
					sr[1]<=1;
					cause<={BD,15'b0,HWInt[7:2],10'b0};
				end
				else begin
					epc<=finalEpc;
					sr[1]<=1;
					cause<={BD,15'b0,HWInt[7:2],3'b0,errorCode[4:0],2'b0};
				end
			end
			else if(MEMInstructionID==`mtc0)
			begin
				if(MEMRd==12)sr<=MEMRD2Forward;
				else if(MEMRd==13)cause<=MEMRD2Forward;
				else if(MEMRd==14)epc[31:2]<=MEMRD2Forward[31:2];
				else if(MEMRd==15)prID<=MEMRD2Forward;
			end
		end
	end
endmodule