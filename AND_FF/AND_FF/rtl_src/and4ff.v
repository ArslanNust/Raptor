`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/20/2022 10:09:22 AM
// Design Name: 
// Module Name: and_gate
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



module and4ff #(

    parameter NO_OF_GATES = 1
    
        )
      (
    input clock0,
    input [NO_OF_GATES-1:0] in0,
    input [NO_OF_GATES-1:0] in1,
    input [NO_OF_GATES-1:0] in2,
    input [NO_OF_GATES-1:0] in3,
   // output  [NO_OF_GATES-1:0]out1
   output reg [NO_OF_GATES-1:0]out1
    );

    wire [NO_OF_GATES-1:0]and_result;
    genvar i;
    
    generate
    for(i=0;i<NO_OF_GATES;i=i+1)
    begin
       // and(c[i],a[i],b[i]);
       andgate4 inst(
       .in0(in0[i]),
       .in1(in1[i]),
       .in2(in2[i]),
       .in3(in3[i]),
       .out1(and_result[i])
       );
    end
    endgenerate
    
    always@(posedge clock0)
    begin
      out1	<=	and_result;
    end
  //  assign  out1	=	and_result;
endmodule
