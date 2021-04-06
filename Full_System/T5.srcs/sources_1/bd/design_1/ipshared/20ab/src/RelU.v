`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/06 19:46:57
// Design Name: 
// Module Name: RelU
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


module RelU # (parameter DATA_WIDTH = 16, NUM_OF_INPUTS = 3)(
    input clk,
    input rstn,
    input IN_VALID,
    input [DATA_WIDTH*NUM_OF_INPUTS-1:0] IN_BITS,
    output [DATA_WIDTH*NUM_OF_INPUTS-1:0] OUT_BITS,
    output OUT_VALID
    );
    wire [DATA_WIDTH-1:0] in [NUM_OF_INPUTS-1:0];
    reg [DATA_WIDTH-1:0] out [NUM_OF_INPUTS-1:0];
    reg en_out;
    reg out_valid;
    
    assign OUT_VALID = out_valid;
    
    genvar i;
    generate
        for (i = 0; i < NUM_OF_INPUTS; i=i+1) begin
            assign in[i] = IN_BITS[i*DATA_WIDTH + DATA_WIDTH-1 -: DATA_WIDTH]; // deserialize
        end
    endgenerate
    
    generate
        for (i = 0; i < NUM_OF_INPUTS; i=i+1) begin
            assign OUT_BITS[i*DATA_WIDTH + DATA_WIDTH-1 -: DATA_WIDTH] = out[i];
        end
    endgenerate
    
    // en_out
     always @(posedge clk) begin
        if (rstn == 1'b0) 
            en_out <= 0;
            
        else if (IN_VALID)
            en_out <= 1'b1;
        
        else if (en_out)
            en_out <= 0;
            
        else 
            en_out <= en_out;
    end
    
    // out_valid
    always @(posedge clk) begin
        if (rstn == 1'b0) 
            out_valid <= 0;
            
        else if (IN_VALID)
            out_valid <= 0;
            
        else if (en_out)
            out_valid <= 1'b1;
        
        else if (out_valid)
            out_valid <= 0;
            
        else 
            out_valid <= out_valid;
    end
    
    // calculate relu, in >=0 , out = in, in < 0, out = 0
    generate
        for (i = 0; i < NUM_OF_INPUTS; i=i+1) begin
            always @(posedge clk) begin
                if (rstn == 1'b0) 
                    out[i] <= 0;
                else if (IN_VALID)
                    out[i] <= (in[i][DATA_WIDTH-1] == 1'b0) ? in[i] : 0;
                
                else 
                    out[i] <= out[i];
            end
        end
    endgenerate
    
endmodule
