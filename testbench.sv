module testbench_week1();

// Half clock cycle at 50 MHz
// This is the amount of time represented by #1
timeunit 10ns;
timeprecision 1ns;

   // Internal variables
	logic Clk, Reset, Run, Continue;
	logic [15:0] SW;
	logic [15:0] LED;
	logic [7:0] hex_seg,hex_segB;
    logic [3:0] hex_grid,hex_gridB;
	// logic CE, UB, LB, OE, WE;
	// logic [19:0] ADDR;
	// wire [15:0] Data;
	
	// initialize the toplevel entity
	slc3_testtop test(.*);
	
	//	connect variables to signals
	//
	// In order to make this testbench work correctly, 
	//     make sure those names match what appear in your own design.
   // Feel free to use your own naming for the above variables or modules,
	//     as long as the four signals are correctly linked to those in your design.
   // Just do not change the variable names (PC, MAR, MDR and IR) because
   //     those are for the convenience of grading.	
	//
	// Note that my_slc is the instantiation name of the slc3 module in the toplevel
	// d0 is the instantiation name of the datapath module in the slc3 module
	// MAR_reg is the instantiation name of the MAR in the datapath module
   // MDR_reg is the instantiation name of the MDR in the datapath module
	// IR_reg is the instantiation name of the IR in the datapath module
   // data_out is the the variable name of output for each register instantiation	
	// always begin
	// #1
	// PC = test.my_slc.d0.PC;
	// MAR = test.my_slc.d0.MAR_reg.Dout;
	// MDR = test.my_slc.d0.MDR_reg.Dout;
	// IR = test.my_slc.d0.IR_reg.Dout;	
	// end
	
	// set clock rule
   always begin : CLOCK_GENERATION 
		#1 Clk = ~Clk;
   end
   
      always begin : CLOCK_GENERATIO
		#5 Continue = ~Continue;
   end

	// initialize clock signal 
	initial begin: CLOCK_INITIALIZATION 
		Clk = 0;
		Continue = 0;
   end
	
	// begin testing
	initial begin: TEST_VECTORS
	// give a dummy number for switch (3 here) and run
	    SW = 16'h0003;
		Reset = 1;
		#2 Reset = 0;
		#2 Run = 1;
		#10
		Run = 0;
	//#10 Reset = 1;
	
	// run again to see if fetch automatically halts
	//#10 Continue = 0;
//	#5 Continue = 1;
//	#5 Continue = 0;
	

	end
	 
endmodule
