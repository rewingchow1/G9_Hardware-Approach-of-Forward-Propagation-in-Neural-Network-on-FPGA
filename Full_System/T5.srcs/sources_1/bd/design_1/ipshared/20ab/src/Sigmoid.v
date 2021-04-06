`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/06 19:46:57
// Design Name: 
// Module Name: Sigmoid
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


(* use_dsp = "yes" *)module Sigmoid # (parameter DATA_WIDTH = 16, LUT_WIDTH = 14, NUM_OF_INPUTS = 10)(
    input clk,
    input rstn,
    input [DATA_WIDTH*NUM_OF_INPUTS-1:0] DATA,
    input DVALID,
    output [DATA_WIDTH*NUM_OF_INPUTS-1:0] OUTPUT,
    output OUT_VALID
    );
    
    // input deserialized
    reg [DATA_WIDTH-1:0] in [NUM_OF_INPUTS-1:0];
    
    // interpolate 
    reg read_done;
    reg addr_done;
    reg mem_done;
    reg out_valid;
    
    reg neg[NUM_OF_INPUTS-1 : 0];
    // lookup table 1000x10
//    (* ram_style = "BLOCK" *) 
    reg [DATA_WIDTH-1 : 0] mem [(1<<LUT_WIDTH)-1:0];
    reg [LUT_WIDTH-1 : 0] addr [NUM_OF_INPUTS-1 : 0];
    
    reg [DATA_WIDTH-1 : 0] out [NUM_OF_INPUTS-1:0];
    
    
    assign OUT_VALID = out_valid;
    
    // load table data from file
    initial begin
        $readmemb("lut14.mem", mem);
    end
    
    // deserialze
    genvar i;
    generate
        for (i=0; i<NUM_OF_INPUTS; i=i+1) begin
            assign OUTPUT[i*DATA_WIDTH + DATA_WIDTH - 1 -: DATA_WIDTH] = out[i];
        end
    endgenerate
    
    
    // read_done
    always @ (posedge clk) begin
        // reset all signals
        if (rstn == 1'b0) 
            read_done <= 1'b0;
        
        else if (DVALID)  // data valid
            read_done <= 1'b1;
        
        else if (read_done) 
            read_done <= 1'b0;
        
        else 
            read_done <= read_done;
    end
    
    // neg
    generate
        for (i=0; i<NUM_OF_INPUTS; i=i+1) begin
             always @ (posedge clk) begin
                if (rstn == 1'b0) 
                    neg[i] <= 1'b0;
                
                else if (DVALID & ~DATA[i*DATA_WIDTH + DATA_WIDTH-1])  // data valid, proc data
                    neg[i] <= 1'b0; // pos
                
                else if (DVALID & DATA[i*DATA_WIDTH + DATA_WIDTH-1])  // neg
                    neg[i] <= 1'b1;
                
                else 
                    neg[i] <= neg[i];
            end
        end
    endgenerate
   
    // in
    generate
        for (i=0; i<NUM_OF_INPUTS; i=i+1) begin
             always @ (posedge clk) begin
                if (rstn == 1'b0) begin
                    in[i] <= 0;
                end
                
                else if (DVALID & ~DATA[i*DATA_WIDTH + DATA_WIDTH-1])  // data valid, proc data
                    in[i] <= DATA[i*DATA_WIDTH + DATA_WIDTH - 1 -: DATA_WIDTH];
                    
                else if (DVALID & DATA[i*DATA_WIDTH + DATA_WIDTH-1])  // neg
                    in[i] <= ~DATA[i*DATA_WIDTH + DATA_WIDTH - 1 -: DATA_WIDTH] + 1'b1;
                
                else 
                    in[i] <= in[i];
            end
        end
    endgenerate
    
    // addr1
    generate
        for (i=0; i<NUM_OF_INPUTS; i=i+1) begin
            always @ (posedge clk) begin  
                if (rstn == 1'b0) 
                    addr[i] <= 0;
            
                else if (read_done && in[i] == 16'b10000000_00000000) 
                    addr[i] <= 14'b11_1111_1111_1111;
                    
                else if (read_done && in[i] != 16'b10000000_00000000) 
                    addr[i] <= in[i][DATA_WIDTH-2 : DATA_WIDTH-LUT_WIDTH-1];
                
                else 
                    addr[i] <= addr[i];
            end
        end
    endgenerate
    
    // addr_done
    generate
    for (i=0; i<NUM_OF_INPUTS; i=i+1) begin
        always @ (posedge clk) begin  
            if (rstn == 1'b0) 
                addr_done <= 0;
        
            else if (read_done) 
                addr_done <= 1'b1;
            
            else if (addr_done) 
                addr_done <= 1'b0;
            
            else 
                addr_done <= addr_done;
        end
    end
    endgenerate
    
    
    // out 
    generate 
        for (i=0; i<NUM_OF_INPUTS; i=i+1) begin
            always @ (posedge clk) begin  
                if (rstn == 1'b0) 
                    out[i] <= 0;
            
                else if (addr_done && !neg[i]) // pos
                    out[i] <= mem[addr[i]];
                
                else if (addr_done && neg[i]) // neg
                    out[i] <= 16'b0001000000000000 - mem[addr[i]];
                    
                else 
                    out[i] <= out[i];
            end
        end
    endgenerate
    
    
    // mem_done
    always @ (posedge clk) begin  
        if (rstn == 1'b0) 
            mem_done <= 0;
    
        else if (addr_done) 
            mem_done <= 1'b1;
            
        else if (mem_done) 
            mem_done <= 0;
        
        else 
            mem_done <= mem_done;
    end
    
    // tanh_done
    always @ (posedge clk) begin  
        if (rstn == 1'b0) 
            out_valid <= 0;
    
        else if (mem_done) 
            out_valid <= 1'b1;
            
        else if (out_valid) 
            out_valid <= 0;
        
        else 
            out_valid <= out_valid;
    end
    
    
endmodule
