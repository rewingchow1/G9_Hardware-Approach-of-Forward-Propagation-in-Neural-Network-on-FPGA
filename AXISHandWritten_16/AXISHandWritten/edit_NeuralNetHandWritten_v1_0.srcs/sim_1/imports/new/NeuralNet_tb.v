`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/16 17:21:59
// Design Name: 
// Module Name: NeuralNet_tb
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


module NeuralNet_tb;
    reg clk, rstn;
    reg [15:0] in [783:0]; // activation input
    wire [16*784-1:0] in_bits; // activation input
    wire [159:0] o;
    
    wire [15:0] o1;
    wire [15:0] o2;
    wire [15:0] o3;
    wire [15:0] o4;
    wire [15:0] o5;
    wire [15:0] o6;
    wire [15:0] o7;
    wire [15:0] o8;
    wire [15:0] o9;
    wire [15:0] o10;
    wire [15:0] o11;
    wire [15:0] o12;
    wire [15:0] o13;
    wire [15:0] o14;
    wire [15:0] o15;
    wire [15:0] o16;
    
    wire[15:0] addr [783 : 0];
    
    reg in_valid;
    wire out_valid;
    
    assign {
    o16,
    o15,
    o14,
    o13,
    o12,
    o11,
    o10,
    o9,
    o8,
    o7,
    o6,
    o5,
    o4,
    o3,
    o2,
    o1
    } = o;
    
    initial begin
        $readmemb("actv1.mem", in);
    end
    
    genvar i;
    generate 
        for (i=0; i<784; i=i+1) begin
            assign addr[i] = i;
            assign in_bits[i*16 + 16 - 1 -: 16] = in[addr[i]];
        end
    endgenerate
    
    
    initial begin
        clk = 0;
        forever #5 
        clk = ~clk;
    end
    
    initial begin
        rstn = 0;
        in_valid = 1'b0;
        
        #100
        rstn = 1;
        // 0.25x-0.25 + 0.75x-0.75
        
        #15 
        in_valid = 1'b1;
        #10 
        in_valid = 1'b0;
        
        
    end
    
    // DUT
    NeuralNet 
    n1 
    (
        .clk (clk),
        .rstn (rstn),
        .IN (in_bits),
        .IN_VALID (in_valid),
        .OUT (o),
        .OUT_VALID(out_valid)
    );
    
endmodule
