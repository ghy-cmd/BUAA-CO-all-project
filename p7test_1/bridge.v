`timescale 1ns / 1ps
`include "instrbus.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:51:12 12/21/2020 
// Design Name: 
// Module Name:    bridge 
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
module bridge(
	input clk,
	input reset,
	input [31:0] Addr,
	input WE,
	input [31:0] Din,
	output [31:0] Dout,
	output IRQ0,
	output IRQ1,
	input [31:0] pc,
	input [`instrbuswidth] instrbus
    );

wire `instrbus;
assign {`instrbus}=instrbus;
wire WE0;
wire WE1;
assign WE0=((Addr>=32'h00007f00)&&(Addr<=32'h00007f0b)&&(WE)&&sw) ? 1 : 0;
assign WE1=((Addr>=32'h00007f10)&&(Addr<=32'h00007f1b)&&(WE)&&sw) ? 1 : 0;

wire [31:0] Dout0;
wire [31:0] Dout1;
assign Dout=((Addr>=32'h00007f00)&&(Addr<=32'h00007f0b)) ? Dout0 :
				((Addr>=32'h00007f10)&&(Addr<=32'h00007f1b)) ? Dout1 :
				0;
TC timer0 (
    .clk(clk), 
    .reset(reset), 
    .Addr(Addr[31:2]), 
    .WE(WE0), 
    .Din(Din), 
    .Dout(Dout0), 
    .IRQ(IRQ0),
	 .pc(pc)
    );
TC timer1 (
    .clk(clk), 
    .reset(reset), 
    .Addr(Addr[31:2]), 
    .WE(WE1), 
    .Din(Din), 
    .Dout(Dout1), 
    .IRQ(IRQ1),
	 .pc(pc)
    );



endmodule
