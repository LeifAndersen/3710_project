`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//Queue takes 2 cycles for a read to work.  Apply rd enable, wait 1 cycle, then value is available the cycle after.
////////////////////////////////////////////////////////////////////////////////

module Queue_tb;

	// Inputs
	reg clk;
	reg reset;
	reg we;
	reg re;
	reg [15:0] wrtData;

	// Outputs
	wire [15:0] rdData;
	wire full;
	wire empty;

	// Instantiate the Unit Under Test (UUT)
	Queue uut (
		.clk(clk), 
		.reset(reset), 
		.we(we), 
		.re(re), 
		.wrtData(wrtData), 
		.rdData(rdData), 
		.full(full), 
		.empty(empty)
	);
integer i;

always
begin
#10;
clk = ~clk;
end

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		we = 0;
		re = 0;
		wrtData = 0;

		// Wait 100 ns for global reset to finish
		#110;
		reset = 0;
        
		// Add stimulus here
		for (i = 1; i < 10; i = i + 1)
		begin
		#15;
		if (!empty)
			re = 1;
		we = 1;
		wrtData = i;
		#5;
		end
		
		
		for (i = 0; i < 1048; i = i + 1)
		begin
		#20;
			if (!full)
				begin
					re = 0;
					we = 1;
					wrtData = i;
				end
			else
				begin
					re = 1;
					we = 0;
				end
		end
		
		for (i = 0; i < 1048; i = i + 1)
		begin
		#20;
			if (!empty)
			begin
				re = 1;
				we = 0;
			end
			else
			begin
				re = 0;
				we = 0;
			end
		end
	end
      
endmodule

