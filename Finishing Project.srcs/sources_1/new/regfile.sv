`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2021 04:23:31 PM
// Design Name: 
// Module Name: regfile
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


module regfile (
				input clk,
				input [2:0] reg_write_addr,
				input [7:0] reg_write_data,
				input reg_write_en,
				input [2:0] reg1_read_addr,
				input [2:0] reg2_read_addr, 
				output [7:0] reg1_read_data, 
				output [7:0] reg2_read_data);

reg [7:0] reg_array [7:0];

integer f;

initial reg_array[0] = 8'b000;
initial reg_array[1] = 8'b000;
initial reg_array[2] = 8'b000;
initial reg_array[3] = 8'b000;
initial reg_array[4] = 8'b000;
initial reg_array[5] = 8'b000;
initial reg_array[6] = 8'b000;
initial reg_array[7] = 8'b000;

always@(posedge clk) 
begin
	if(reg_write_en) begin reg_array[reg_write_addr] <= reg_write_data;
	
	end
end

initial
 begin
 #300
  f = $fopen("C:/Users/sinan/Finishing Project/result.dat");//Buraya kendi path'inizi yazacaks?n?z

  $fdisplay(f,"time = %d\n", $time, 
  "\treg[0] = %b\n", reg_array[0],   
  "\treg[1] = %b\n", reg_array[1],
  "\treg[2] = %b\n", reg_array[2],
  "\treg[3] = %b\n", reg_array[3],
  "\treg[4] = %b\n", reg_array[4],
  "\treg[5] = %b\n", reg_array[5],
  "\treg[6] = %b\n", reg_array[6],
  "\treg[7] = %b\n", reg_array[7]);
  
  $fclose(f);
 end


assign  reg1_read_data = reg_array[reg1_read_addr];
assign  reg2_read_data = reg_array[reg2_read_addr];
endmodule
