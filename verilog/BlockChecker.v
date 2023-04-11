`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:15:53 10/30/2020 
// Design Name: 
// Module Name:    BlockChecker 
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
module BlockChecker(
    input clk,
    input reset,
    input [7:0] in,
    output result
    );
reg [3:0] status;
reg [1:0] sdstatus;
initial
begin
	status<=0;
	sdstatus<=0;
end

always@(posedge clk)
begin
	if(reset==1)
	status<=0;
	else
		begin
			case(status)
			0:begin
			if(in=="B" || in=="b")
			status<=1;
			else if(in=="E" || in=="e")
			status<=6;
			else
			status<=0;
			end
			
			1:begin
			if(in=="e" || in=="E")
			status<=2;
			else
			status<=0;
			end
			
			2:begin
			if(in=="g" || in=="G")
			status<=3;
			else
			status<=0;
			end
			
			3:begin
			if(in=="i" || in=="I")
			status<=4;
			else
			status<=0;
			end
			
			4:begin
			if(in=="n" || in=="N")
				begin
				status<=5;
				if(sdstatus==0)
				sdstatus<=1;
				end
			else
			status<=0;
			end
			
			5:begin
			if(in==" ")
			status<=0;
			else
			begin
			status<=0;
			if(sdstatus==1)
			sdstatus<=0;
			end
			end
			
			6:begin
			if(in=="n" || in=="N")
			status<=7;
			else
			status<=0;
			end
			
			7:begin
			if(in=="d" || in=="D")
				begin
				status<=8;
				if(sdstatus==1)
				sdstatus<=0;
				else if(sdstatus==0)
				sdstatus<=2;
				else
				sdstatus<=3;
				end
			else
			status<=0;
			end
			
			8:begin
				if(in==" ")
					begin
					status<=0;
					if(sdstatus==2)
					sdstatus<=3;
					end
				else
				begin
				status<=0;
					if(sdstatus==0)
					sdstatus<=1;
					else if(sdstatus==2)
					sdstatus<=0;
					else
					sdstatus<=3;
					
				end
			end
			
			endcase
			
		end
end

assign result=(sdstatus==0)? 1 : 0;
endmodule
