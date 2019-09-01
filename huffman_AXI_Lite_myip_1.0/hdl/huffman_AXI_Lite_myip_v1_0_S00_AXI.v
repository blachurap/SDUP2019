
`timescale 1 ns / 1 ps

	module huffman_AXI_Lite_myip_v1_0_S00_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY
	);

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 1;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 4
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;
	wire	 slv_reg_rden;
	wire	 slv_reg_wren;
	reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	integer	 byte_index;
	reg	 aw_en;

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	        else if (S_AXI_BREADY && axi_bvalid)
	            begin
	              aw_en <= 1'b1;
	              axi_awready <= 1'b0;
	            end
	      else           
	        begin
	          axi_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      slv_reg0 <= 0;
	      slv_reg1 <= 0;
//	      slv_reg2 <= 0;
//	      slv_reg3 <= 0;
	    end 
	  else begin
	    if (slv_reg_wren)
	      begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	          2'h0:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 0
	                slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          2'h1:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 1
	                slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          2'h2:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 2
//	                slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          2'h3:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 3
//	                slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          default : begin
	                      slv_reg0 <= slv_reg0;
	                      slv_reg1 <= slv_reg1;
//	                      slv_reg2 <= slv_reg2;
//	                      slv_reg3 <= slv_reg3;
	                    end
	        endcase
	      end
	  end
	end    

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	        2'h0   : reg_data_out <= slv_reg0;
	        2'h1   : reg_data_out <= slv_reg1;
	        2'h2   : reg_data_out <= slv_reg2;
	        2'h3   : reg_data_out <= slv_reg3;
	        default : reg_data_out <= 0;
	      endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    

	// Add user logic here
    wire ARESET;
    assign ARESET = ~S_AXI_ARESETN;
    
    wire [C_S_AXI_DATA_WIDTH-1:0]   slv_wire2;
    wire [C_S_AXI_DATA_WIDTH-1:0]   slv_wire3;
    always @(posedge S_AXI_ACLK)
    begin
        slv_reg2 <= slv_wire2;
        slv_reg3 <= slv_wire3;
    end
    
    //Assign zeros to unused bits
    assign slv_wire2[31:2] = 30'b0;
    assign slv_wire3[31:16] = 16'b0;
    
    huffman_encoder huffman_encoder_inst(
                            S_AXI_ACLK,
                            ARESET,
                            slv_reg1[7:0],      //data_in
                            slv_reg0[0],        //enable
                            slv_reg0[1],        //in_enable
                            slv_wire2[0],       //in_ready
                            slv_wire2[1],       //out_valid
                            slv_wire3[15:0]     //data_out
                            );
	// User logic ends

	endmodule
//////////////////////////////////////////////////////////////////////////////////
    /*********************************************************************************
    *   huffman_encoder.v
    *   ModuÂ3 enkodera Huffmana korzystajÂ1cy ze statycznego drzewa kodowego
    *
    *   ver. 0.1
    *   Tested: no
    **/
    //////////////////////////////////////////////////////////////////////////////////
    
    
    module huffman_encoder(
       
        input clk,
        input rst,
        input [7:0] data_in,
        input enable, in_enable,
        output reg in_ready,
        output reg out_valid,
        output reg [15:0] data_out);
        /* signals */ 
        reg[16:0] data_out1,data_out2,data_out3,data_out4,data_out5;
        reg[4:0] codelength;
        /*used for data shifting */
        reg[5:0] cl_sum, cl_sum_prev;
        reg[33:0] cl_sum_shift,mult_out, mult_out2, mult_out3;
        reg[6:0] counter64;
        reg[5:0] counter32;
        reg cl_sum_rdy;
        reg full_flag1,half_flag1,half_flag2,full_flag2,half_flag3,full_flag3;
        reg full_flag4,half_flag4,full_flag5,full_flag6,half_flag5,half_flag6;
        reg full_flag7,full_flag8,half_flag7,half_flag8;
        
        reg[15:0] upper_reg1,middle_reg1,lower_reg1;
        reg[15:0] upper_reg2, middle_reg2, middle_reg3;
            
        
    /***************************************
        *   codelength.v
        *   D?ugo?ci poszczegolnych s?ów dla s?ownika 
        **/
         parameter length_0    = 5'd5; 
         parameter length_1    = 5'd5; 
         parameter length_2    = 5'd5; 
         parameter length_3    = 5'd5; 
         parameter length_4    = 5'd5; 
         parameter length_5    = 5'd5; 
         parameter length_6    = 5'd5; 
         parameter length_7    = 5'd5; 
         parameter length_8    = 5'd5; 
         parameter length_9    = 5'd5; 
         parameter length_10   = 5'd5; 
         parameter length_11   = 5'd6; 
         parameter length_12   = 5'd6; 
         parameter length_13   = 5'd6; 
         parameter length_14   = 5'd6; 
         parameter length_15   = 5'd6; 
         parameter length_16   = 5'd6; 
         parameter length_17   = 5'd6; 
         parameter length_18   = 5'd6; 
         parameter length_19   = 5'd6; 
         parameter length_20   = 5'd6; 
         parameter length_21   = 5'd6; 
         parameter length_22   = 5'd6; 
         parameter length_23   = 5'd6; 
         parameter length_24   = 5'd6; 
         parameter length_25   = 5'd6; 
         parameter length_26   = 5'd6; 
         parameter length_27   = 5'd6; 
         parameter length_28   = 5'd6; 
         parameter length_29   = 5'd6; 
         parameter length_30   = 5'd6; 
         parameter length_31   = 5'd6; 
         parameter length_32   = 5'd7; 
         parameter length_33   = 5'd7; 
         parameter length_34   = 5'd7; 
         parameter length_35   = 5'd7; 
         parameter length_36   = 5'd7; 
         parameter length_37   = 5'd7; 
         parameter length_38   = 5'd7; 
         parameter length_39   = 5'd7; 
         parameter length_40   = 5'd7; 
         parameter length_41   = 5'd7; 
         parameter length_42   = 5'd7; 
         parameter length_43   = 5'd7; 
         parameter length_44   = 5'd7; 
         parameter length_45   = 5'd7; 
         parameter length_46   = 5'd7; 
         parameter length_47   = 5'd7; 
         parameter length_48   = 5'd7; 
         parameter length_49   = 5'd7; 
         parameter length_50   = 5'd7; 
         parameter length_51   = 5'd7; 
         parameter length_52   = 5'd7; 
         parameter length_53   = 5'd8; 
         parameter length_54   = 5'd8; 
         parameter length_55   = 5'd8; 
         parameter length_56   = 5'd8; 
         parameter length_57   = 5'd8; 
         parameter length_58   = 5'd8; 
         parameter length_59   = 5'd8; 
         parameter length_60   = 5'd8; 
         parameter length_61   = 5'd8; 
         parameter length_62   = 5'd8; 
         parameter length_63   = 5'd8; 
         parameter length_64   = 5'd8; 
         parameter length_65   = 5'd8; 
         parameter length_66   = 5'd8; 
         parameter length_67   = 5'd8; 
         parameter length_68   = 5'd8; 
         parameter length_69   = 5'd8; 
         parameter length_70   = 5'd8; 
         parameter length_71   = 5'd8; 
         parameter length_72   = 5'd8; 
         parameter length_73   = 5'd8; 
         parameter length_74   = 5'd9; 
         parameter length_75   = 5'd9; 
         parameter length_76   = 5'd9; 
         parameter length_77   = 5'd9; 
         parameter length_78   = 5'd9; 
         parameter length_79   = 5'd9; 
         parameter length_80   = 5'd9; 
         parameter length_81   = 5'd9; 
         parameter length_82   = 5'd9; 
         parameter length_83   = 5'd9; 
         parameter length_84   = 5'd9; 
         parameter length_85   = 5'd9; 
         parameter length_86   = 5'd9; 
         parameter length_87   = 5'd9; 
         parameter length_88   = 5'd9; 
         parameter length_89   = 5'd9; 
         parameter length_90   = 5'd9; 
         parameter length_91   = 5'd9; 
         parameter length_92   = 5'd9; 
         parameter length_93   = 5'd9; 
         parameter length_94   = 5'd9; 
         parameter length_95   = 5'd10; 
         parameter length_96   = 5'd10; 
         parameter length_97   = 5'd10; 
         parameter length_98   = 5'd10; 
         parameter length_99   = 5'd10; 
         parameter length_100  = 5'd10; 
         parameter length_101  = 5'd10; 
         parameter length_102  = 5'd10; 
         parameter length_103  = 5'd10; 
         parameter length_104  = 5'd10; 
         parameter length_105  = 5'd10; 
         parameter length_106  = 5'd10; 
         parameter length_107  = 5'd10; 
         parameter length_108  = 5'd10; 
         parameter length_109  = 5'd10; 
         parameter length_110  = 5'd10; 
         parameter length_111  = 5'd10; 
         parameter length_112  = 5'd10; 
         parameter length_113  = 5'd10; 
         parameter length_114  = 5'd10; 
         parameter length_115  = 5'd10; 
         parameter length_116  = 5'd11; 
         parameter length_117  = 5'd11; 
         parameter length_118  = 5'd11; 
         parameter length_119  = 5'd11; 
         parameter length_120  = 5'd11; 
         parameter length_121  = 5'd11; 
         parameter length_122  = 5'd11; 
         parameter length_123  = 5'd11; 
         parameter length_124  = 5'd11; 
         parameter length_125  = 5'd11; 
         parameter length_126  = 5'd11; 
         parameter length_127  = 5'd11; 
         parameter length_128  = 5'd11; 
         parameter length_129  = 5'd11; 
         parameter length_130  = 5'd11; 
         parameter length_131  = 5'd11; 
         parameter length_132  = 5'd11; 
         parameter length_133  = 5'd11; 
         parameter length_134  = 5'd11; 
         parameter length_135  = 5'd11; 
         parameter length_136  = 5'd11; 
         parameter length_137  = 5'd11; 
         parameter length_138  = 5'd12; 
         parameter length_139  = 5'd12; 
         parameter length_140  = 5'd12; 
         parameter length_141  = 5'd12; 
         parameter length_142  = 5'd12; 
         parameter length_143  = 5'd12; 
         parameter length_144  = 5'd12; 
         parameter length_145  = 5'd12; 
         parameter length_146  = 5'd12; 
         parameter length_147  = 5'd12; 
         parameter length_148  = 5'd12; 
         parameter length_149  = 5'd12; 
         parameter length_150  = 5'd12; 
         parameter length_151  = 5'd12; 
         parameter length_152  = 5'd12; 
         parameter length_153  = 5'd12; 
         parameter length_154  = 5'd12; 
         parameter length_155  = 5'd12; 
         parameter length_156  = 5'd12; 
         parameter length_157  = 5'd12; 
         parameter length_158  = 5'd13; 
         parameter length_159  = 5'd13; 
         parameter length_160  = 5'd13; 
         parameter length_161  = 5'd13; 
         parameter length_162  = 5'd13; 
         parameter length_163  = 5'd13; 
         parameter length_164  = 5'd13; 
         parameter length_165  = 5'd13; 
         parameter length_166  = 5'd13; 
         parameter length_167  = 5'd13; 
         parameter length_168  = 5'd13; 
         parameter length_169  = 5'd13; 
         parameter length_170  = 5'd13; 
         parameter length_171  = 5'd13; 
         parameter length_172  = 5'd13; 
         parameter length_173  = 5'd13; 
         parameter length_174  = 5'd13; 
         parameter length_175  = 5'd13; 
         parameter length_176  = 5'd13; 
         parameter length_177  = 5'd13; 
         parameter length_178  = 5'd13; 
         parameter length_179  = 5'd14; 
         parameter length_180  = 5'd14; 
         parameter length_181  = 5'd14; 
         parameter length_182  = 5'd14; 
         parameter length_183  = 5'd14; 
         parameter length_184  = 5'd14; 
         parameter length_185  = 5'd14; 
         parameter length_186  = 5'd14; 
         parameter length_187  = 5'd14; 
         parameter length_188  = 5'd14; 
         parameter length_189  = 5'd14; 
         parameter length_190  = 5'd14; 
         parameter length_191  = 5'd14; 
         parameter length_192  = 5'd14; 
         parameter length_193  = 5'd14; 
         parameter length_194  = 5'd14; 
         parameter length_195  = 5'd14; 
         parameter length_196  = 5'd14; 
         parameter length_197  = 5'd14; 
         parameter length_198  = 5'd14; 
         parameter length_199  = 5'd14; 
         parameter length_200  = 5'd15; 
         parameter length_201  = 5'd15; 
         parameter length_202  = 5'd15; 
         parameter length_203  = 5'd15; 
         parameter length_204  = 5'd15; 
         parameter length_205  = 5'd15; 
         parameter length_206  = 5'd15; 
         parameter length_207  = 5'd15; 
         parameter length_208  = 5'd15; 
         parameter length_209  = 5'd15; 
         parameter length_210  = 5'd15; 
         parameter length_211  = 5'd15; 
         parameter length_212  = 5'd15; 
         parameter length_213  = 5'd15; 
         parameter length_214  = 5'd15; 
         parameter length_215  = 5'd15; 
         parameter length_216  = 5'd15; 
         parameter length_217  = 5'd15; 
         parameter length_218  = 5'd15; 
         parameter length_219  = 5'd15; 
         parameter length_220  = 5'd16; 
         parameter length_221  = 5'd16; 
         parameter length_222  = 5'd16; 
         parameter length_223  = 5'd16; 
         parameter length_224  = 5'd16; 
         parameter length_225  = 5'd16; 
         parameter length_226  = 5'd16; 
         parameter length_227  = 5'd16; 
         parameter length_228  = 5'd16; 
         parameter length_229  = 5'd16; 
         parameter length_230  = 5'd16; 
         parameter length_231  = 5'd16; 
         parameter length_232  = 5'd16; 
         parameter length_233  = 5'd16; 
         parameter length_234  = 5'd16; 
         parameter length_235  = 5'd16; 
         parameter length_236  = 5'd16; 
         parameter length_237  = 5'd16; 
         parameter length_238  = 5'd16; 
         parameter length_239  = 5'd16; 
         parameter length_240  = 5'd17; 
         parameter length_241  = 5'd17; 
         parameter length_242  = 5'd17; 
         parameter length_243  = 5'd17; 
         parameter length_244  = 5'd17; 
         parameter length_245  = 5'd17; 
         parameter length_246  = 5'd17; 
         parameter length_247  = 5'd17; 
         parameter length_248  = 5'd17; 
         parameter length_249  = 5'd17; 
         parameter length_250  = 5'd17; 
         parameter length_251  = 5'd17; 
         parameter length_252  = 5'd17; 
         parameter length_253  = 5'd17; 
         parameter length_254  = 5'd17; 
        parameter length_255 = 5'd17; 
        
    /***************************************
        *   param2.v
        *   Drzewo kodowe Huffmana dla wybranego rozk?adu, 0 najwieksze prawdopodobie?stwo, 255 najmniejsze
        **/
         parameter symb_0  = 5'b 01010;
         parameter symb_1  = 5'b 01100;
         parameter symb_2  = 5'b 01110;
         parameter symb_3  = 5'b 10000;
         parameter symb_4  = 5'b 10010;
         parameter symb_5  = 5'b 10100;
         parameter symb_6  = 5'b 10110;
         parameter symb_7  = 5'b 11000;
         parameter symb_8  = 5'b 11010;
         parameter symb_9  = 5'b 11100;
         parameter symb_10  = 5'b 11110;
         parameter symb_11  = 6'b 000000;
         parameter symb_12  = 6'b 000010;
         parameter symb_13  = 6'b 000100;
         parameter symb_14  = 6'b 000110;
         parameter symb_15  = 6'b 001000;
         parameter symb_16  = 6'b 001010;
         parameter symb_17  = 6'b 001100;
         parameter symb_18  = 6'b 001110;
         parameter symb_19  = 6'b 010000;
         parameter symb_20  = 6'b 010010;
         parameter symb_21  = 6'b 010110;
         parameter symb_22  = 6'b 011010;
         parameter symb_23  = 6'b 011110;
         parameter symb_24  = 6'b 100010;
         parameter symb_25  = 6'b 100110;
         parameter symb_26  = 6'b 101010;
         parameter symb_27  = 6'b 101110;
         parameter symb_28  = 6'b 110010;
         parameter symb_29  = 6'b 110110;
         parameter symb_30  = 6'b 111010;
         parameter symb_31  = 6'b 111110;
         parameter symb_32  = 7'b 0000010;
         parameter symb_33  = 7'b 0000110;
         parameter symb_34  = 7'b 0001010;
         parameter symb_35  = 7'b 0001110;
         parameter symb_36  = 7'b 0010010;
         parameter symb_37  = 7'b 0010110;
         parameter symb_38  = 7'b 0011010;
         parameter symb_39  = 7'b 0011110;
         parameter symb_40  = 7'b 0100010;
         parameter symb_41  = 7'b 0100110;
         parameter symb_42  = 7'b 0101110;
         parameter symb_43  = 7'b 0110110;
         parameter symb_44  = 7'b 0111110;
         parameter symb_45  = 7'b 1000110;
         parameter symb_46  = 7'b 1001110;
         parameter symb_47  = 7'b 1010110;
         parameter symb_48  = 7'b 1011110;
         parameter symb_49  = 7'b 1100110;
         parameter symb_50  = 7'b 1101110;
         parameter symb_51  = 7'b 1110110;
         parameter symb_52  = 7'b 1111110;
         parameter symb_53  = 8'b 00000110;
         parameter symb_54  = 8'b 00001110;
         parameter symb_55  = 8'b 00010110;
         parameter symb_56  = 8'b 00011110;
         parameter symb_57  = 8'b 00100110;
         parameter symb_58  = 8'b 00101110;
         parameter symb_59  = 8'b 00110110;
         parameter symb_60  = 8'b 00111110;
         parameter symb_61  = 8'b 01000110;
         parameter symb_62  = 8'b 01001110;
         parameter symb_63  = 8'b 01011110;
         parameter symb_64  = 8'b 01101110;
         parameter symb_65  = 8'b 01111110;
         parameter symb_66  = 8'b 10001110;
         parameter symb_67  = 8'b 10011110;
         parameter symb_68  = 8'b 10101110;
         parameter symb_69  = 8'b 10111110;
         parameter symb_70  = 8'b 11001110;
         parameter symb_71  = 8'b 11011110;
         parameter symb_72  = 8'b 11101110;
         parameter symb_73  = 8'b 11111110;
         parameter symb_74  = 9'b 000001110;
         parameter symb_75  = 9'b 000011110;
         parameter symb_76  = 9'b 000101110;
         parameter symb_77  = 9'b 000111110;
         parameter symb_78  = 9'b 001001110;
         parameter symb_79  = 9'b 001011110;
         parameter symb_80  = 9'b 001101110;
         parameter symb_81  = 9'b 001111110;
         parameter symb_82  = 9'b 010001110;
         parameter symb_83  = 9'b 010011110;
         parameter symb_84  = 9'b 010111110;
         parameter symb_85  = 9'b 011011110;
         parameter symb_86  = 9'b 011111110;
         parameter symb_87  = 9'b 100011110;
         parameter symb_88  = 9'b 100111110;
         parameter symb_89  = 9'b 101011110;
         parameter symb_90  = 9'b 101111110;
         parameter symb_91  = 9'b 110011110;
         parameter symb_92  = 9'b 110111110;
         parameter symb_93  = 9'b 111011110;
         parameter symb_94  = 9'b 111111110;
         parameter symb_95  = 10'b 0000011110;
         parameter symb_96  = 10'b 0000111110;
         parameter symb_97  = 10'b 0001011110;
         parameter symb_98  = 10'b 0001111110;
         parameter symb_99  = 10'b 0010011110;
         parameter symb_100  = 10'b 0010111110;
         parameter symb_101  = 10'b 0011011110;
         parameter symb_102  = 10'b 0011111110;
         parameter symb_103  = 10'b 0100011110;
         parameter symb_104  = 10'b 0100111110;
         parameter symb_105  = 10'b 0101111110;
         parameter symb_106  = 10'b 0110111110;
         parameter symb_107  = 10'b 0111111110;
         parameter symb_108  = 10'b 1000111110;
         parameter symb_109  = 10'b 1001111110;
         parameter symb_110  = 10'b 1010111110;
         parameter symb_111  = 10'b 1011111110;
         parameter symb_112  = 10'b 1100111110;
         parameter symb_113  = 10'b 1101111110;
         parameter symb_114  = 10'b 1110111110;
         parameter symb_115  = 10'b 1111111110;
         parameter symb_116  = 11'b 00000111110;
         parameter symb_117  = 11'b 00001111110;
         parameter symb_118  = 11'b 00010111110;
         parameter symb_119  = 11'b 00011111110;
         parameter symb_120  = 11'b 00100111110;
         parameter symb_121  = 11'b 00101111110;
         parameter symb_122  = 11'b 00110111110;
         parameter symb_123  = 11'b 00111111110;
         parameter symb_124  = 11'b 01000111110;
         parameter symb_125  = 11'b 01001111110;
         parameter symb_126  = 11'b 01011111110;
         parameter symb_127  = 11'b 01101111110;
         parameter symb_128  = 11'b 01101111111;
         parameter symb_129  = 11'b 01111111111;
         parameter symb_130  = 11'b 10001111111;
         parameter symb_131  = 11'b 10011111111;
         parameter symb_132  = 11'b 10101111111;
         parameter symb_133  = 11'b 10111111111;
         parameter symb_134  = 11'b 11001111111;
         parameter symb_135  = 11'b 11011111111;
         parameter symb_136  = 11'b 11101111111;
         parameter symb_137  = 11'b 11111111111;
         parameter symb_138  = 12'b 000001111111;
         parameter symb_139  = 12'b 000011111111;
         parameter symb_140  = 12'b 000101111111;
         parameter symb_141  = 12'b 000111111111;
         parameter symb_142  = 12'b 001001111111;
         parameter symb_143  = 12'b 001011111111;
         parameter symb_144  = 12'b 001101111111;
         parameter symb_145  = 12'b 001111111111;
         parameter symb_146  = 12'b 010001111111;
         parameter symb_147  = 12'b 010011111111;
         parameter symb_148  = 12'b 010111111111;
         parameter symb_149  = 12'b 011111111101;
         parameter symb_150  = 12'b 100011111101;
         parameter symb_151  = 12'b 100111111101;
         parameter symb_152  = 12'b 101011111101;
         parameter symb_153  = 12'b 101111111101;
         parameter symb_154  = 12'b 110011111101;
         parameter symb_155  = 12'b 110111111101;
         parameter symb_156  = 12'b 111011111101;
         parameter symb_157  = 12'b 111111111100;
         parameter symb_158  = 13'b 0000011111100;
         parameter symb_159  = 13'b 0000111111100;
         parameter symb_160  = 13'b 0001011111100;
         parameter symb_161  = 13'b 0001111111100;
         parameter symb_162  = 13'b 0010011111100;
         parameter symb_163  = 13'b 0010111111100;
         parameter symb_164  = 13'b 0011011111100;
         parameter symb_165  = 13'b 0011111111100;
         parameter symb_166  = 13'b 0100011111100;
         parameter symb_167  = 13'b 0100111111100;
         parameter symb_168  = 13'b 0101111111100;
         parameter symb_169  = 13'b 0111111111000;
         parameter symb_170  = 13'b 1000111111000;
         parameter symb_171  = 13'b 1001111111000;
         parameter symb_172  = 13'b 1010111111000;
         parameter symb_173  = 13'b 1010111111001;
         parameter symb_174  = 13'b 1011111111001;
         parameter symb_175  = 13'b 1100111111001;
         parameter symb_176  = 13'b 1101111111001;
         parameter symb_177  = 13'b 1110111111001;
         parameter symb_178  = 13'b 1111111111011;
         parameter symb_179  = 14'b 00000111111011;
         parameter symb_180  = 14'b 00001111111011;
         parameter symb_181  = 14'b 00010111111010;
         parameter symb_182  = 14'b 00011111111010;
         parameter symb_183  = 14'b 00100111111010;
         parameter symb_184  = 14'b 00101111111010;
         parameter symb_185  = 14'b 00110111111010;
         parameter symb_186  = 14'b 00111111111010;
         parameter symb_187  = 14'b 01000111111010;
         parameter symb_188  = 14'b 01001111111010;
         parameter symb_189  = 14'b 01001111111011;
         parameter symb_190  = 14'b 01011111111011;
         parameter symb_191  = 14'b 01111111110011;
         parameter symb_192  = 14'b 10001111110011;
         parameter symb_193  = 14'b 10011111110011;
         parameter symb_194  = 14'b 10111111110001;
         parameter symb_195  = 14'b 11001111110000;
         parameter symb_196  = 14'b 11011111110000;
         parameter symb_197  = 14'b 11101111110000;
         parameter symb_198  = 14'b 11111111110100;
         parameter symb_199  = 14'b 11111111110101;
         parameter symb_200  = 15'b 000001111110101;
         parameter symb_201  = 15'b 000011111110101;
         parameter symb_202  = 15'b 000101111110111;
         parameter symb_203  = 15'b 000111111110110;
         parameter symb_204  = 15'b 001001111110110;
         parameter symb_205  = 15'b 001011111110110;
         parameter symb_206  = 15'b 001101111110110;
         parameter symb_207  = 15'b 001101111110111;
         parameter symb_208  = 15'b 001111111110111;
         parameter symb_209  = 15'b 010001111110111;
         parameter symb_210  = 15'b 010111111110101;
         parameter symb_211  = 15'b 011111111100100;
         parameter symb_212  = 15'b 100011111100100;
         parameter symb_213  = 15'b 100111111100100;
         parameter symb_214  = 15'b 101111111100000;
         parameter symb_215  = 15'b 101111111100001;
         parameter symb_216  = 15'b 110011111100011;
         parameter symb_217  = 15'b 110111111100010;
         parameter symb_218  = 15'b 111011111100010;
         parameter symb_219  = 15'b 111011111100011;
         parameter symb_220  = 16'b 0000011111101001;
         parameter symb_221  = 16'b 0000111111101000;
         parameter symb_222  = 16'b 0001011111101100;
         parameter symb_223  = 16'b 0001011111101101;
         parameter symb_224  = 16'b 0001111111101111;
         parameter symb_225  = 16'b 0010011111101110;
         parameter symb_226  = 16'b 0010111111101110;
         parameter symb_227  = 16'b 0010111111101111;
         parameter symb_228  = 16'b 0011111111101101;
         parameter symb_229  = 16'b 0100011111101100;
         parameter symb_230  = 16'b 0101111111101000;
         parameter symb_231  = 16'b 0101111111101001;
         parameter symb_232  = 16'b 0111111111001011;
         parameter symb_233  = 16'b 1000111111001010;
         parameter symb_234  = 16'b 1001111111001010;
         parameter symb_235  = 16'b 1001111111001011;
         parameter symb_236  = 16'b 1100111111000100;
         parameter symb_237  = 16'b 1100111111000101;
         parameter symb_238  = 16'b 1101111111000110;
         parameter symb_239  = 16'b 1101111111000111;
         parameter symb_240  = 17'b 00000111111010000;
         parameter symb_241  = 17'b 00000111111010001;
         parameter symb_242  = 17'b 00001111111010010;
         parameter symb_243  = 17'b 00001111111010011;
         parameter symb_244  = 17'b 00011111111011100;
         parameter symb_245  = 17'b 00011111111011101;
         parameter symb_246  = 17'b 00100111111011110;
         parameter symb_247  = 17'b 00100111111011111;
         parameter symb_248  = 17'b 00111111111011000;
         parameter symb_249  = 17'b 00111111111011001;
         parameter symb_250  = 17'b 01000111111011010;
         parameter symb_251  = 17'b 01000111111011011;
         parameter symb_252  = 17'b 01111111110010100;
         parameter symb_253  = 17'b 01111111110010101;
         parameter symb_254  = 17'b 10001111110010110;
         parameter symb_255  = 17'b 10001111110010111;
    
         
        /*****************************************************************************/ 
    
        always @(posedge clk) begin
        
                if(rst)
                    begin
                     data_out1 <= 8'd0; 
                     codelength <= 5'd0;
                    end    
                else if(in_enable && enable)
                begin
                    case(data_in)
                        8'd0  : begin  data_out1 <= symb_0  ; codelength <= length_0  ; end
                        8'd1  : begin  data_out1 <= symb_1  ; codelength <= length_1  ; end 
                        8'd2  : begin  data_out1 <= symb_2  ; codelength <= length_2  ; end 
                        8'd3  : begin  data_out1 <= symb_3  ; codelength <= length_3  ; end 
                        8'd4  : begin  data_out1 <= symb_4  ; codelength <= length_4  ; end 
                        8'd5  : begin  data_out1 <= symb_5  ; codelength <= length_5  ; end 
                        8'd6  : begin  data_out1 <= symb_6  ; codelength <= length_6  ; end 
                        8'd7  : begin  data_out1 <= symb_7  ; codelength <= length_7  ; end 
                        8'd8  : begin  data_out1 <= symb_8  ; codelength <= length_8  ; end 
                        8'd9  : begin  data_out1 <= symb_9  ; codelength <= length_9  ; end 
                        8'd10 : begin  data_out1 <= symb_10 ; codelength <= length_10 ; end 
                        8'd11 : begin  data_out1 <= symb_11 ; codelength <= length_11 ; end 
                        8'd12 : begin  data_out1 <= symb_12 ; codelength <= length_12 ; end 
                        8'd13 : begin  data_out1 <= symb_13 ; codelength <= length_13 ; end 
                        8'd14 : begin  data_out1 <= symb_14 ; codelength <= length_14 ; end 
                        8'd15 : begin  data_out1 <= symb_15 ; codelength <= length_15 ; end 
                        8'd16 : begin  data_out1 <= symb_16 ; codelength <= length_16 ; end 
                        8'd17 : begin  data_out1 <= symb_17 ; codelength <= length_17 ; end 
                        8'd18 : begin  data_out1 <= symb_18 ; codelength <= length_18 ; end 
                        8'd19 : begin  data_out1 <= symb_19 ; codelength <= length_19 ; end 
                        8'd20 : begin  data_out1 <= symb_20 ; codelength <= length_20 ; end 
                        8'd21 : begin  data_out1 <= symb_21 ; codelength <= length_21 ; end 
                        8'd22 : begin  data_out1 <= symb_22 ; codelength <= length_22 ; end 
                        8'd23 : begin  data_out1 <= symb_23 ; codelength <= length_23 ; end 
                        8'd24 : begin  data_out1 <= symb_24 ; codelength <= length_24 ; end 
                        8'd25 : begin  data_out1 <= symb_25 ; codelength <= length_25 ; end 
                        8'd26 : begin  data_out1 <= symb_26 ; codelength <= length_26 ; end 
                        8'd27 : begin  data_out1 <= symb_27 ; codelength <= length_27 ; end 
                        8'd28 : begin  data_out1 <= symb_28 ; codelength <= length_28 ; end 
                        8'd29 : begin  data_out1 <= symb_29 ; codelength <= length_29 ; end 
                        8'd30 : begin  data_out1 <= symb_30 ; codelength <= length_30 ; end 
                        8'd31 : begin  data_out1 <= symb_31 ; codelength <= length_31 ; end 
                        8'd32 : begin  data_out1 <= symb_32 ; codelength <= length_32 ; end 
                        8'd33 : begin  data_out1 <= symb_33 ; codelength <= length_33 ; end 
                        8'd34 : begin  data_out1 <= symb_34 ; codelength <= length_34 ; end 
                        8'd35 : begin  data_out1 <= symb_35 ; codelength <= length_35 ; end 
                        8'd36 : begin  data_out1 <= symb_36 ; codelength <= length_36 ; end 
                        8'd37 : begin  data_out1 <= symb_37 ; codelength <= length_37 ; end 
                        8'd38 : begin  data_out1 <= symb_38 ; codelength <= length_38 ; end 
                        8'd39 : begin  data_out1 <= symb_39 ; codelength <= length_39 ; end 
                        8'd40 : begin  data_out1 <= symb_40 ; codelength <= length_40 ; end 
                        8'd41 : begin  data_out1 <= symb_41 ; codelength <= length_41 ; end 
                        8'd42 : begin  data_out1 <= symb_42 ; codelength <= length_42 ; end 
                        8'd43 : begin  data_out1 <= symb_43 ; codelength <= length_43 ; end 
                        8'd44 : begin  data_out1 <= symb_44 ; codelength <= length_44 ; end 
                        8'd45 : begin  data_out1 <= symb_45 ; codelength <= length_45 ; end 
                        8'd46 : begin  data_out1 <= symb_46 ; codelength <= length_46 ; end 
                        8'd47 : begin  data_out1 <= symb_47 ; codelength <= length_47 ; end 
                        8'd48 : begin  data_out1 <= symb_48 ; codelength <= length_48 ; end 
                        8'd49 : begin  data_out1 <= symb_49 ; codelength <= length_49 ; end 
                        8'd50 : begin  data_out1 <= symb_50 ; codelength <= length_50 ; end 
                        8'd51 : begin  data_out1 <= symb_51 ; codelength <= length_51 ; end 
                        8'd52 : begin  data_out1 <= symb_52 ; codelength <= length_52 ; end 
                        8'd53 : begin  data_out1 <= symb_53 ; codelength <= length_53 ; end 
                        8'd54 : begin  data_out1 <= symb_54 ; codelength <= length_54 ; end 
                        8'd55 : begin  data_out1 <= symb_55 ; codelength <= length_55 ; end 
                        8'd56 : begin  data_out1 <= symb_56 ; codelength <= length_56 ; end 
                        8'd57 : begin  data_out1 <= symb_57 ; codelength <= length_57 ; end 
                        8'd58 : begin  data_out1 <= symb_58 ; codelength <= length_58 ; end 
                        8'd59 : begin  data_out1 <= symb_59 ; codelength <= length_59 ; end 
                        8'd60 : begin  data_out1 <= symb_60 ; codelength <= length_60 ; end 
                        8'd61 : begin  data_out1 <= symb_61 ; codelength <= length_61 ; end 
                        8'd62 : begin  data_out1 <= symb_62 ; codelength <= length_62 ; end 
                        8'd63 : begin  data_out1 <= symb_63 ; codelength <= length_63 ; end 
                        8'd64 : begin  data_out1 <= symb_64 ; codelength <= length_64 ; end 
                        8'd65 : begin  data_out1 <= symb_65 ; codelength <= length_65 ; end 
                        8'd66 : begin  data_out1 <= symb_66 ; codelength <= length_66 ; end 
                        8'd67 : begin  data_out1 <= symb_67 ; codelength <= length_67 ; end 
                        8'd68 : begin  data_out1 <= symb_68 ; codelength <= length_68 ; end 
                        8'd69 : begin  data_out1 <= symb_69 ; codelength <= length_69 ; end 
                        8'd70 : begin  data_out1 <= symb_70 ; codelength <= length_70 ; end 
                        8'd71 : begin  data_out1 <= symb_71 ; codelength <= length_71 ; end 
                        8'd72 : begin  data_out1 <= symb_72 ; codelength <= length_72 ; end 
                        8'd73 : begin  data_out1 <= symb_73 ; codelength <= length_73 ; end 
                        8'd74 : begin  data_out1 <= symb_74 ; codelength <= length_74 ; end 
                        8'd75 : begin  data_out1 <= symb_75 ; codelength <= length_75 ; end 
                        8'd76 : begin  data_out1 <= symb_76 ; codelength <= length_76 ; end 
                        8'd77 : begin  data_out1 <= symb_77 ; codelength <= length_77 ; end 
                        8'd78 : begin  data_out1 <= symb_78 ; codelength <= length_78 ; end 
                        8'd79 : begin  data_out1 <= symb_79 ; codelength <= length_79 ; end 
                        8'd80 : begin  data_out1 <= symb_80 ; codelength <= length_80 ; end 
                        8'd81 : begin  data_out1 <= symb_81 ; codelength <= length_81 ; end 
                        8'd82 : begin  data_out1 <= symb_82 ; codelength <= length_82 ; end 
                        8'd83 : begin  data_out1 <= symb_83 ; codelength <= length_83 ; end 
                        8'd84 : begin  data_out1 <= symb_84 ; codelength <= length_84 ; end 
                        8'd85 : begin  data_out1 <= symb_85 ; codelength <= length_85 ; end 
                        8'd86 : begin  data_out1 <= symb_86 ; codelength <= length_86 ; end 
                        8'd87 : begin  data_out1 <= symb_87 ; codelength <= length_87 ; end 
                        8'd88 : begin  data_out1 <= symb_88 ; codelength <= length_88 ; end 
                        8'd89 : begin  data_out1 <= symb_89 ; codelength <= length_89 ; end 
                        8'd90 : begin  data_out1 <= symb_90 ; codelength <= length_90 ; end 
                        8'd91 : begin  data_out1 <= symb_91 ; codelength <= length_91 ; end 
                        8'd92 : begin  data_out1 <= symb_92 ; codelength <= length_92 ; end 
                        8'd93 : begin  data_out1 <= symb_93 ; codelength <= length_93 ; end 
                        8'd94 : begin  data_out1 <= symb_94 ; codelength <= length_94 ; end 
                        8'd95 : begin  data_out1 <= symb_95 ; codelength <= length_95 ; end 
                        8'd96 : begin  data_out1 <= symb_96 ; codelength <= length_96 ; end 
                        8'd97 : begin  data_out1 <= symb_97 ; codelength <= length_97 ; end 
                        8'd98 : begin  data_out1 <= symb_98 ; codelength <= length_98 ; end 
                        8'd99 : begin  data_out1 <= symb_99 ; codelength <= length_99 ; end 
                        8'd100: begin  data_out1 <= symb_100; codelength <= length_100; end 
                        8'd101: begin  data_out1 <= symb_101; codelength <= length_101; end 
                        8'd102: begin  data_out1 <= symb_102; codelength <= length_102; end 
                        8'd103: begin  data_out1 <= symb_103; codelength <= length_103; end 
                        8'd104: begin  data_out1 <= symb_104; codelength <= length_104; end 
                        8'd105: begin  data_out1 <= symb_105; codelength <= length_105; end 
                        8'd106: begin  data_out1 <= symb_106; codelength <= length_106; end 
                        8'd107: begin  data_out1 <= symb_107; codelength <= length_107; end 
                        8'd108: begin  data_out1 <= symb_108; codelength <= length_108; end 
                        8'd109: begin  data_out1 <= symb_109; codelength <= length_109; end 
                        8'd110: begin  data_out1 <= symb_110; codelength <= length_110; end 
                        8'd111: begin  data_out1 <= symb_111; codelength <= length_111; end 
                        8'd112: begin  data_out1 <= symb_112; codelength <= length_112; end 
                        8'd113: begin  data_out1 <= symb_113; codelength <= length_113; end 
                        8'd114: begin  data_out1 <= symb_114; codelength <= length_114; end 
                        8'd115: begin  data_out1 <= symb_115; codelength <= length_115; end 
                        8'd116: begin  data_out1 <= symb_116; codelength <= length_116; end 
                        8'd117: begin  data_out1 <= symb_117; codelength <= length_117; end 
                        8'd118: begin  data_out1 <= symb_118; codelength <= length_118; end 
                        8'd119: begin  data_out1 <= symb_119; codelength <= length_119; end 
                        8'd120: begin  data_out1 <= symb_120; codelength <= length_120; end 
                        8'd121: begin  data_out1 <= symb_121; codelength <= length_121; end 
                        8'd122: begin  data_out1 <= symb_122; codelength <= length_122; end 
                        8'd123: begin  data_out1 <= symb_123; codelength <= length_123; end 
                        8'd124: begin  data_out1 <= symb_124; codelength <= length_124; end 
                        8'd125: begin  data_out1 <= symb_125; codelength <= length_125; end 
                        8'd126: begin  data_out1 <= symb_126; codelength <= length_126; end 
                        8'd127: begin  data_out1 <= symb_127; codelength <= length_127; end 
                        8'd128: begin  data_out1 <= symb_128; codelength <= length_128; end 
                        8'd129: begin  data_out1 <= symb_129; codelength <= length_129; end 
                        8'd130: begin  data_out1 <= symb_130; codelength <= length_130; end 
                        8'd131: begin  data_out1 <= symb_131; codelength <= length_131; end 
                        8'd132: begin  data_out1 <= symb_132; codelength <= length_132; end 
                        8'd133: begin  data_out1 <= symb_133; codelength <= length_133; end 
                        8'd134: begin  data_out1 <= symb_134; codelength <= length_134; end 
                        8'd135: begin  data_out1 <= symb_135; codelength <= length_135; end 
                        8'd136: begin  data_out1 <= symb_136; codelength <= length_136; end 
                        8'd137: begin  data_out1 <= symb_137; codelength <= length_137; end 
                        8'd138: begin  data_out1 <= symb_138; codelength <= length_138; end 
                        8'd139: begin  data_out1 <= symb_139; codelength <= length_139; end 
                        8'd140: begin  data_out1 <= symb_140; codelength <= length_140; end 
                        8'd141: begin  data_out1 <= symb_141; codelength <= length_141; end 
                        8'd142: begin  data_out1 <= symb_142; codelength <= length_142; end 
                        8'd143: begin  data_out1 <= symb_143; codelength <= length_143; end 
                        8'd144: begin  data_out1 <= symb_144; codelength <= length_144; end 
                        8'd145: begin  data_out1 <= symb_145; codelength <= length_145; end 
                        8'd146: begin  data_out1 <= symb_146; codelength <= length_146; end 
                        8'd147: begin  data_out1 <= symb_147; codelength <= length_147; end 
                        8'd148: begin  data_out1 <= symb_148; codelength <= length_148; end 
                        8'd149: begin  data_out1 <= symb_149; codelength <= length_149; end 
                        8'd150: begin  data_out1 <= symb_150; codelength <= length_150; end 
                        8'd151: begin  data_out1 <= symb_151; codelength <= length_151; end 
                        8'd152: begin  data_out1 <= symb_152; codelength <= length_152; end 
                        8'd153: begin  data_out1 <= symb_153; codelength <= length_153; end 
                        8'd154: begin  data_out1 <= symb_154; codelength <= length_154; end 
                        8'd155: begin  data_out1 <= symb_155; codelength <= length_155; end 
                        8'd156: begin  data_out1 <= symb_156; codelength <= length_156; end 
                        8'd157: begin  data_out1 <= symb_157; codelength <= length_157; end 
                        8'd158: begin  data_out1 <= symb_158; codelength <= length_158; end 
                        8'd159: begin  data_out1 <= symb_159; codelength <= length_159; end 
                        8'd160: begin  data_out1 <= symb_160; codelength <= length_160; end 
                        8'd161: begin  data_out1 <= symb_161; codelength <= length_161; end 
                        8'd162: begin  data_out1 <= symb_162; codelength <= length_162; end 
                        8'd163: begin  data_out1 <= symb_163; codelength <= length_163; end 
                        8'd164: begin  data_out1 <= symb_164; codelength <= length_164; end 
                        8'd165: begin  data_out1 <= symb_165; codelength <= length_165; end 
                        8'd166: begin  data_out1 <= symb_166; codelength <= length_166; end 
                        8'd167: begin  data_out1 <= symb_167; codelength <= length_167; end 
                        8'd168: begin  data_out1 <= symb_168; codelength <= length_168; end 
                        8'd169: begin  data_out1 <= symb_169; codelength <= length_169; end 
                        8'd170: begin  data_out1 <= symb_170; codelength <= length_170; end 
                        8'd171: begin  data_out1 <= symb_171; codelength <= length_171; end 
                        8'd172: begin  data_out1 <= symb_172; codelength <= length_172; end 
                        8'd173: begin  data_out1 <= symb_173; codelength <= length_173; end 
                        8'd174: begin  data_out1 <= symb_174; codelength <= length_174; end 
                        8'd175: begin  data_out1 <= symb_175; codelength <= length_175; end 
                        8'd176: begin  data_out1 <= symb_176; codelength <= length_176; end 
                        8'd177: begin  data_out1 <= symb_177; codelength <= length_177; end 
                        8'd178: begin  data_out1 <= symb_178; codelength <= length_178; end 
                        8'd179: begin  data_out1 <= symb_179; codelength <= length_179; end 
                        8'd180: begin  data_out1 <= symb_180; codelength <= length_180; end 
                        8'd181: begin  data_out1 <= symb_181; codelength <= length_181; end 
                        8'd182: begin  data_out1 <= symb_182; codelength <= length_182; end 
                        8'd183: begin  data_out1 <= symb_183; codelength <= length_183; end 
                        8'd184: begin  data_out1 <= symb_184; codelength <= length_184; end 
                        8'd185: begin  data_out1 <= symb_185; codelength <= length_185; end 
                        8'd186: begin  data_out1 <= symb_186; codelength <= length_186; end 
                        8'd187: begin  data_out1 <= symb_187; codelength <= length_187; end 
                        8'd188: begin  data_out1 <= symb_188; codelength <= length_188; end 
                        8'd189: begin  data_out1 <= symb_189; codelength <= length_189; end 
                        8'd190: begin  data_out1 <= symb_190; codelength <= length_190; end 
                        8'd191: begin  data_out1 <= symb_191; codelength <= length_191; end 
                        8'd192: begin  data_out1 <= symb_192; codelength <= length_192; end 
                        8'd193: begin  data_out1 <= symb_193; codelength <= length_193; end 
                        8'd194: begin  data_out1 <= symb_194; codelength <= length_194; end 
                        8'd195: begin  data_out1 <= symb_195; codelength <= length_195; end 
                        8'd196: begin  data_out1 <= symb_196; codelength <= length_196; end 
                        8'd197: begin  data_out1 <= symb_197; codelength <= length_197; end 
                        8'd198: begin  data_out1 <= symb_198; codelength <= length_198; end 
                        8'd199: begin  data_out1 <= symb_199; codelength <= length_199; end 
                        8'd200: begin  data_out1 <= symb_200; codelength <= length_200; end 
                        8'd201: begin  data_out1 <= symb_201; codelength <= length_201; end 
                        8'd202: begin  data_out1 <= symb_202; codelength <= length_202; end 
                        8'd203: begin  data_out1 <= symb_203; codelength <= length_203; end 
                        8'd204: begin  data_out1 <= symb_204; codelength <= length_204; end 
                        8'd205: begin  data_out1 <= symb_205; codelength <= length_205; end 
                        8'd206: begin  data_out1 <= symb_206; codelength <= length_206; end 
                        8'd207: begin  data_out1 <= symb_207; codelength <= length_207; end 
                        8'd208: begin  data_out1 <= symb_208; codelength <= length_208; end 
                        8'd209: begin  data_out1 <= symb_209; codelength <= length_209; end 
                        8'd210: begin  data_out1 <= symb_210; codelength <= length_210; end 
                        8'd211: begin  data_out1 <= symb_211; codelength <= length_211; end 
                        8'd212: begin  data_out1 <= symb_212; codelength <= length_212; end 
                        8'd213: begin  data_out1 <= symb_213; codelength <= length_213; end 
                        8'd214: begin  data_out1 <= symb_214; codelength <= length_214; end 
                        8'd215: begin  data_out1 <= symb_215; codelength <= length_215; end 
                        8'd216: begin  data_out1 <= symb_216; codelength <= length_216; end 
                        8'd217: begin  data_out1 <= symb_217; codelength <= length_217; end 
                        8'd218: begin  data_out1 <= symb_218; codelength <= length_218; end 
                        8'd219: begin  data_out1 <= symb_219; codelength <= length_219; end 
                        8'd220: begin  data_out1 <= symb_220; codelength <= length_220; end 
                        8'd221: begin  data_out1 <= symb_221; codelength <= length_221; end 
                        8'd222: begin  data_out1 <= symb_222; codelength <= length_222; end 
                        8'd223: begin  data_out1 <= symb_223; codelength <= length_223; end 
                        8'd224: begin  data_out1 <= symb_224; codelength <= length_224; end 
                        8'd225: begin  data_out1 <= symb_225; codelength <= length_225; end 
                        8'd226: begin  data_out1 <= symb_226; codelength <= length_226; end 
                        8'd227: begin  data_out1 <= symb_227; codelength <= length_227; end
                        8'd228: begin  data_out1 <= symb_228; codelength <= length_228; end 
                        8'd229: begin  data_out1 <= symb_229; codelength <= length_229; end 
                        8'd230: begin  data_out1 <= symb_230; codelength <= length_230; end 
                        8'd231: begin  data_out1 <= symb_231; codelength <= length_231; end 
                        8'd232: begin  data_out1 <= symb_232; codelength <= length_232; end 
                        8'd233: begin  data_out1 <= symb_233; codelength <= length_233; end 
                        8'd234: begin  data_out1 <= symb_234; codelength <= length_234; end 
                        8'd235: begin  data_out1 <= symb_235; codelength <= length_235; end 
                        8'd236: begin  data_out1 <= symb_236; codelength <= length_236; end 
                        8'd237: begin  data_out1 <= symb_237; codelength <= length_237; end 
                        8'd238: begin  data_out1 <= symb_238; codelength <= length_238; end 
                        8'd239: begin  data_out1 <= symb_239; codelength <= length_239; end 
                        8'd240: begin  data_out1 <= symb_240; codelength <= length_240; end 
                        8'd241: begin  data_out1 <= symb_241; codelength <= length_241; end 
                        8'd242: begin  data_out1 <= symb_242; codelength <= length_242; end 
                        8'd243: begin  data_out1 <= symb_243; codelength <= length_243; end
                        8'd244: begin  data_out1 <= symb_244; codelength <= length_244; end 
                        8'd245: begin  data_out1 <= symb_245; codelength <= length_245; end 
                        8'd246: begin  data_out1 <= symb_246; codelength <= length_246; end 
                        8'd247: begin  data_out1 <= symb_247; codelength <= length_247; end 
                        8'd248: begin  data_out1 <= symb_248; codelength <= length_248; end 
                        8'd249: begin  data_out1 <= symb_249; codelength <= length_249; end 
                        8'd250: begin  data_out1 <= symb_250; codelength <= length_250; end 
                        8'd251: begin  data_out1 <= symb_251; codelength <= length_251; end 
                        8'd252: begin  data_out1 <= symb_252; codelength <= length_252; end 
                        8'd253: begin  data_out1 <= symb_253; codelength <= length_253; end 
                        8'd254: begin  data_out1 <= symb_254; codelength <= length_254; end 
                        8'd255: begin  data_out1 <= symb_255; codelength <= length_255; end 
                    
                        default: begin  data_out1 <= 8'd0; codelength <= 5'd0; end
                    
                    endcase
                    
                end
               
            end
    /**************************************************************************************************/
    /*pipelining*/
                  always @ (posedge clk ) 
                 begin 
                  if (rst) 
                     begin 
                    data_out2   <= 18'b0; 
                    data_out3   <= 18'b0;
                    data_out4   <= 18'b0;
                    data_out5   <= 18'b0;
                    end 
                else  
                    begin      
                       data_out2 <= data_out1;
                       data_out3 <= data_out2; 
                       data_out4 <= data_out3;
                       data_out5 <= data_out4; 
                    end 
                 end 
    /*****************************************************************************/ 
    /* The maximum length of the huffman code can be 17 bits . The minimum  length 
    of the vlc code is 5 bits. . After  finding the huffman code for a particular
    input, the code is shifted into a barrel shifter. 
     
    Every time there are 16 bits in the barrel shifter, the contends of the shifter is 
    enabled out as the huffman_out signal. Each  value is read in and the corresponding  
    code is found out. The codelengths are added up (cl_sum) and when it reaches 16 or 32,  
    the code is sent out.  
     
    The maximum  value for cl_sum happens when a 17 bit code is followed by a 17 bit 
    code. So the max. value for cl_sum is 17*2 = 34. The barrel shifter has 34 valid 
    registers. For ease of coding, 48 (3 * 16) registers are used. These registers are 
    divided into upper_reg, middle_reg and lower_reg. Each time upper_reg if full (ie.,  
    16 or more bits in barrel shifter), the contends are sent out. The remaining bits 
    , if any, in the middle_reg are moved up to the upper_reg. If the barrel shifter  
    has 32 or more valid data, the upper and middle registers are full and the upper 
    reg data is sent out followed by the middle reg data. The remaining bits, if any  
    in the lower register is moved up to the upper register.*/ 
     
    /*****************************************************************************/ 
    /* calculate sum of codelength. set half flag and full flag . Half flags indicates 
    that the upper_reg is full and full flag indicates that the lower register is full. 
    cl_sum_prev gives the sum of the codelengths which is used to set the flags. cl_sum 
    is used to find out the number of shifts to be done in the barrel shifts.*/ 
        always @ (posedge clk) 
         begin 
        if (rst) 
           begin 
           cl_sum <= 6'd34; 
           cl_sum_prev <= 6'd0; 
           half_flag1 <= 1'b0;
           full_flag1 <= 1'b0; 
           end 
             else if ( cl_sum_rdy == 1'b1) 
              begin 
                  if (cl_sum_prev < 6'd16) 
                    begin  
                    cl_sum_prev <= codelength + cl_sum_prev; 
                    cl_sum <= (6'd34 - cl_sum_prev); 
                    half_flag1 <= 1'b0;
                    full_flag1 <= 1'b0; 
                     end 
              else if (cl_sum_prev <= 6'd32 && cl_sum_prev >= 6'd16) 
                    begin  
                    cl_sum_prev <= codelength + (cl_sum_prev - 5'b10000); 
                    cl_sum <= (6'd34 - cl_sum_prev); 
                    half_flag1 <= 1'b1;
                    full_flag1 <= 1'b0; 
                     end 
              else if (cl_sum_prev >= 6'd32) 
                    begin  
                    cl_sum_prev <= codelength + (cl_sum_prev - 6'b100000); 
                    cl_sum <= (6'd34 - cl_sum_prev); 
                    half_flag1 <= 1'b1;
                    full_flag1 <= 1'b1; 
                    end 
           end 
       end 
    /*****************************************************************************/ 
     
    /* barrel shifting done using multiplier. Barrel shifting coefficients are 
    stored in a ROM and selected depending on the value of cl_sum */ 
     
    always @ (posedge clk) 
       begin 
       if (rst) 
           begin 
           cl_sum_shift <= 34'b0;  
           end 
       else  
        begin 
          case (cl_sum) 
           6'd0 : begin cl_sum_shift <=  34'b0000000000000000000000000000000000; end    
           6'd1 : begin cl_sum_shift <=  34'b0000000000000000000000000000000010; end    
           6'd2 : begin cl_sum_shift <=  34'b0000000000000000000000000000000100; end    
           6'd3 : begin cl_sum_shift <=  34'b0000000000000000000000000000001000; end    
           6'd4 : begin cl_sum_shift <=  34'b0000000000000000000000000000010000; end    
           6'd5 : begin cl_sum_shift <=  34'b0000000000000000000000000000100000; end    
           6'd6 : begin cl_sum_shift <=  34'b0000000000000000000000000001000000; end    
           6'd7 : begin cl_sum_shift <=  34'b0000000000000000000000000010000000; end    
           6'd8 : begin cl_sum_shift <=  34'b0000000000000000000000000100000000; end    
           6'd9 : begin cl_sum_shift <=  34'b0000000000000000000000001000000000; end    
           6'd10 : begin cl_sum_shift <= 34'b0000000000000000000000010000000000; end    
           6'd11 : begin cl_sum_shift <= 34'b0000000000000000000000100000000000; end    
           6'd12 : begin cl_sum_shift <= 34'b0000000000000000000001000000000000; end    
           6'd13 : begin cl_sum_shift <= 34'b0000000000000000000010000000000000; end    
           6'd14 : begin cl_sum_shift <= 34'b0000000000000000000100000000000000; end    
           6'd15 : begin cl_sum_shift <= 34'b0000000000000000001000000000000000; end    
           6'd16 : begin cl_sum_shift <= 34'b0000000000000000010000000000000000; end    
           6'd17 : begin cl_sum_shift <= 34'b0000000000000000100000000000000000; end    
           6'd18 : begin cl_sum_shift <= 34'b0000000000000001000000000000000000; end    
           6'd19 : begin cl_sum_shift <= 34'b0000000000000010000000000000000000; end    
           6'd20 : begin cl_sum_shift <= 34'b0000000000000100000000000000000000; end    
           6'd21 : begin cl_sum_shift <= 34'b0000000000001000000000000000000000; end    
           6'd22 : begin cl_sum_shift <= 34'b0000000000010000000000000000000000; end    
           6'd23 : begin cl_sum_shift <= 34'b0000000000100000000000000000000000; end    
           6'd24 : begin cl_sum_shift <= 34'b0000000001000000000000000000000000; end    
           6'd25 : begin cl_sum_shift <= 34'b0000000010000000000000000000000000; end    
           6'd26 : begin cl_sum_shift <= 34'b0000000100000000000000000000000000; end    
           6'd27 : begin cl_sum_shift <= 34'b0000001000000000000000000000000000; end    
           6'd28 : begin cl_sum_shift <= 34'b0000010000000000000000000000000000; end    
           6'd29 : begin cl_sum_shift <= 34'b0000100000000000000000000000000000; end    
           6'd30 : begin cl_sum_shift <= 34'b0001000000000000000000000000000000; end    
           6'd31 : begin cl_sum_shift <= 34'b0010000000000000000000000000000000; end    
           6'd32 : begin cl_sum_shift <= 34'b0100000000000000000000000000000000; end    
           6'd33 : begin cl_sum_shift <= 34'b1000000000000000000000000000000000; end       
         default : begin cl_sum_shift <= 34'b0000000000000000000000000000000000; end   
        endcase 
       end 
    end
    /*****************************************************************************/ 
    
    /* multiplier used to do barrel shifting of codeword. flags pipeleined to match 
    the pipe line stages of upper, middle and lower registers. */ 
     
    always @ (posedge clk) 
       begin 
       if (rst) 
           begin 
           mult_out <= 34'b0; 
           mult_out2 <= 34'b0; 
           mult_out3 <= 34'b0; 
           full_flag2 <= 1'b0; half_flag2 <= 1'b0; 
           full_flag3 <= 1'b0; half_flag3 <= 1'b0; 
           full_flag4 <= 1'b0; half_flag4 <= 1'b0; 
           full_flag5 <= 1'b0; half_flag5 <= 1'b0; 
           full_flag6 <= 1'b0; 
           full_flag7 <= 1'b0; half_flag6 <= 1'b0; 
           full_flag8 <= 1'b0; half_flag7 <= 1'b0; 
           end 
       else if (enable == 1'b1) 
           begin 
             mult_out <= data_out4 * cl_sum_shift; 
             mult_out2 <= mult_out;
             mult_out3 <= mult_out2;
             full_flag2 <= full_flag1; half_flag2 <= half_flag1; 
             full_flag3 <= full_flag2; half_flag3 <= half_flag2; //tyle starczy?
             full_flag4 <= full_flag3; half_flag4 <= half_flag3; 
             full_flag5 <= full_flag4; half_flag5 <= half_flag4; 
             full_flag6 <= full_flag5;  
            full_flag7 <= full_flag6;  half_flag6 <= half_flag5; 
            full_flag8 <= full_flag7;  half_flag7 <= half_flag6; 
           end 
    end 
      
    /*****************************************************************************/ 
    always @ (posedge clk) 
       begin 
       if (rst) 
           begin 
           upper_reg1 <= 16'b0; middle_reg1 <= 16'b0; lower_reg1 <= 16'b0; 
           end 
       else if (enable == 1'b1) 
           begin 
             case({full_flag6, half_flag6}) 
             2'b00: begin  upper_reg1[15:0] <= mult_out3[33:18] | upper_reg1[15:0]; 
                           middle_reg1 <= mult_out3[17:2]; 
                           lower_reg1 <= {mult_out3[1:0],14'b0 }; end 
             2'b01: begin  upper_reg1[15:0] <= mult_out3[33:18] | middle_reg1[15:0]; 
                           middle_reg1 <= mult_out3[17:2]; 
                           lower_reg1 <= {mult_out3[1:0],14'b0}; end 
             2'b11: begin  upper_reg1 <= mult_out3[33:18] | lower_reg1; 
                           middle_reg1 <= mult_out3[17:2]; 
                           lower_reg1 <= {16'b0}; end 
             default:begin upper_reg1 <= upper_reg1; 
                           middle_reg1 <= middle_reg1; 
                           lower_reg1 <= lower_reg1; end 
             endcase 
           end      
       end 
     
    /*****************************************************************************/ 
     
    always @ (posedge clk ) 
       begin 
       if (rst) 
           begin 
           upper_reg2 <= 16'b0; middle_reg2 <= 16'b0;  
           middle_reg3 <= 16'b0;  
           end 
       else if (enable == 1'b1) 
           begin 
              upper_reg2 <= upper_reg1; 
              
              middle_reg2 <= middle_reg1; 
              middle_reg3 <= middle_reg2;  
           end      
       end 
     
    /*****************************************************************************/ 
     
    always @ (posedge clk)
       begin 
       if (rst) 
           begin 
           data_out <= 16'b0;  
           end 
       else if (enable == 1'b1) 
           begin 
           if (half_flag7 == 1'b1) 
               data_out <= upper_reg2; 
           else if (full_flag8 == 1'b1) 
               data_out <= middle_reg3; 
            end 
        end 
     
    /*****************************************************************************/ 
    /* counter that counts upto 64. */ 
     
    always @ (posedge clk ) 
       begin 
       if (rst) 
       begin 
           counter64 <= 7'b1000000;
            
       end 
       else if (enable == 1'b1) 
        begin 
          if (counter64 < 7'b1000000) 
              counter64 <= counter64 + 1; 
         else  
              counter64 <= 7'b0000001;
               
        end 
      end   
     
    /* cl_sum starts after 2 clks from reset. */ 
     
    always @ (posedge clk) 
       begin 
       if (rst) 
           begin 
           cl_sum_rdy <= 1'b0; 
           
           end 
       else  
            begin 
              if (counter64 == 7'b0000010) 
                  cl_sum_rdy <= 1'b1; 
              else  
                  cl_sum_rdy <= cl_sum_rdy; 
              end 
      end  
      /*****************************************************************************/ 
    /* counter that counts upto 64. */ 
     
    always @ (posedge clk ) 
       begin 
       if (rst || enable == 1'b0) 
           begin 
           counter32 <= 6'b000000;
           end 
           else if (enable == 1'b1 && in_enable ==1'b1 ) 
            begin 
              if (counter32 < 6'd13) 
                  counter32 <= counter32 + 1; 
             else  
                  counter32 <= 6'd13;
            end 
            else if (in_enable ==1'b0 ) 
            begin 
              if (counter32 > 6'd0) 
                  counter32 <= counter32 - 1; 
             else  
                  counter32 <= 6'd0; 
            end 
      end    
      
      always @ (posedge clk) 
       begin 
       if (rst) 
           begin 
                out_valid <= 1'b0;
                in_ready <= 1'b0;
           end 
       else 
            begin 
              if (counter32 == 6'd12)  //powinnno to bya 15 taktów od in_enable 
                  out_valid <= 1'b1; 
              else if  (counter32 == 6'b000001)
                  out_valid <= 1'b0;
              else  
                  out_valid <= out_valid;
              if (counter64 == 7'd5)
                in_ready <= 1'b1;
              else if (counter64 == 7'b0000000)
                in_ready <= 1'b0; 
              else
                in_ready <= in_ready;
            end 
      end   
    /*****************************************************************************/ 
    
    endmodule