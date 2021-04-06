`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/15 22:27:37
// Design Name: 
// Module Name: NeuralNet
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


module NeuralNet # (parameter DATA_WIDTH = 16, L1_Neuron_No = 784, L2_Neuron_No = 16, L3_Neuron_No = 10)(
    input clk,
    input rstn,
    input [DATA_WIDTH*L1_Neuron_No-1 : 0]IN,
    input IN_VALID,
    output [DATA_WIDTH*L3_Neuron_No-1 : 0]OUT,
    output OUT_VALID
    );
    
    
    // caluculate log2()
    function integer clogb2;
       input [DATA_WIDTH-1:0] value;
       integer 	i;
       begin
          clogb2 = 0;
          for(i = 0; 2**i < value; i = i + 1)
        clogb2 = i + 1;
       end
    endfunction
    
    // parameters
    localparam LUT_WIDTH = 14;
    localparam NUM_OF_EXT_BITS_L2 = clogb2(L1_Neuron_No+1);
    localparam NUM_OF_EXT_BITS_L3 = clogb2(L2_Neuron_No+1);
    
    // weight buffer (deserialized)
    (* rom_style = "BLOCK" *)
    reg [DATA_WIDTH-1:0] w_buf1 [L1_Neuron_No*L2_Neuron_No-1 : 0];
    (* rom_style = "BLOCK" *)
    reg [DATA_WIDTH-1:0] w_buf2 [L2_Neuron_No*L3_Neuron_No-1 : 0];
    // bias buffer
    (* rom_style = "BLOCK" *)
    reg [DATA_WIDTH-1:0] b_buf1 [L2_Neuron_No-1 : 0];
    (* rom_style = "BLOCK" *)
    reg [DATA_WIDTH-1:0] b_buf2 [L3_Neuron_No-1 : 0];
    // nueron activation buffer
//    (*dont_touch="true"*)(* ram_style = "BLOCK" *)
    reg [DATA_WIDTH-1:0] a_buf1 [L1_Neuron_No-1 : 0];
//    (*dont_touch="true"*)(* ram_style = "BLOCK" *)
    reg [DATA_WIDTH-1:0] a_buf2 [L2_Neuron_No-1 : 0];
//    (*dont_touch="true"*)(* ram_style = "BLOCK" *)
    reg [DATA_WIDTH-1:0] a_buf3 [L3_Neuron_No-1 : 0];
    
    // store emp result
//    (*dont_touch="true"*)
    reg [DATA_WIDTH-1:0] in_relu_buf [L2_Neuron_No-1 : 0];
//    (*dont_touch="true"*)
    reg [DATA_WIDTH-1:0] in_sig_buf [L3_Neuron_No-1 : 0];
    
    wire [DATA_WIDTH*L1_Neuron_No*L2_Neuron_No-1 : 0] w_buf1_bits;
    wire [DATA_WIDTH*L2_Neuron_No*L3_Neuron_No-1 : 0] w_buf2_bits;
    wire [DATA_WIDTH*L1_Neuron_No-1 : 0] a_buf1_bits;
    wire [DATA_WIDTH*L2_Neuron_No-1 : 0] a_buf2_bits;
    
    wire [DATA_WIDTH*L2_Neuron_No-1 : 0] in_relu_bits;
    wire [DATA_WIDTH*L3_Neuron_No-1 : 0] in_sig_bits;
    wire [DATA_WIDTH*L2_Neuron_No-1 : 0] out_relu_bits;
    wire [DATA_WIDTH*L3_Neuron_No-1 : 0] out_sig_bits;
    
    // output from first layer vectmult
    wire [DATA_WIDTH-1 : 0] out_mult1_m1;
    wire [DATA_WIDTH-1 : 0] out_mult1_m2;
    wire [DATA_WIDTH-1 : 0] out_mult1_m3;
    wire [DATA_WIDTH-1 : 0] out_mult1_m4;
    wire [DATA_WIDTH-1 : 0] out_mult1_m5;
    wire [DATA_WIDTH-1 : 0] out_mult1_m6;
    wire [DATA_WIDTH-1 : 0] out_mult1_m7;
    wire [DATA_WIDTH-1 : 0] out_mult1_m8;
    wire [DATA_WIDTH-1 : 0] out_mult1_m9;
    wire [DATA_WIDTH-1 : 0] out_mult1_m10;
    wire [DATA_WIDTH-1 : 0] out_mult1_m11;
    wire [DATA_WIDTH-1 : 0] out_mult1_m12;
    wire [DATA_WIDTH-1 : 0] out_mult1_m13;
    wire [DATA_WIDTH-1 : 0] out_mult1_m14;
    wire [DATA_WIDTH-1 : 0] out_mult1_m15;
    wire [DATA_WIDTH-1 : 0] out_mult1_m16;
    
    // output from second layer vectmult
    wire [DATA_WIDTH-1 : 0] out_mult2_m1;
    wire [DATA_WIDTH-1 : 0] out_mult2_m2;
    wire [DATA_WIDTH-1 : 0] out_mult2_m3;
    wire [DATA_WIDTH-1 : 0] out_mult2_m4;
    wire [DATA_WIDTH-1 : 0] out_mult2_m5;
    wire [DATA_WIDTH-1 : 0] out_mult2_m6;
    wire [DATA_WIDTH-1 : 0] out_mult2_m7;
    wire [DATA_WIDTH-1 : 0] out_mult2_m8;
    wire [DATA_WIDTH-1 : 0] out_mult2_m9;
    wire [DATA_WIDTH-1 : 0] out_mult2_m10;
    
    // input to first layer vectmult
    wire [DATA_WIDTH*L1_Neuron_No-1 : 0] w_in_mult1_m1;
    wire [DATA_WIDTH*L1_Neuron_No-1 : 0] w_in_mult1_m2;
    wire [DATA_WIDTH*L1_Neuron_No-1 : 0] w_in_mult1_m3;
    wire [DATA_WIDTH*L1_Neuron_No-1 : 0] w_in_mult1_m4;
    wire [DATA_WIDTH*L1_Neuron_No-1 : 0] w_in_mult1_m5;
    wire [DATA_WIDTH*L1_Neuron_No-1 : 0] w_in_mult1_m6;
    wire [DATA_WIDTH*L1_Neuron_No-1 : 0] w_in_mult1_m7;
    wire [DATA_WIDTH*L1_Neuron_No-1 : 0] w_in_mult1_m8;
    wire [DATA_WIDTH*L1_Neuron_No-1 : 0] w_in_mult1_m9;
    wire [DATA_WIDTH*L1_Neuron_No-1 : 0] w_in_mult1_m10;
    wire [DATA_WIDTH*L1_Neuron_No-1 : 0] w_in_mult1_m11;
    wire [DATA_WIDTH*L1_Neuron_No-1 : 0] w_in_mult1_m12;
    wire [DATA_WIDTH*L1_Neuron_No-1 : 0] w_in_mult1_m13;
    wire [DATA_WIDTH*L1_Neuron_No-1 : 0] w_in_mult1_m14;
    wire [DATA_WIDTH*L1_Neuron_No-1 : 0] w_in_mult1_m15;
    wire [DATA_WIDTH*L1_Neuron_No-1 : 0] w_in_mult1_m16;
    
    // input to second layer vectmult
    wire [DATA_WIDTH*L2_Neuron_No-1 : 0] w_in_mult2_m1;
    wire [DATA_WIDTH*L2_Neuron_No-1 : 0] w_in_mult2_m2;
    wire [DATA_WIDTH*L2_Neuron_No-1 : 0] w_in_mult2_m3;
    wire [DATA_WIDTH*L2_Neuron_No-1 : 0] w_in_mult2_m4;
    wire [DATA_WIDTH*L2_Neuron_No-1 : 0] w_in_mult2_m5;
    wire [DATA_WIDTH*L2_Neuron_No-1 : 0] w_in_mult2_m6;
    wire [DATA_WIDTH*L2_Neuron_No-1 : 0] w_in_mult2_m7;
    wire [DATA_WIDTH*L2_Neuron_No-1 : 0] w_in_mult2_m8;
    wire [DATA_WIDTH*L2_Neuron_No-1 : 0] w_in_mult2_m9;
    wire [DATA_WIDTH*L2_Neuron_No-1 : 0] w_in_mult2_m10;
    
    assign w_in_mult1_m1 = w_buf1_bits[1*DATA_WIDTH*L1_Neuron_No-1 : 0];
    assign w_in_mult1_m2 = w_buf1_bits[2*DATA_WIDTH*L1_Neuron_No-1 : 1*DATA_WIDTH*L1_Neuron_No];
    assign w_in_mult1_m3 = w_buf1_bits[3*DATA_WIDTH*L1_Neuron_No-1 : 2*DATA_WIDTH*L1_Neuron_No];
    assign w_in_mult1_m4 = w_buf1_bits[4*DATA_WIDTH*L1_Neuron_No-1 : 3*DATA_WIDTH*L1_Neuron_No];
    assign w_in_mult1_m5 = w_buf1_bits[5*DATA_WIDTH*L1_Neuron_No-1 : 4*DATA_WIDTH*L1_Neuron_No];
    assign w_in_mult1_m6 = w_buf1_bits[6*DATA_WIDTH*L1_Neuron_No-1 : 5*DATA_WIDTH*L1_Neuron_No];
    assign w_in_mult1_m7 = w_buf1_bits[7*DATA_WIDTH*L1_Neuron_No-1 : 6*DATA_WIDTH*L1_Neuron_No];
    assign w_in_mult1_m8 = w_buf1_bits[8*DATA_WIDTH*L1_Neuron_No-1 : 7*DATA_WIDTH*L1_Neuron_No];
    assign w_in_mult1_m9 = w_buf1_bits[9*DATA_WIDTH*L1_Neuron_No-1 : 8*DATA_WIDTH*L1_Neuron_No];
    assign w_in_mult1_m10 = w_buf1_bits[10*DATA_WIDTH*L1_Neuron_No-1 : 9*DATA_WIDTH*L1_Neuron_No];
    assign w_in_mult1_m11 = w_buf1_bits[11*DATA_WIDTH*L1_Neuron_No-1 : 10*DATA_WIDTH*L1_Neuron_No];
    assign w_in_mult1_m12 = w_buf1_bits[12*DATA_WIDTH*L1_Neuron_No-1 : 11*DATA_WIDTH*L1_Neuron_No];
    assign w_in_mult1_m13 = w_buf1_bits[13*DATA_WIDTH*L1_Neuron_No-1 : 12*DATA_WIDTH*L1_Neuron_No];
    assign w_in_mult1_m14 = w_buf1_bits[14*DATA_WIDTH*L1_Neuron_No-1 : 13*DATA_WIDTH*L1_Neuron_No];
    assign w_in_mult1_m15 = w_buf1_bits[15*DATA_WIDTH*L1_Neuron_No-1 : 14*DATA_WIDTH*L1_Neuron_No];
    assign w_in_mult1_m16 = w_buf1_bits[16*DATA_WIDTH*L1_Neuron_No-1 : 15*DATA_WIDTH*L1_Neuron_No];
    
    assign w_in_mult2_m1 = w_buf2_bits[DATA_WIDTH*L2_Neuron_No-1 : 0];
    assign w_in_mult2_m2 = w_buf2_bits[2*DATA_WIDTH*L2_Neuron_No-1 : 1*DATA_WIDTH*L2_Neuron_No];
    assign w_in_mult2_m3 = w_buf2_bits[3*DATA_WIDTH*L2_Neuron_No-1 : 2*DATA_WIDTH*L2_Neuron_No];
    assign w_in_mult2_m4 = w_buf2_bits[4*DATA_WIDTH*L2_Neuron_No-1 : 3*DATA_WIDTH*L2_Neuron_No];
    assign w_in_mult2_m5 = w_buf2_bits[5*DATA_WIDTH*L2_Neuron_No-1 : 4*DATA_WIDTH*L2_Neuron_No];
    assign w_in_mult2_m6 = w_buf2_bits[6*DATA_WIDTH*L2_Neuron_No-1 : 5*DATA_WIDTH*L2_Neuron_No];
    assign w_in_mult2_m7 = w_buf2_bits[7*DATA_WIDTH*L2_Neuron_No-1 : 6*DATA_WIDTH*L2_Neuron_No];
    assign w_in_mult2_m8 = w_buf2_bits[8*DATA_WIDTH*L2_Neuron_No-1 : 7*DATA_WIDTH*L2_Neuron_No];
    assign w_in_mult2_m9 = w_buf2_bits[9*DATA_WIDTH*L2_Neuron_No-1 : 8*DATA_WIDTH*L2_Neuron_No];
    assign w_in_mult2_m10 = w_buf2_bits[10*DATA_WIDTH*L2_Neuron_No-1 : 9*DATA_WIDTH*L2_Neuron_No];
    
    wire [DATA_WIDTH*L2_Neuron_No-1 : 0] out_mult1_bits;
    wire [DATA_WIDTH*L3_Neuron_No-1 : 0] out_mult2_bits;
    
    assign out_mult1_bits = {
                            out_mult1_m16, 
                            out_mult1_m15, 
                            out_mult1_m14, 
                            out_mult1_m13,
                            out_mult1_m12, 
                            out_mult1_m11, 
                            out_mult1_m10,
                            out_mult1_m9, 
                            out_mult1_m8, 
                            out_mult1_m7,
                            out_mult1_m6, 
                            out_mult1_m5, 
                            out_mult1_m4,
                            out_mult1_m3, 
                            out_mult1_m2, 
                            out_mult1_m1
                            };
    assign out_mult2_bits = {
                            out_mult2_m10,
                            out_mult2_m9,
                            out_mult2_m8,
                            out_mult2_m7,
                            out_mult2_m6,
                            out_mult2_m5,
                            out_mult2_m4,
                            out_mult2_m3,
                            out_mult2_m2,
                            out_mult2_m1
                            };
    
    // enable signal
//    reg en_read;
    reg en_mult1;
    reg en_mult2;
    reg en_sigm;
    reg en_relu;
    reg out_valid;
    
    // done logic
    wire mult1_m1_done;
    wire mult1_m2_done;
    wire mult1_m3_done;
    wire mult1_m4_done;
    wire mult1_m5_done;
    wire mult1_m6_done;
    wire mult1_m7_done;
    wire mult1_m8_done;
    wire mult1_m9_done;
    wire mult1_m10_done;
    wire mult1_m11_done;
    wire mult1_m12_done;
    wire mult1_m13_done;
    wire mult1_m14_done;
    wire mult1_m15_done;
    wire mult1_m16_done;
    
    wire mult2_m1_done;
    wire mult2_m2_done;
    wire mult2_m3_done;
    wire mult2_m4_done;
    wire mult2_m5_done;
    wire mult2_m6_done;
    wire mult2_m7_done;
    wire mult2_m8_done;
    wire mult2_m9_done;
    wire mult2_m10_done;
    
    
    wire relu_done;
    wire sigm_done;
    
    // state machine
    reg [3:0] state;
    localparam [3:0]
        idle = 3'b000,
        read_data = 3'b001,
        mult1 = 3'b010,
        relu = 3'b011,
        mult2 = 3'b100,
        sigm = 3'b101,
        out = 3'b110;
        
    wire[DATA_WIDTH-1:0] w_buf1_addr [L1_Neuron_No*L2_Neuron_No-1 : 0];
    wire[DATA_WIDTH-1:0] w_buf2_addr [L2_Neuron_No*L3_Neuron_No-1 : 0];
    
    wire[DATA_WIDTH-1:0] b_buf1_addr1;
    wire[DATA_WIDTH-1:0] b_buf1_addr2;
    wire[DATA_WIDTH-1:0] b_buf1_addr3;
    wire[DATA_WIDTH-1:0] b_buf1_addr4;
    wire[DATA_WIDTH-1:0] b_buf1_addr5;
    wire[DATA_WIDTH-1:0] b_buf1_addr6;
    wire[DATA_WIDTH-1:0] b_buf1_addr7;
    wire[DATA_WIDTH-1:0] b_buf1_addr8;
    wire[DATA_WIDTH-1:0] b_buf1_addr9;
    wire[DATA_WIDTH-1:0] b_buf1_addr10;
    wire[DATA_WIDTH-1:0] b_buf1_addr11;
    wire[DATA_WIDTH-1:0] b_buf1_addr12;
    wire[DATA_WIDTH-1:0] b_buf1_addr13;
    wire[DATA_WIDTH-1:0] b_buf1_addr14;
    wire[DATA_WIDTH-1:0] b_buf1_addr15;
    wire[DATA_WIDTH-1:0] b_buf1_addr16;
    
    wire[DATA_WIDTH-1:0] b_buf2_addr1;
    wire[DATA_WIDTH-1:0] b_buf2_addr2;
    wire[DATA_WIDTH-1:0] b_buf2_addr3;
    wire[DATA_WIDTH-1:0] b_buf2_addr4;
    wire[DATA_WIDTH-1:0] b_buf2_addr5;
    wire[DATA_WIDTH-1:0] b_buf2_addr6;
    wire[DATA_WIDTH-1:0] b_buf2_addr7;
    wire[DATA_WIDTH-1:0] b_buf2_addr8;
    wire[DATA_WIDTH-1:0] b_buf2_addr9;
    wire[DATA_WIDTH-1:0] b_buf2_addr10;
    
    // load weight, bias, input from file
    initial begin
        $readmemb("weights_layer1_2.mem", w_buf1);
        $readmemb("weights_layer2_3.mem", w_buf2);
        $readmemb("bias_layer2.mem", b_buf1);
        $readmemb("bias_layer3.mem", b_buf2);
        
        
    end
    
    assign b_buf1_addr1 = 0;
    assign b_buf1_addr2 = 1;
    assign b_buf1_addr3 = 2;
    assign b_buf1_addr4 = 3;
    assign b_buf1_addr5 = 4;
    assign b_buf1_addr6 = 5;
    assign b_buf1_addr7 = 6;
    assign b_buf1_addr8 = 7;
    assign b_buf1_addr9 = 8;
    assign b_buf1_addr10 = 9;
    assign b_buf1_addr11 = 10;
    assign b_buf1_addr12 = 11;
    assign b_buf1_addr13 = 12;
    assign b_buf1_addr14 = 13;
    assign b_buf1_addr15 = 14;
    assign b_buf1_addr16 = 15;
    
    assign b_buf2_addr1 = 0;
    assign b_buf2_addr2 = 1;
    assign b_buf2_addr3 = 2;
    assign b_buf2_addr4 = 3;
    assign b_buf2_addr5 = 4;
    assign b_buf2_addr6 = 5;
    assign b_buf2_addr7 = 6;
    assign b_buf2_addr8 = 7;
    assign b_buf2_addr9 = 8;
    assign b_buf2_addr10 = 9;
    
    assign OUT_VALID = out_valid;
    
    genvar i;
    // w_buf1_bits
    generate 
        for (i=0; i<L1_Neuron_No*L2_Neuron_No; i=i+1) begin
            assign w_buf1_addr[i] = i;
            assign w_buf1_bits[i*DATA_WIDTH + DATA_WIDTH - 1 -: DATA_WIDTH] = w_buf1[w_buf1_addr[i]];
        end
    endgenerate
    // w_buf2_bits
    generate 
        for (i=0; i<L2_Neuron_No*L3_Neuron_No; i=i+1) begin
            assign w_buf2_addr[i] = i;
            assign w_buf2_bits[ i*DATA_WIDTH + DATA_WIDTH - 1 -: DATA_WIDTH] = w_buf2[w_buf2_addr[i]];
        end
    endgenerate
    // a_buf1_bits
    generate 
        for (i=0; i<L1_Neuron_No; i=i+1) begin
            assign a_buf1_bits[ i*DATA_WIDTH + DATA_WIDTH - 1 -: DATA_WIDTH ] = a_buf1[i];
        end
    endgenerate
    // a_buf2_bits
    generate 
        for (i=0; i<L2_Neuron_No; i=i+1) begin
            assign a_buf2_bits[ i*DATA_WIDTH + DATA_WIDTH - 1 -: DATA_WIDTH ] = a_buf2[i];
        end
    endgenerate
    // in_relu_bits
    generate 
        for (i=0; i<L2_Neuron_No; i=i+1) begin
            assign in_relu_bits[ i*DATA_WIDTH + DATA_WIDTH - 1 -: DATA_WIDTH ] = in_relu_buf[i];
        end
    endgenerate
    
    // in_sig_bits 
    generate 
        for (i=0; i<L3_Neuron_No; i=i+1) begin
            assign in_sig_bits[ i*DATA_WIDTH + DATA_WIDTH - 1 -: DATA_WIDTH ] = in_sig_buf[i];
        end
    endgenerate
    
    // out
    generate 
        for (i=0; i<L3_Neuron_No; i=i+1) begin
            assign OUT[ i*DATA_WIDTH + DATA_WIDTH - 1 -: DATA_WIDTH ] = a_buf3[i];
        end
    endgenerate
    
    
    // FSM for control unit
    always @(posedge clk) begin
        if (rstn == 1'b0) begin
            state <= idle;
//            en_read <= 0;
            en_mult1 <= 0;
            en_relu <= 0;
            en_mult2 <= 0;
            en_sigm <= 0;
            out_valid <= 0;
        end
        else begin
        case(state) 
          idle: 
            if (IN_VALID) begin
                state <= read_data;
//                en_read<= 1'b1;
            end
            else 
                state <= state;
            
          read_data:
            begin
                state <= mult1;
                en_mult1 <= 1'b1;
            end
            
          mult1:
            if (
                mult1_m1_done &&
                mult1_m2_done &&
                mult1_m3_done &&
                mult1_m4_done &&
                mult1_m5_done && 
                mult1_m6_done &&
                mult1_m7_done && 
                mult1_m8_done &&
                mult1_m9_done &&
                mult1_m10_done && 
                mult1_m11_done && 
                mult1_m12_done &&
                mult1_m13_done && 
                mult1_m14_done && 
                mult1_m15_done &&
                mult1_m16_done
                ) begin
                state <= relu;
                en_relu <= 1'b1;
            end
            else 
                state <= state;
          relu:
            if (relu_done) begin
                state <= mult2;
                en_mult2 <= 1'b1;
            end
            else
                state <= state;
            
          mult2:
            if (
                mult2_m1_done &&
                mult2_m2_done &&
                mult2_m3_done &&
                mult2_m4_done &&
                mult2_m5_done &&
                mult2_m6_done &&
                mult2_m7_done &&
                mult2_m8_done &&
                mult2_m9_done &&
                mult2_m10_done 
                )  begin
                state <= sigm;
                en_sigm <= 1'b1;  
            end
            else 
                state <= state;
                
          sigm:
            if (sigm_done) begin
                state <= out;
                
            end
            else begin
                state <= state;
            end
         
         out:
            begin
                state <= idle;
                out_valid <= 1'b1;
            end
         
          default: 
            state <= idle;  
        endcase
        end
        
        // enable logic
//        if (en_read) 
//            en_read <= 0;
        
        if (en_mult1) 
            en_mult1 <= 0;
        
        if (en_relu) 
            en_relu <= 0;
        
        if (en_mult2) 
            en_mult2 <= 0;
        
        if (en_sigm) 
            en_sigm <= 0;
        
        if (out_valid) 
            out_valid <= 0;
    end
    
    // a_buf1
    generate 
    for (i=0; i<L1_Neuron_No; i=i+1) begin
        always @(posedge clk) begin
            if (rstn == 1'b0) 
                a_buf1[i] <= 0;
                
            else if (IN_VALID) 
                a_buf1[i] <= IN[i*DATA_WIDTH + DATA_WIDTH - 1 -: DATA_WIDTH];
                
//            else if (en_read) 
//                a_buf1[i] <= IN[i*DATA_WIDTH + DATA_WIDTH - 1 -: DATA_WIDTH];
            
            else
                a_buf1[i] <= a_buf1[i];
        end
    end
    endgenerate
    
    // in_relu_buf
    generate 
    for (i=0; i<L2_Neuron_No; i=i+1) begin
        always @(posedge clk) begin
            if (rstn == 1'b0) 
                in_relu_buf[i] <= 0;
            
            else if (IN_VALID) 
                in_relu_buf[i] <= 0;
                
            else if (
                    mult1_m1_done &&
                    mult1_m2_done &&
                    mult1_m3_done &&
                    mult1_m4_done &&
                    mult1_m5_done && 
                    mult1_m6_done &&
                    mult1_m7_done && 
                    mult1_m8_done &&
                    mult1_m9_done &&
                    mult1_m10_done && 
                    mult1_m11_done && 
                    mult1_m12_done &&
                    mult1_m13_done && 
                    mult1_m14_done && 
                    mult1_m15_done &&
                    mult1_m16_done
                    ) 
                in_relu_buf[i] <= out_mult1_bits[i*DATA_WIDTH + DATA_WIDTH - 1 -: DATA_WIDTH];
            
            else
                in_relu_buf[i] <= in_relu_buf[i];
        end
    end
    endgenerate
    
    // a_buf2
    generate 
    for (i=0; i<L2_Neuron_No; i=i+1) begin
        always @(posedge clk) begin
            if (rstn == 1'b0) 
                a_buf2[i] <= 0;
                
            else if (IN_VALID) 
                a_buf2[i] <= 0;
                
            else if (relu_done) 
                a_buf2[i] <= out_relu_bits[i*DATA_WIDTH + DATA_WIDTH - 1 -: DATA_WIDTH];
            
            else
                a_buf2[i] <= a_buf2[i];
        end
    end
    endgenerate
    
    // in_sig_buf
    generate 
    for (i=0; i<L3_Neuron_No; i=i+1) begin
        always @(posedge clk) begin
            if (rstn == 1'b0) 
                in_sig_buf[i] <= 0;
                
            else if (IN_VALID) 
                in_sig_buf[i] <= 0;
                
            else if (
                    mult2_m1_done &&
                    mult2_m2_done &&
                    mult2_m3_done &&
                    mult2_m4_done &&
                    mult2_m5_done &&
                    mult2_m6_done &&
                    mult2_m7_done &&
                    mult2_m8_done &&
                    mult2_m9_done &&
                    mult2_m10_done 
                    ) 
                in_sig_buf[i] <= out_mult2_bits[i*DATA_WIDTH + DATA_WIDTH - 1 -: DATA_WIDTH];
            
            else
                in_sig_buf[i] <= in_sig_buf[i];
        end
    end
    endgenerate
    
    // a_buf3
    generate 
    for (i=0; i<L3_Neuron_No; i=i+1) begin
        always @(posedge clk) begin
            if (rstn == 1'b0) 
                a_buf3[i] <= 0;
                
            else if (IN_VALID) 
                a_buf3[i] <= 0;
                
            else if (sigm_done) 
                a_buf3[i] <= out_sig_bits[i*DATA_WIDTH + DATA_WIDTH - 1 -: DATA_WIDTH];
            
            else
                a_buf3[i] <= a_buf3[i];
        end
    end
    endgenerate
    
    
    
    // m1_lay1
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L1_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L2)) lay1_m1
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult1_m1), 
        .IN2_BITS(a_buf1_bits), 
        .BIAS(b_buf1[b_buf1_addr1]),
        .IN_VALID(en_mult1), 
        .OUT_DATA_BITS(out_mult1_m1), 
        .OUT_VALID(mult1_m1_done)
    );
    
    // m2_lay1
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L1_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L2)) lay1_m2
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult1_m2), 
        .IN2_BITS(a_buf1_bits), 
        .BIAS(b_buf1[b_buf1_addr2]),
        .IN_VALID(en_mult1), 
        .OUT_DATA_BITS(out_mult1_m2), 
        .OUT_VALID(mult1_m2_done)
    );
    
    // m3_lay1
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L1_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L2)) lay1_m3
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult1_m3), 
        .IN2_BITS(a_buf1_bits), 
        .BIAS(b_buf1[b_buf1_addr3]),
        .IN_VALID(en_mult1), 
        .OUT_DATA_BITS(out_mult1_m3), 
        .OUT_VALID(mult1_m3_done)
    );
    
    // m4_lay1
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L1_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L2)) lay1_m4
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult1_m4), 
        .IN2_BITS(a_buf1_bits), 
        .BIAS(b_buf1[b_buf1_addr4]),
        .IN_VALID(en_mult1), 
        .OUT_DATA_BITS(out_mult1_m4), 
        .OUT_VALID(mult1_m4_done)
    );
    
    // m2_lay1
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L1_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L2)) lay1_m5
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult1_m5), 
        .IN2_BITS(a_buf1_bits), 
        .BIAS(b_buf1[b_buf1_addr5]),
        .IN_VALID(en_mult1), 
        .OUT_DATA_BITS(out_mult1_m5), 
        .OUT_VALID(mult1_m5_done)
    );
    
    // m3_lay1
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L1_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L2)) lay1_m6
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult1_m6), 
        .IN2_BITS(a_buf1_bits), 
        .BIAS(b_buf1[b_buf1_addr6]),
        .IN_VALID(en_mult1), 
        .OUT_DATA_BITS(out_mult1_m6), 
        .OUT_VALID(mult1_m6_done)
    );
    
    // m1_lay1
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L1_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L2)) lay1_m7
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult1_m7), 
        .IN2_BITS(a_buf1_bits), 
        .BIAS(b_buf1[b_buf1_addr7]),
        .IN_VALID(en_mult1), 
        .OUT_DATA_BITS(out_mult1_m7), 
        .OUT_VALID(mult1_m7_done)
    );
    
    // m2_lay1
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L1_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L2)) lay1_m8
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult1_m8), 
        .IN2_BITS(a_buf1_bits), 
        .BIAS(b_buf1[b_buf1_addr8]),
        .IN_VALID(en_mult1), 
        .OUT_DATA_BITS(out_mult1_m8), 
        .OUT_VALID(mult1_m8_done)
    );
    
    // m3_lay1
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L1_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L2)) lay1_m9
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult1_m9), 
        .IN2_BITS(a_buf1_bits), 
        .BIAS(b_buf1[b_buf1_addr9]),
        .IN_VALID(en_mult1), 
        .OUT_DATA_BITS(out_mult1_m9), 
        .OUT_VALID(mult1_m9_done)
    );
    
    // m1_lay1
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L1_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L2)) lay1_m10
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult1_m10), 
        .IN2_BITS(a_buf1_bits), 
        .BIAS(b_buf1[b_buf1_addr10]),
        .IN_VALID(en_mult1), 
        .OUT_DATA_BITS(out_mult1_m10), 
        .OUT_VALID(mult1_m10_done)
    );
    
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L1_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L2)) lay1_m11
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult1_m11), 
        .IN2_BITS(a_buf1_bits), 
        .BIAS(b_buf1[b_buf1_addr11]),
        .IN_VALID(en_mult1), 
        .OUT_DATA_BITS(out_mult1_m11), 
        .OUT_VALID(mult1_m11_done)
    );
    
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L1_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L2)) lay1_m12
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult1_m12), 
        .IN2_BITS(a_buf1_bits), 
        .BIAS(b_buf1[b_buf1_addr12]),
        .IN_VALID(en_mult1), 
        .OUT_DATA_BITS(out_mult1_m12), 
        .OUT_VALID(mult1_m12_done)
    );
    
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L1_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L2)) lay1_m13
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult1_m13), 
        .IN2_BITS(a_buf1_bits), 
        .BIAS(b_buf1[b_buf1_addr13]),
        .IN_VALID(en_mult1), 
        .OUT_DATA_BITS(out_mult1_m13), 
        .OUT_VALID(mult1_m13_done)
    );
    
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L1_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L2)) lay1_m14
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult1_m14), 
        .IN2_BITS(a_buf1_bits), 
        .BIAS(b_buf1[b_buf1_addr14]),
        .IN_VALID(en_mult1), 
        .OUT_DATA_BITS(out_mult1_m14), 
        .OUT_VALID(mult1_m14_done)
    );
    
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L1_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L2)) lay1_m15
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult1_m15), 
        .IN2_BITS(a_buf1_bits), 
        .BIAS(b_buf1[b_buf1_addr15]),
        .IN_VALID(en_mult1), 
        .OUT_DATA_BITS(out_mult1_m15), 
        .OUT_VALID(mult1_m15_done)
    );
    
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L1_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L2)) lay1_m16
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult1_m16), 
        .IN2_BITS(a_buf1_bits), 
        .BIAS(b_buf1[b_buf1_addr16]),
        .IN_VALID(en_mult1), 
        .OUT_DATA_BITS(out_mult1_m16), 
        .OUT_VALID(mult1_m16_done)
    );
    
    // relu
//    (*dont_touch="true"*)(*keep="true"*)
    RelU # (.DATA_WIDTH(DATA_WIDTH), .NUM_OF_INPUTS(L2_Neuron_No)) r1
    (
        .clk(clk),
        .rstn(rstn),
        .IN_VALID(en_relu),
        .IN_BITS(in_relu_bits),
        .OUT_BITS(out_relu_bits),
        .OUT_VALID(relu_done)
    );
    
    // lay2_m1
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L2_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L3)) lay2_m1
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult2_m1), 
        .IN2_BITS(a_buf2_bits), 
        .BIAS(b_buf2[b_buf2_addr1]),
        .IN_VALID(en_mult2), 
        .OUT_DATA_BITS(out_mult2_m1), 
        .OUT_VALID(mult2_m1_done)
    );
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L2_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L3)) lay2_m2
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult2_m2), 
        .IN2_BITS(a_buf2_bits), 
        .BIAS(b_buf2[b_buf2_addr2]),
        .IN_VALID(en_mult2), 
        .OUT_DATA_BITS(out_mult2_m2), 
        .OUT_VALID(mult2_m2_done)
    );
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L2_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L3)) lay2_m3
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult2_m3), 
        .IN2_BITS(a_buf2_bits), 
        .BIAS(b_buf2[b_buf2_addr3]),
        .IN_VALID(en_mult2), 
        .OUT_DATA_BITS(out_mult2_m3), 
        .OUT_VALID(mult2_m3_done)
    );
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L2_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L3)) lay2_m4
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult2_m4), 
        .IN2_BITS(a_buf2_bits), 
        .BIAS(b_buf2[b_buf2_addr4]),
        .IN_VALID(en_mult2), 
        .OUT_DATA_BITS(out_mult2_m4), 
        .OUT_VALID(mult2_m4_done)
    );
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L2_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L3)) lay2_m5
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult2_m5), 
        .IN2_BITS(a_buf2_bits), 
        .BIAS(b_buf2[b_buf2_addr5]),
        .IN_VALID(en_mult2), 
        .OUT_DATA_BITS(out_mult2_m5), 
        .OUT_VALID(mult2_m5_done)
    );
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L2_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L3)) lay2_m6
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult2_m6), 
        .IN2_BITS(a_buf2_bits), 
        .BIAS(b_buf2[b_buf2_addr6]),
        .IN_VALID(en_mult2), 
        .OUT_DATA_BITS(out_mult2_m6), 
        .OUT_VALID(mult2_m6_done)
    );
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L2_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L3)) lay2_m7
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult2_m7), 
        .IN2_BITS(a_buf2_bits), 
        .BIAS(b_buf2[b_buf2_addr7]),
        .IN_VALID(en_mult2), 
        .OUT_DATA_BITS(out_mult2_m7), 
        .OUT_VALID(mult2_m7_done)
    );
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L2_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L3)) lay2_m8
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult2_m8), 
        .IN2_BITS(a_buf2_bits), 
        .BIAS(b_buf2[b_buf2_addr8]),
        .IN_VALID(en_mult2), 
        .OUT_DATA_BITS(out_mult2_m8), 
        .OUT_VALID(mult2_m8_done)
    );
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L2_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L3)) lay2_m9
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult2_m9), 
        .IN2_BITS(a_buf2_bits), 
        .BIAS(b_buf2[b_buf2_addr9]),
        .IN_VALID(en_mult2), 
        .OUT_DATA_BITS(out_mult2_m9), 
        .OUT_VALID(mult2_m9_done)
    );
//    (*dont_touch="true"*)(*keep="true"*)
    VecMult # (.DATA_WIDTH(DATA_WIDTH), .VECTOR_SZ(L2_Neuron_No), .LOG_VEC_SZ(NUM_OF_EXT_BITS_L3)) lay2_m10
    (
        .clk(clk), 
        .rstn(rstn), 
        .IN1_BITS(w_in_mult2_m10), 
        .IN2_BITS(a_buf2_bits), 
        .BIAS(b_buf2[b_buf2_addr10]),
        .IN_VALID(en_mult2), 
        .OUT_DATA_BITS(out_mult2_m10), 
        .OUT_VALID(mult2_m10_done)
    );
    
    // S1
//    (*dont_touch="true"*)(*keep="true"*)
    Sigmoid # (.DATA_WIDTH(DATA_WIDTH), .LUT_WIDTH(LUT_WIDTH), .NUM_OF_INPUTS(L3_Neuron_No)) s1
    (
        .clk(clk),
        .rstn(rstn),
        .DATA(in_sig_bits),
        .DVALID(en_sigm),
        .OUTPUT(out_sig_bits), 
        .OUT_VALID(sigm_done)
    );
    
    
endmodule
