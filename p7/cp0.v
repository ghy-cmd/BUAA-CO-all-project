`timescale 1ns / 1ps
`include "instrbus.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:37:26 12/21/2020 
// Design Name: 
// Module Name:    cp0 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cp0(
	input [`instrbuswidth] instrbus,
	input [4:0] rd,
	input [31:0] pc,
	input clk,
	input reset,
	input [31:0] RD2,
	input ADELpc,
	input RI,
	input OV,
	input ADELEX,
	input ADESEX,
	input ADELDM,
	input ADESDM,
	input IRQ0,
	input IRQ1,
	input interrupt,
	input BD,
	output strange,
	output [31:0] cp0out,
	output eretM,
	output reg [31:0] epc
    );
reg [31:0] sr;
reg [31:0] cause;
reg [31:0] prid;
wire `instrbus;
assign {`instrbus}=instrbus;

assign strange=((ADELpc||RI||OV||ADELEX||ADESEX||ADELDM||ADESDM)||((sr[0])&&(IRQ0)&&sr[10])||(sr[0]&&IRQ1&&sr[11])||(sr[0]&&interrupt&&sr[12]))&&(sr[1]==0);

wire [5:0] IP;
assign IP=(IRQ0||IRQ1||interrupt) ? {{3{1'b0}},interrupt,IRQ1,IRQ0} : 0;

assign cp0out=(rd==12) ? sr :
				(rd==13) ? cause :
				(rd==14) ? epc :
				(rd==15) ? prid: 0;

assign eretM=eret;

always@(posedge clk)
begin
if(reset)
begin
sr<=0;
cause<=0;
epc<=0;
prid<=0;
end
else
	begin////
		cause[15:10]<=IP;
		if(eret)
		begin
			sr[1]<=0;
		end
		else if(strange)
		begin///
			sr[1]<=1;
			cause[31]<=BD;
				if(BD)
				epc[31:2]<=pc[31:2]-1;
				else
				epc[31:2]<=pc[31:2];
			begin//
				if(IRQ0||IRQ1||interrupt)
					cause[6:2]<=0;
				else
				begin
					if(ADELpc)
					begin
					cause[6:2]<=4;
					end
					else if(RI)
					begin
					cause[6:2]<=10;
					end
					else if(OV)
					begin
					cause[6:2]<=12;
					end
					else if(ADELEX)
					begin
					cause[6:2]<=4;
					end
					else if(ADESEX)
					begin
					cause[6:2]<=5;
					end
					else if(ADELDM)
					begin
					cause[6:2]<=4;
					end
					else if(ADESDM)
					begin
					cause[6:2]<=5;
					end
				end
			end//
		end///
		else if(mtc0)
		begin
			if(rd==12) 
			sr<=RD2;
			else if(rd==14)
			epc<=RD2;
		end				
	end////reset_else
end

endmodule
