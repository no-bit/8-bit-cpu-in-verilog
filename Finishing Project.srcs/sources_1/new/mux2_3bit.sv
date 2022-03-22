`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2021 03:21:13 PM
// Design Name: 
// Module Name: mux2_3bit
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


module mux2_3bit (
    input [2:0] rd_addr,
    input [2:0] rb_addr,
    input sel,
    output [2:0] final_addr
    ); 
    reg [2:0] final_addr;

    always @(rd_addr,rb_addr,final_addr)
    begin
        if(sel == 0) 
            final_addr = rb_addr; 
        else
            final_addr = rd_addr;
    end
    
endmodule

