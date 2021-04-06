`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/06 19:46:57
// Design Name: 
// Module Name: VecMult
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


(* use_dsp = "yes" *)module VecMult # (parameter DATA_WIDTH = 16, VECTOR_SZ = 2, LOG_VEC_SZ = 2)(
    input clk,
    input rstn,
    input signed [DATA_WIDTH*VECTOR_SZ-1:0] IN1_BITS,
    input signed [DATA_WIDTH*VECTOR_SZ-1:0] IN2_BITS,
    input signed [DATA_WIDTH-1 : 0] BIAS,
    input IN_VALID,
    output signed [DATA_WIDTH-1:0] OUT_DATA_BITS,
    output OUT_VALID
    );
    
    wire signed [DATA_WIDTH-1:0] in1 [VECTOR_SZ-1:0]; // w
    wire signed [DATA_WIDTH-1:0] in2 [VECTOR_SZ-1:0]; // x
    
    // enable 
    reg en_add;
    
    // log(vecrotr_size) + DATA_WIDTH*2 -1 
    (*keep="true"*)
    reg signed [DATA_WIDTH*2 + LOG_VEC_SZ - 1 : 0] add;
//    (*keep="true"*)
    reg add_done;
    
    // output
//    (*keep="true"*)
    reg signed[DATA_WIDTH-1:0] out;
//    (*keep="true"*)
    reg out_valid;
    
    // for truncate
//    (*keep="true"*)
    reg tmp;
//    (*keep="true"*)
    reg tmp_n;
//    (*keep="true"*)
    reg ext_done;
//    (*keep="true"*)
    integer ext_cnt;
    
    // accumulater
//    (*keep="true"*)
    integer index;
    
    // bias 
//    (*keep="true"*)
    reg signed [DATA_WIDTH*2 + LOG_VEC_SZ - 1 : 0] bias;
    
    assign OUT_DATA_BITS = out;
    assign OUT_VALID = out_valid;
    
    genvar i;
    generate
        for (i = 0; i < VECTOR_SZ; i=i+1) begin
            assign in1[i] = IN1_BITS[i*DATA_WIDTH + DATA_WIDTH-1 -: DATA_WIDTH]; // deserialize
            assign in2[i] = IN2_BITS[i*DATA_WIDTH + DATA_WIDTH-1 -: DATA_WIDTH]; // deserialize
        end
    endgenerate
    
    // bias
    always @ (posedge clk) begin
        if (rstn == 1'b0)
            bias <= 0;
        
//        else if (IN_VALID & BIAS[DATA_WIDTH-1]) // neg 
//            bias <= (~($signed(~BIAS+1'b1) << 12)) +1'b1;
            
        else if (IN_VALID) // pos 
            bias <= BIAS << 12;
        
        else 
            bias <= bias;
    end
    
    //en_add
    always @ (posedge clk) begin
        if (rstn == 1'b0)
            en_add <= 0;
        
        else if (IN_VALID) // neg 
            en_add <= 1'b1;
            
        else if (en_add && index == VECTOR_SZ) // pos 
            en_add <= 0;
        
        else 
            en_add <= en_add;
    end
    
    // add 
    always @ (posedge clk) begin
        if (rstn == 1'b0)
            add <= 0;
        
        else if (IN_VALID) 
            add <= 0;
        
        else if (index < VECTOR_SZ && en_add)
            add <= add + (in1[index] * in2[index]);
            
        else if (index == VECTOR_SZ && en_add)
            add <= add + bias;
        
        else 
            add <= add;
    end
    
    // add done
    always @ (posedge clk) begin
        if (rstn == 1'b0)
            add_done <= 0;
        
        else if (index == VECTOR_SZ && en_add) 
            add_done <= 1'b1;
        
        else if (ext_cnt == DATA_WIDTH*2 + LOG_VEC_SZ - 28 && add_done)
            add_done <= 0;
        
        else
            add_done <= add_done;
    end
    
    // index
    always @(posedge clk) begin
        if (rstn == 1'b0)
            index <= 0;
            
        else if (IN_VALID) 
            index <= 0;
            
        else if (index < VECTOR_SZ && en_add) 
            index <= index + 1'b1;
            
        else if (index == VECTOR_SZ && en_add)
            index <= 0;
        
        else 
            index <= index;
    end
    
    // tmp
    always @ (posedge clk) begin
        if (rstn == 1'b0)
            tmp <= 0;
            
        else if (IN_VALID) 
            tmp <= 0;
            
        else if (add_done && ext_cnt < (DATA_WIDTH*2 + LOG_VEC_SZ - 28)) 
            tmp <= tmp | add[27 + ext_cnt];
            
        else 
            tmp <= tmp;
    end
    
    // tmp_n
    always @ (posedge clk) begin
        if (rstn == 1'b0)
            tmp_n <= 0;
            
        else if (IN_VALID) 
            tmp_n <= 0;
            
        else if (add_done && ext_cnt < (DATA_WIDTH*2 + LOG_VEC_SZ - 28)) 
            tmp_n <= tmp_n | ~add[27 + ext_cnt];
            
        else 
            tmp_n <= tmp_n;
    end
    
    // ext_cnt
    always @ (posedge clk) begin
        if (rstn == 1'b0)
            ext_cnt <= 0;
            
        else if (add_done && ext_cnt < (DATA_WIDTH*2 + LOG_VEC_SZ - 28)) 
            ext_cnt <= ext_cnt + 1'b1;
            
        else if (add_done && ext_cnt == (DATA_WIDTH*2 + LOG_VEC_SZ - 28))
            ext_cnt <= 0;
            
        else 
            ext_cnt <= ext_cnt;
    end
    
    // ext_done
    always @ (posedge clk) begin
        if (rstn == 1'b0)
            ext_done <= 0;
            
        else if (ext_cnt == DATA_WIDTH*2 + LOG_VEC_SZ - 28 && add_done) 
            ext_done <= 1'b1;
            
        else if (ext_done)
            ext_done <= 0;
            
        else 
            ext_done <= ext_done;
    end
    
    
    // out
    always @ (posedge clk) begin
        if (rstn == 1'b0) begin
            out <= 0;
        end
        
        if (IN_VALID) begin
            out <= 0;
        end
        
        else if (ext_done) begin
            if (!add[DATA_WIDTH*2 + LOG_VEC_SZ - 1] && tmp)  // positive
                out <= 16'b0111_1111_1111_1111;
            
            else if (add[DATA_WIDTH*2 + LOG_VEC_SZ - 1] && tmp_n)
                out <= 16'b1000_0000_0000_0000;
            
            else 
                out <= add[27:12];
        end
        
        else 
            out <= out;
    end
    
    // out_valid
    always @ (posedge clk) begin
        if (rstn == 1'b0) 
            out_valid <= 0;
            
        else if (ext_done) 
            out_valid <= 1'b1;
        
        else if (out_valid) 
            out_valid <= 0;
        
        else 
            out_valid <= out_valid;
    end
    
endmodule
