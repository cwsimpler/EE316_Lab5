`timescale 1ns / 1ps

module RCA_4bits(
    input clk,
    input enable,
    input [3:0] A,B,
    input Cin,
    output [4:0] Q
    );
    
    wire co0, c01, co2, co3;
    wire [4:0] sum;
    
    //Adding all 4 bits
    full_adder s0(.A(A[0]), .B(B[0]), .Cin(Cin), .S(sum[0]), .Cout(co0));
    full_adder s1(.A(A[1]), .B(B[1]), .Cin(co0), .S(sum[1]), .Cout(co1));
    full_adder s2(.A(A[2]), .B(B[2]), .Cin(co1), .S(sum[2]), .Cout(co2));
    full_adder s3(.A(A[3]), .B(B[3]), .Cin(co2), .S(sum[3]), .Cout(co3));
    assign sum[4] = co3;
    
    register_logic r0(.clk(clk), .enable(enable), .Data(sum), .Q(Q));
    
    
endmodule
