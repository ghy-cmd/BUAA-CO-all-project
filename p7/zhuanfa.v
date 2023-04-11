`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:43:08 11/24/2020 
// Design Name: 
// Module Name:    zhuanfa 
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
module zhuanfa(
    input [31:0] rsyuanRF,
    input [31:0] rtyuanRF,
    input [4:0] rsARF,
    input [4:0] rtARF,
    input [4:0] A3D,
    input [4:0] A3E,
	 input [4:0] A3M,
	 input [31:0] regdataD,
	 input [31:0] regdataE,
	 input [31:0] regdataM,
    output [31:0] rsrealRF,
    output [31:0] rtrealRF,
	 //////////////////////////////////////
	 input [31:0] rsyuanEX,
    input [31:0] rtyuanEX,
    input [4:0] rsAEX,
    input [4:0] rtAEX,
    output [31:0] rsrealEX,
    output [31:0] rtrealEX,
	 ////////////////////////////////////
	 input [31:0] rtyuanDM,
	 input [4:0] rtADM,
	 output [31:0] rtrealDM,
	 /////////////////////ÔÝÍ£/////////////
	 input [2:0] tuse_rs,
	 input [2:0] tuse_rt,
	 input [2:0] tnewD,
	 input [2:0] tnewE,
	 output stall,
	 input start,
	 input busy,
	 input isdm,
	 //////////////zhuanfa_added/////////////
	 input [2:0] tnewEDM
    );
assign rsrealRF=((rsARF==A3D)&&(A3D!=0)&&(tnewD==0))? regdataD:
					((rsARF==A3E)&&(A3E!=0)&&(tnewE==0)) ? regdataE:
					rsyuanRF;
assign rtrealRF=((rtARF==A3D)&&(A3D!=0)&&(tnewD==0))? regdataD:
					((rtARF==A3E)&&(A3E!=0)&&(tnewE==0)) ? regdataE:
					rtyuanRF;

assign rsrealEX=((rsAEX==A3E)&&(A3E!=0)&&(tnewEDM==0)) ? regdataE:
					((rsAEX==A3M)&&(A3M!=0)) ? regdataM:
					rsyuanEX;
assign rtrealEX=((rtAEX==A3E)&&(A3E!=0)&&(tnewEDM==0)) ? regdataE:
					((rtAEX==A3M)&&(A3M!=0)) ? regdataM:
					rtyuanEX;
					
assign rtrealDM=((rtADM==A3M)&&(A3M!=0)) ? regdataM : rtyuanDM;

wire Drs=((rsARF==A3D)&&(A3D!=0))&&(tuse_rs<tnewD);
wire Drt=((rtARF==A3D)&&(A3D!=0))&&(tuse_rt<tnewD);
wire Ers=((rsARF==A3E)&&(A3E!=0))&&(tuse_rs<tnewE);
wire Ert=((rtARF==A3E)&&(A3E!=0))&&(tuse_rt<tnewE);
wire G=((isdm)&&(start||busy));

assign stall=Drs||Drt||Ers||Ert||G;
endmodule
