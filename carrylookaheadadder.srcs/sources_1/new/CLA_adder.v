`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2024 03:28:44 PM
// Design Name: 
// Module Name: CLA_adder
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


module CLA_adder(sum,cout,a,b,cin);
input[3:0]a,b;
input cin;
output [3:0] sum;
output cout;
wire p0,p1,p2,p3,c1,c2,c3,g0,g1,g2,g3;
assign p0=a[0]^b[0],   //generating propagation carry
       p1= a[1]^b[1],
       p2= a[2]^b[2],
       p3=a[3]^b[3];
assign g0=a[0]&b[0],   //generating carry in 'i'th state independent from other state
       g1=a[1]&b[1],
       g2=a[2]&b[2],
       g3=a[3]&b[3];
assign c1=g0|p0&cin,   //generating 'i+1'th stage carry
       c2=g1|p1&c1,
       c3=g2|p2&c2,
       cout=g3|p3&c3; //output carry will get from here so need only sum
assign sum[0]= p0^cin, //p=A^b and sum=a^b^cin   
       sum[1]= p1^c1,
       sum[2]= p2^c2,
       sum[3]= p3^c3;
assign {cout,sum}=a+b+cin;       
endmodule
