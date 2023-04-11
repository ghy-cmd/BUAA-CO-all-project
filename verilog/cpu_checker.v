`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:53:27 10/16/2020 
// Design Name: 
// Module Name:    cpu_checker 
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
module cpu_checker(
    input clk,
    input reset,
    input [7:0] char,
	 input [15:0] freq,
    output [1:0] format_type,
	 output [3:0] error_code
    );
reg [5:0] status;
reg [2:0] ten;
reg [4:0] sixteen;
reg [15:0] timi;
reg [31:0] pc;
reg [15:0] grf;
reg [31:0] addr;
initial
begin
	status<=0;
	ten<=0;
	sixteen<=0;
	timi<=0;
	pc<=0;
	grf<=0;
	addr<=0;
end

always@(posedge clk)
begin
if(reset==1)
begin
status<=0;
ten<=0;
sixteen<=0;
end
else
begin
	case(status)
		0:begin
			if(char=="^")
				status<=1;
			else
				status<=0;
		end
		1:begin
		timi<=0;
		pc<=0;
		grf<=0;
		addr<=0;
			if(char>="0" && char<="9")
				begin
					status<=2;
					ten<=ten+1;
					timi<=char-"0";
				end
			else if(char=="^")
				status<=1;
			else
				status<=0;
		end
		2:begin
			if(char>="0" && char<="9")
			begin
				if(ten>=4)
				begin
				status<=0;
				ten<=0;
				end
				else
				begin
				status<=2;
				ten<=ten+1;
				timi<=(timi<<3) + (timi<<1) + (char - "0");
				end
			end
			else if(char=="@")
			begin
				status<=3;
				ten<=0;
			end
			else if(char=="^")
			begin
			status<=1;
			ten<=0;
			end
			else
			begin
			status<=0;
			ten<=0;
			end
		end
		3:begin
			if((char<="9" && char>="0")||(char>="a" && char<="f"))
			begin
			status<=4;
			sixteen<=sixteen+1;
				if(char<="9" && char>="0")
						pc<=(pc<<4)+(char-"0");
						else if(char>="a" && char<="f")
						pc<=(pc<<4)+(char-"a"+10);
			end
			else if(char=="^")
				status<=1;
			else
				status<=0;
		end
		4:begin
			if((char<="9" && char>="0")||(char>="a" && char<="f"))
			begin
				if(sixteen>=8)
				begin
				status<=0;
				sixteen<=0;
				end
				else
				begin
				status<=4;
				sixteen<=sixteen+1;
					if(char<="9" && char>="0")
					pc<=(pc<<4)+(char-"0");
					else if(char>="a" && char<="f")
					pc<=(pc<<4)+char-"a"+10;
				end
			end
			else if(char==":" && sixteen==8)
			begin
			status<=5;
			sixteen<=0;
			end
			else if(char=="^")
			begin
			status<=1;
			sixteen<=0;
			end
			else
			begin
			status<=0;
			sixteen<=0;
			end
		end
		5:begin
			if(char==" ")
			status<=5;
			else if(char=="$")
			begin
			status<=6;
			end
			else if(char=="^")
			status<=1;
			else if(char==8'd42)
			status<=12;
			else
			status<=0;
		end
		6:begin
			if(char>="0" && char<="9")
			begin
			status<=7;
			ten<=ten+1;
			grf<=(grf<<3)+(grf<<1)+char-"0";
			end
			else if(char=="^")
			status<=1;
			else
			status<=0;
		end
		7:begin
			if(char>="0" && char<="9")
			begin
				if(ten>=4)
				begin
				status<=0;
				ten<=0;
				end
				else
				begin
				status<=7;
				ten<=ten+1;
				grf<=(grf<<3)+(grf<<1)+char-"0";
				end
			end
			else if(char==" ")
			begin
			status<=7;
			ten<=4;
			end
			else if(char=="<")
			begin
			status<=8;
			ten<=0;
			end
			else if(char=="^")
			begin
			status<=1;
			ten<=0;
			end
			else
			begin
			status<=0;
			ten<=0;
			end
		end
		8:begin
			if(char=="=")
			status<=9;
			else if(char=="^")
			status<=1;
			else
			status<=0;
		end
		9:begin
			if(char==" ")
			status<=9;
			else if((char<="9" && char>="0")||(char>="a" && char<="f"))
			begin
			status<=10;
			sixteen<=sixteen+1;
			end
			else if(char=="^")
				status<=1;
			else
				status<=0;
		end
		10:begin
			if((char<="9" && char>="0")||(char>="a" && char<="f"))
			begin
				if(sixteen>=8)
				begin
				status<=0;
				sixteen<=0;
				end
				else
				begin
				status<=10;
				sixteen<=sixteen+1;
				end
			end
			else if(char=="#" && sixteen==8)
			begin
			status<=11;
			sixteen<=0;
			end
			else
			begin
			status<=0;
			sixteen<=0;
			end
		end
		11:
		begin
			if(char=="^")
			status<=1;
			else
			status<=0;
		end
		12:begin
			if((char<="9" && char>="0")||(char>="a" && char<="f"))
			begin
			status<=13;
			sixteen<=sixteen+1;
				if(char<="9" && char>="0")
							addr<=(addr<<4)+char-"0";
							else if(char>="a" && char<="f")
							addr<=(addr<<4)+char-"a"+10;
			end
			else
			status<=0;
		end
		13:begin
			if((char<="9" && char>="0")||(char>="a" && char<="f"))
			begin
				if(sixteen>=8)
				begin
				status<=0;
				sixteen<=0;
				end
				else
				begin
				status<=13;
				sixteen<=sixteen+1;
					if(char<="9" && char>="0")
						addr<=(addr<<4)+char-"0";
						else if(char>="a" && char<="f")
						addr<=(addr<<4)+char-"a"+10;
				end
			end
			else if(char==" ")
			begin
				if(sixteen==8)
				status<=13;
				else
				begin
				status<=0;
				sixteen<=0;
				end
			end
			else if(char=="<")
			begin
			status<=14;
			sixteen<=0;
			end
			else
			begin
			status<=0;
			sixteen<=0;
			end
		end
		14:begin
			if(char=="=")
			status<=15;
			else
			status<=0;
		end
		15:begin
			if(char==" ")
			status<=15;
			else if((char<="9" && char>="0")||(char>="a" && char<="f"))
			begin
			status<=16;
			sixteen<=sixteen+1;
			end
			else if(char=="^")
				status<=1;
			else
				status<=0;
		end
		16:begin
		if((char<="9" && char>="0")||(char>="a" && char<="f"))
			begin
				if(sixteen>=8)
				begin
				status<=0;
				sixteen<=0;
				end
				else
				begin
				status<=16;
				sixteen<=sixteen+1;
				end
			end
			else if(char=="#" && sixteen==8)
			begin
			status<=17;
			sixteen<=0;
			end
			else
			begin
			status<=0;
			sixteen<=0;
			end
		end
		17:begin
			if(char=="^")
			status<=1;
			else
			status<=0;
		end
	endcase
	end
end
assign format_type=(status==11)? 2'b01 :
						  (status==17)?2'b10 :
						  2'b00;
assign error_code=4'b0000+(((timi&((freq>>1)-1))!=0 && format_type!=2'b00) ? 4'b0001 : 4'b0000 )
									+ (((((pc<16'h00003000) || (pc>16'h00004fff))||((pc&3)!=0))&&(format_type!=2'b00)) ? 4'b0010 : 4'b0000)
									+ (((((addr<16'h00000000) || (addr>16'h00002fff))||(addr&3!=0))&&(format_type==2'b10)) ? 4'b0100 : 4'b0000)
									+ ((((grf<0)||(grf>31)) && (format_type==2'b01)) ? 4'b1000 : 4'b0000);
endmodule
