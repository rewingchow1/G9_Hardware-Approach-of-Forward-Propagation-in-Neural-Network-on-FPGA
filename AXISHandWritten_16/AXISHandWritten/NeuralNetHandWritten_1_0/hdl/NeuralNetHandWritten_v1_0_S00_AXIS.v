
`timescale 1 ns / 1 ps

	module NeuralNetHandWritten_v1_0_S00_AXIS #
	(
		// Users to add parameters here
        parameter L1_Neuron_No = 784,
                    DATA_WIDTH = 16,
		// User parameters ends
		// Do not modify the parameters beyond this line

		// AXI4Stream sink: Data Width
		parameter integer C_S_AXIS_TDATA_WIDTH	= 32
	)
	(
		// Users to add ports here
        output wire OUT_VALID,
		output wire [L1_Neuron_No*DATA_WIDTH-1 : 0] OUT,
		// User ports ends
		// Do not modify the ports beyond this line

		// AXI4Stream sink: Clock
		input wire  S_AXIS_ACLK,
		// AXI4Stream sink: Reset
		input wire  S_AXIS_ARESETN,
		// Ready to accept data in
		output wire  S_AXIS_TREADY,
		// Data in
		input wire [C_S_AXIS_TDATA_WIDTH-1 : 0] S_AXIS_TDATA,
		// Byte qualifier
		input wire [(C_S_AXIS_TDATA_WIDTH/8)-1 : 0] S_AXIS_TSTRB,
		// Indicates boundary of last packet
		input wire  S_AXIS_TLAST,
		// Data is in valid
		input wire  S_AXIS_TVALID
	);
	// function called clogb2 that returns an integer which has the 
	// value of the ceiling of the log base 2.
	function integer clogb2 (input integer bit_depth);
	  begin
	    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
	      bit_depth = bit_depth >> 1;
	  end
	endfunction

	// Total number of input data.
	localparam NUMBER_OF_INPUT_WORDS  = 784/2;
	// bit_num gives the minimum number of bits needed to address 'NUMBER_OF_INPUT_WORDS' size of FIFO.
	localparam bit_num  = clogb2(NUMBER_OF_INPUT_WORDS);     
	// Define the states of state machine
	// The control state machine oversees the writing of input streaming data to the FIFO,
	// and outputs the streaming data from the FIFO
	localparam [1:0] IDLE = 1'b0,        // This is the initial/idle state 

	                WRITE_FIFO  = 1'b1; // In this state FIFO is written with the
	                                    // input stream data S_AXIS_TDATA 
	(* keep = "true" *)
	wire axis_tready;
	// State variable
	(* keep = "true" *) 
	reg mst_exec_state;  
	// FIFO implementation signals
	genvar byte_index;     
	// FIFO write enable
	(* keep = "true" *)
	wire fifo_wren;
	// FIFO full flag
//	(* keep = "true" *) 
	reg fifo_full_flag;
	// FIFO write pointer
	(* keep = "true" *) 
	reg [bit_num-1:0] write_pointer;
	// sink has accepted all the streaming data and stored in FIFO
	(* keep = "true" *) 
	reg writes_done;
	// I/O Connections assignments
	(* keep = "true" *) 
	reg  [C_S_AXIS_TDATA_WIDTH-1:0] stream_data_fifo [0 : NUMBER_OF_INPUT_WORDS-1];
	(* keep = "true" *) 
	reg out_valid;

	assign S_AXIS_TREADY	= axis_tready;
	// Control state machine implementation
	always @(posedge S_AXIS_ACLK) 
	begin  
	  if (!S_AXIS_ARESETN) 
	  // Synchronous reset (active low)
	    begin
	      mst_exec_state <= IDLE;
	    end  
	  else
	    case (mst_exec_state)
	      IDLE: 
	        // The sink starts accepting tdata when 
	        // there tvalid is asserted to mark the
	        // presence of valid streaming data 
	          if (S_AXIS_TVALID)
	            begin
	              mst_exec_state <= WRITE_FIFO;
	            end
	          else
	            begin
	              mst_exec_state <= IDLE;
	            end
	      WRITE_FIFO: 
	        // When the sink has accepted all the streaming input data,
	        // the interface swiches functionality to a streaming master
	        if (writes_done)
	          begin
	            mst_exec_state <= IDLE;
	          end
	        else
	          begin
	            // The sink accepts and stores tdata 
	            // into FIFO
	            mst_exec_state <= WRITE_FIFO;
	          end

	    endcase
	end
	// AXI Streaming Sink 
	// 
	// The example design sink is always ready to accept the S_AXIS_TDATA  until
	// the FIFO is not filled with NUMBER_OF_INPUT_WORDS number of input words.
	assign axis_tready = ((mst_exec_state == WRITE_FIFO) && (write_pointer <= NUMBER_OF_INPUT_WORDS-1));

	always@(posedge S_AXIS_ACLK)
	begin
	   if (writes_done)
	       writes_done <= 0;
	
	  if(!S_AXIS_ARESETN)
	    begin
	      write_pointer <= 0;
	      writes_done <= 1'b0;
	    end  
	  else begin
	    if (write_pointer <= NUMBER_OF_INPUT_WORDS-1) begin
	        if (fifo_wren)  begin
                    // write pointer is incremented after every write to the FIFO
                    // when FIFO write signal is enabled.
                    write_pointer <= write_pointer + 1;
                    writes_done <= 1'b0;
	          
                  if ((write_pointer == NUMBER_OF_INPUT_WORDS-1)|| S_AXIS_TLAST) begin
                      // reads_done is asserted when NUMBER_OF_INPUT_WORDS numbers of streaming data 
                      // has been written to the FIFO which is also marked by S_AXIS_TLAST(kept for optional usage).
                      writes_done <= 1'b1;
                      write_pointer <= 0;
                    end
	          end
	      end  
	      else begin
	           write_pointer <= 0;
	           writes_done <= 1'b0;
	      end
	   end 
	end

	// FIFO write enable generation
	assign fifo_wren = S_AXIS_TVALID && axis_tready;

	// FIFO Implementation

    // Streaming input data is stored in FIFO
    always @( posedge S_AXIS_ACLK )
    begin
      if (fifo_wren)// && S_AXIS_TSTRB[byte_index])
        begin
          stream_data_fifo[write_pointer] <= S_AXIS_TDATA;
        end  
    end  

	// Add user logic here
	
    // out_valid
    always@(posedge S_AXIS_ACLK) begin
       if (!S_AXIS_ARESETN)
           out_valid <= 0;
            
       else if (writes_done) 
           out_valid <= 1'b1;
	       
	   else if (out_valid)
	       out_valid <= 0;
	   
	   else 
	       out_valid <= out_valid;
	end
	
	genvar i;
	generate
	   for (i = 0; i<NUMBER_OF_INPUT_WORDS; i = i+1) begin
	       assign OUT[(i*C_S_AXIS_TDATA_WIDTH+C_S_AXIS_TDATA_WIDTH-1) -: C_S_AXIS_TDATA_WIDTH] = stream_data_fifo[i];
	   end
	endgenerate
	
	assign OUT_VALID = out_valid;

	endmodule
