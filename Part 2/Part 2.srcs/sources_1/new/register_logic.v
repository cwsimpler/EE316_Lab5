`timescale 1ns / 1ps

module register_logic(
    input clk,
    input enable,
    input [4:0] Data,
    output reg [4:0] Q
    );
    
    initial Q = 0;
    wire [4:0] Qin;
    assign Qin = enable ? Data : Q;
        
    //Sequential logic
    always @(posedge clk) begin
        Q <= Qin;
    end

endmodule
