`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2021 04:15:38 PM
// Design Name: 
// Module Name: decoder
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


module decoder(
	input [15:0]inst,
	output reg [2:0] ra_addr,
	output reg [2:0] rb_addr,
	output reg [2:0] rd_addr,
	output reg [7:0] imm,
	output reg [3:0] opcode,
	output reg [2:0] func,
	output reg [7:0] addr
	);
always @(*) 
begin
  opcode[3:0]	= inst[15:12];
  rd_addr[2:0]	= inst[11:9];
  ra_addr[2:0]	= inst[8:6];
  rb_addr[2:0]	= inst[5:3];
  func[2:0]		= inst[2:0];
  imm[5:0]		= inst[5:0];
  addr[7:0]		= inst[7:0];
  imm[6]=0;
  imm[7]=0;
end
endmodule
