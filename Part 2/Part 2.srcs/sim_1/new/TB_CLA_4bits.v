`timescale 1ns / 1ps

module TB_CLA_4bits;

reg clk;
reg enable;
reg [3:0] A,B;
reg Cin;
wire [4:0] Q;

CLA_4bits u1 (
    .clk(clk),
    .enable(enable),
    .A(A),
    .B(B),
    .Cin(Cin),
    .Q(Q)
    );
 
initial
begin

clk = 0;
enable = 0;

//Test 1
A = 4'b0000;
B = 4'b0101;
Cin = 0;

#10

enable = 1;

//Test 2
#10
A = 4'b0101;
B = 4'b0111;
Cin = 0;

//Test 3
#10
A = 4'b1000;
B = 4'b0111;
Cin = 1;

//Test 4
#10
A = 4'b1001;
B = 4'b0100;
Cin = 0;

//Test 5
#10
A = 4'b1000;
B = 4'b1000;
Cin = 1;

//Test 6
#10
A = 4'b1101;
B = 4'b1010;
Cin = 1;

//Test 7
#10
A = 4'b1111;
B = 4'b1111;
Cin = 0;

end

always
#5 clk = ~clk; 

endmodule
