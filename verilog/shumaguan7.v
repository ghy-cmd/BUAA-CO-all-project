`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:57:45 09/26/2020 
// Design Name: 
// Module Name:    shumaguan7 
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
module shumaguan7(
    input [3:0] x,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
    );
	 assign a=(~x[0]&x[3])|(~x[1]&(~x[2])&x[3])|(x[1]&x[2])|(x[0]&x[2]&(~x[3]))|(x[1]&(~x[3]))|(~x[0]&(~x[2]));
	 assign b=(x[1]&x[3])|(~x[2]&x[3])|(~x[0]&x[2])|(~x[1]&x[2]&(~x[3]))|(~x[0]&(~x[1]));
	 assign c=(x[2]&x[3])|(x[1]&x[3])|(~x[0]&x[1])|(~x[0]&(~x[2]));
	 assign d=(~x[1]&x[3])|(~x[0]&x[1]&x[2])|(~x[1]&x[0]&x[2])|(~x[2]&x[0]&x[1])|(~x[0]&(~x[2])&(~x[3]));
	 assign e=(~x[2]&x[3])|(~x[3]&x[2])|(~x[1]&x[0])|(~x[3]&x[0])|(~x[1]&(~x[3]));
	 assign f=(~x[1]&x[0]&x[3])|(~x[3]&x[1]&x[0])|(~x[0]&(~x[2]))|(~x[0]&(~x[1])&(~x[3]))|(~x[2]&(~x[3]));
	 assign g=(x[0]&x[3])|(~x[2]&x[3])|(~x[1]&x[2]&(~x[3]))|(~x[0]&x[1])|(~x[2]&x[1]);

endmodule
