`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2021 04:24:53 PM
// Design Name: 
// Module Name: cpu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cpu();

reg clk,clk2;

logic [15:0] instruction; 

bit_cpu cpu(.clk(clk),.clk2(clk2), .instruction(instruction));

initial
	begin
		clk<=0;
		clk2<=0;
		#300
		$finish;
	end
always 
	begin
		#5 clk = ~clk;
		#30 clk2 = ~clk2;
	end



endmodule
