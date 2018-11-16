`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:25:58 02/28/2018
// Design Name:   display
// Module Name:   C:/Users/TEMP.CS152A-01.000/Desktop/MazeGame/display_test.v
// Project Name:  MazeGame
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: display
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module display_test;

	// Inputs
	reg clk;
	reg [7:0] player_pos;
	reg reset;

	// Outputs
	wire vga_h_sync;
	wire vga_v_sync;
	wire [2:0] vga_r;
	wire [2:0] vga_g;
	wire [1:0] vga_b;

	// Instantiate the Unit Under Test (UUT)
	display uut (
		.clk(clk), 
//		.maze(maze), 
		.player_pos(player_pos), 
		.reset(reset), 
		.vga_h_sync(vga_h_sync), 
		.vga_v_sync(vga_v_sync), 
		.vga_r(vga_r), 
		.vga_g(vga_g), 
		.vga_b(vga_b)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		player_pos = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   always #5 clk = ~clk;
endmodule

