`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2021 06:40:11 PM
// Design Name: 
// Module Name: top_demo
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


module top_demo
(
  input  logic [3:0] sw,
  input  logic [3:0] btn,
  output logic [7:0] led
);

//input logic
logic a, b, cin;
logic s, cout;
  
  //assigned inputs to switchs
  assign a = sw[0];
  assign b = sw[1]; 
  assign cin = sw[2];
  
  //internal variables
  assign p = a ^ b;
  assign g = a & b;
  
  //assigned led outputs to output logic
  assign led[0]= p ^ cin;
  assign led[1] = g | (p & cin); 
  
  // If only using sw and led
  // assign led[0] = sw[0]^sw[1]^sw[2];   // sum 

endmodule