`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2023 11:32:53 AM
// Design Name: 
// Module Name: Datapath_tb
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


module Datapath_tb ();
    reg clk;
    reg clrn;
    wire [31:0] inst;
    wire [31:0] pc;
    wire [31:0] alu;
    
    Datapath Datapath_inst1 (clk, clrn, inst, pc, alu);
    
    initial
    begin
        clk = 0;
        clrn = 1;
    end
    
    always
    begin
        #10;
        clk = ~clk;
    end
endmodule
