`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2023 19:10:15
// Design Name: 
// Module Name: dff
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


module dff(input clk,reset,din,
output reg q,qb
);
////asynchronous dff
always@(posedge clk or posedge reset)
begin
    if (reset)
    begin
        q<=1'b0;
        qb<=1'b1;
    end
    else 
    begin
        q<=din;
        qb<=~din;
    end
end

////synchronous dff
 /*   always@(posedge clk)
    begin
        if (reset)
        begin
            q<=1'b0;
            qb<=1'b1;
        end
        else 
        begin
            q<=din;
            qb<=~din;
        end
    end*/
endmodule
