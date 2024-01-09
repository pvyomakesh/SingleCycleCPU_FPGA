`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2023 11:19:26 AM
// Design Name: 
// Module Name: scinstrmem
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


module scinstrmem (addr, instr);
    input [31:0] addr;
    output reg [31:0] instr;
    reg [31:0] instrmem [0:32];
    
    initial 
    begin
        instrmem[0] <= 32'h3c010000;    
        instrmem[1] <= 32'h34240050;
        instrmem[2] <= 32'h20050004;
        instrmem[3] <= 32'h0c000018;
        instrmem[4] <= 32'hac820000;
        instrmem[5] <= 32'hac820000;
        instrmem[6] <= 32'h01244022;
        instrmem[7] <= 32'h20050003;
        instrmem[8] <= 32'h20a5ffff;
        instrmem[9] <= 32'h34a8ffff;
        instrmem[10] <= 32'h39085555;
        instrmem[11] <= 32'h2009ffff;
        instrmem[12] <= 32'h312affff;
        instrmem[13] <= 32'h01493025;
        instrmem[14] <= 32'h01494026;
        instrmem[15] <= 32'h01463824;
        instrmem[16] <= 32'h10a00001;
        instrmem[17] <= 32'h08000008;
        instrmem[18] <= 32'h2005ffff;
        instrmem[19] <= 32'h000543c0;
        instrmem[20] <= 32'h00084400;
        instrmem[21] <= 32'h00084403;
        instrmem[22] <= 32'h000843c2;
        instrmem[23] <= 32'h08000017;
        instrmem[24] <= 32'h00004020;
        instrmem[25] <= 32'h8c890000;
        instrmem[26] <= 32'h20840004;
        instrmem[27] <= 32'h01094020;
        instrmem[28] <= 32'h20a5ffff;
        instrmem[29] <= 32'h14a0fffb;
        instrmem[30] <= 32'h00081000;
        instrmem[31] <= 32'h03e00008;
    end
    always @(addr)
    begin
        instr = instrmem[addr/4];
    end
endmodule
