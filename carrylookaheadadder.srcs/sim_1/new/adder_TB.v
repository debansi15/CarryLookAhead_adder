`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2024 04:14:09 PM
// Design Name: 
// Module Name: adder_TB
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


module adder_TB();
reg[3:0]a,b;
reg cin;
wire [3:0] sum;
wire cout;
CLA_adder u0(sum,cout,a,b,cin);
initial
begin
#50 a=4'b0001; b=4'b0010; cin=0;
#50 a=4'b0011; b=4'b0100; cin=0;
#50 a=4'b0101; b=4'b0110; cin=1;
#50 a=4'b0111; b=4'b1000; cin=1;
#50 a=4'b0001; b=4'b1010; cin=0;
#50 a=4'b1011; b=4'b0100; cin=0;
#50 a=4'b0101; b=4'b1110; cin=1;
#50 a=4'b1111; b=4'b1000; cin=1;
end
endmodule
