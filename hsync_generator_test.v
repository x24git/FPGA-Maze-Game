`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:14:23 02/26/2018
// Design Name:   hvsync_generator
// Module Name:   C:/Users/TEMP.CS152A-01.000/Desktop/Lab4/MazeGame/hsync_generator_test.v
// Project Name:  MazeGame
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hvsync_generator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hsync_generator_test;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire vga_h_sync;
	wire vga_v_sync;
	wire inDisplayArea;
	wire [9:0] CounterX;
	wire [9:0] CounterY;

	// Instantiate the Unit Under Test (UUT)
	hvsync_generator uut (
		.clk(clk), 
		.reset(reset), 
		.vga_h_sync(vga_h_sync), 
		.vga_v_sync(vga_v_sync), 
		.inDisplayArea(inDisplayArea), 
		.CounterX(CounterX), 
		.CounterY(CounterY)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #5 clk = ~clk;
      
endmodule

