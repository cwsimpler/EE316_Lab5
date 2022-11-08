`timescale 1ns / 1ps

module full_adder(
    input A,B,Cin,
    output S,Cout
    );
    
    assign S = (A ^ B) ^ Cin;
    assign Cout = (B & Cin) | (A & Cin) | (A & B);
    
endmodule
