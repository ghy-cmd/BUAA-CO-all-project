`timescale 1ns / 1ps
`include "instrbus.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:47:10 11/22/2020 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input [31:0] A,
    output [31:0] RD,
    input [31:0] WD,
	 input [31:0] pc,
	 input [31:0] regdata,
	 input [`instrbuswidth] instrbus,
	 output [31:0] regdataDM,
    input WE,
    input clk,
    input reset
    );
//reg [31:0] rst [0:1023];
reg [31:0] rst [0:4095];
integer i;
assign {`instrbus}=instrbus;
always@(posedge clk)
begin
	if(reset)
	begin
	//for(i=0;i<=1023;i=i+1)
	for(i=0;i<=4095;i=i+1)
	begin
	rst[i]<=0;
	end
	end
	else if(WE)
	begin
	$display("%d@%h: *%h <= %h",$time, pc, A, WD);
	//rst[A[11:2]]<=WD;
	rst[A[13:2]]<=WD;
	end
end

//assign RD=rst[A[11:2]];
assign RD=rst[A[13:2]];

assign regdataDM=(addu||subu||ori||lui||jal||addi||org||add||jalr||bgezall)? regdata:
				(lw) ? RD : 0;
endmodule
