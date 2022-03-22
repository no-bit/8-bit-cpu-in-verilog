`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2021 04:14:42 PM
// Design Name: 
// Module Name: datamem
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


module datamem (
				input [7:0] read_addr,
				input [7:0] write_addr,
				input [7:0] write_data,
				input mem_write,
				input mem_read,
				input clk, 
				output reg [7:0] read_data
				);

reg [7:0] register [255:0];

always@(posedge clk) 
begin
	if(mem_write) register[write_addr] = write_data;
	if(mem_read) read_data = register[read_addr];
end
endmodule 