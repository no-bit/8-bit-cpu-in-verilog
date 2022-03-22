`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2021 04:16:44 PM
// Design Name: 
// Module Name: imem
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


module imem ( 
			input [7:0] addr, 
			output [15:0] inst); 
// Addr is the address of instruction to fetch 
// for our purpose can be taken from ProgramCounter[7:0] 

reg [15:0] RAM [255:0]; 
initial $readmemb ("C:/Users/sinan/Finishing Project/memfile.dat",RAM); //Buraya kendi path'inizi yazacaks?n?z
assign inst = RAM[addr]; // word aligned 
endmodule
