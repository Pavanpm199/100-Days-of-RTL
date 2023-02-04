`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2023 15:42:50
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb(

    );
    reg a,b,cin;
    wire sum,carry;
    
    full_adder dut(a,b,cin,sum,carry);
    initial begin
    a=1'b0;
    b=1'b0;
    cin=1'b0;
    #50;
    
    a=1'b0;
    b=1'b0;
    cin=1'b1;
    #50
        a=1'b0;
    b=1'b0;
    cin=1'b0;
    #50;
    
    a=1'b0;
    b=1'b0;
    cin=1'b0;
    #50;
    
    a=1'b0;
    b=1'b1;
    cin=1'b0;
    #50;
    
    a=1'b1;
    b=1'b1;
    cin=1'b1;
    #50;
    
    end
endmodule
