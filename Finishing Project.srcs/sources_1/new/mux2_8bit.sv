`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2021 03:17:07 PM
// Design Name: 
// Module Name: mux2_8bit
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


module mux2_8bit(
    input [7:0] Data_in_0,
    input [7:0] Data_in_1,
    input sel,
    output [7:0] Data_out
    ); 
    reg [7:0] Data_out;

    always @(Data_in_0,Data_in_1,sel)
    begin
        if(sel == 0) 
            Data_out = Data_in_0; 
        else
            Data_out = Data_in_1;
    end
    
endmodule

