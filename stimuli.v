`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 16:11:47
// Design Name: 
// Module Name: stimuli
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


module stimuli(
    );
    wire sum,carry;
    reg a,b,c;
    
    fulladder dut(a,b,c,sum,carry);
    
    initial
    begin
         a=0;b=0;c=0;
    #10  a=0;b=0;c=1;
    #10  a=0;b=1;c=0;
    #10  a=0;b=1;c=1;
    #10  a=1;b=0;c=0;
    #10  a=1;b=0;c=1;
    #10  a=1;b=1;c=0;
    #10  a=1;b=1;c=1;
    #10 $finish;
   end
endmodule
