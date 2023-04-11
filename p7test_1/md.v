`timescale 1ns / 1ps
`include "instrbus.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:33:10 12/14/2020 
// Design Name: 
// Module Name:    md 
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
`define instr_r_width 3:0
`define instr_r mult_r,multu_r,div_r,divu_r////change!!!!
module md(
	input [`instrbuswidth] instrbus,
	input [31:0] RD1,
	input [31:0] RD2,
	output reg busy,
	output start,
	output [31:0] hi,
	output [31:0] lo,
	input clk,
	input reset,
	input strange,
	input eretM
    );
reg [63:0] temp;
reg [31:0] count;
assign {hi,lo}=temp;
wire `instrbus;
assign {`instrbus}=instrbus;
assign start=((mult||multu||div||divu)&&(strange==0)&&(eretM==0)) ? 1 : 0;////change!!!!!!!!!
reg [31:0] RD1R;
reg [31:0] RD2R;
///////////////////////////////////
reg [`instr_r_width] instr_r;////寄存器型一个独热码
wire `instr_r;/////////////给定义
assign {`instr_r}=instr_r;//解压
//////////////////////////////////

always@(posedge clk)
begin
if(reset)
	begin
	temp<=0;
	count<=0;
	RD1R<=0;
	RD2R<=0;
	busy<=0;
	instr_r<=0;
	end
else if((start)&&(count==0))
	begin
	busy<=1;
	count<=count+1;
	RD1R<=RD1;
	RD2R<=RD2;
	instr_r<={mult,multu,div,divu};//////压缩过程重要,注意顺序不要弄乱////////////change!!!!!!
	end
else if((busy==1)&&(count==5)&&(mult_r))
	begin
	busy<=0;
	count<=0;
	temp<=(($signed(RD1R))*($signed(RD2R)));
	instr_r<=0;
	end
else if((busy)&&(count==5)&&(multu_r))
	begin
	busy<=0;
	count<=0;
	temp<=RD1R*RD2R;
	instr_r<=0;
	end
else if((busy)&&(count==10)&&(div_r))
	begin
	busy<=0;
	count<=0;
	instr_r<=0;
	if(RD2R!=0)
		begin
		temp[31:0]<=(($signed(RD1R))/($signed(RD2R)));
		temp[63:32]<=(($signed(RD1R))%($signed(RD2R)));
		end
	end
else if((busy)&&(count==10)&&(divu_r))
	begin
	busy<=0;
	count<=0;
	instr_r<=0;
	if(RD2R!=0)
		begin
		temp[31:0]<=RD1R/RD2R;
		temp[63:32]<=RD1R%RD2R;
		end
	end
else if(busy==1)
	count<=count+1;
else if(mthi)
	begin
	count<=0;
	instr_r<=0;
	temp[63:32]<=RD1;
	end
else if(mtlo)
	begin
	count<=0;
	instr_r<=0;
	temp[31:0]<=RD1;
	end
else
	begin
	count<=0;
	instr_r<=0;
	end
end

endmodule
