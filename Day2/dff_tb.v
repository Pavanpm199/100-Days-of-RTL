`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2023 19:16:32
// Design Name: 
// Module Name: dff_tb
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


module dff_tb(

    );
    reg clk,reset,din;
    wire q,qb;
    
 dff d1(clk,reset,din,q,qb);
 initial begin
 clk=1'b0;
 din=1'b0;
 reset=1'b0;
 end
   
 always #5 clk=~clk;
 always #50 din=~din;
 always #25 reset=~reset;
initial begin
 $monitor("time=%0t clk=%b reset=%b din=0%b q=0%b",$time,clk,reset,din,q);
end
endmodule
