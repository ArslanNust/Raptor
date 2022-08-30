`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/20/2022 12:12:49 PM
// Design Name: 
// Module Name: andgate
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


module andgate4 
        (
    input in0,
    input in1,
    input in2,
    input in3,
    output out1
    );

    assign out1 = in0 & in1 & in2 & in3;
endmodule
