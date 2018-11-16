`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:29:26 03/09/2018
// Design Name:   score
// Module Name:   C:/Users/152/Desktop/MazeGame/score_test.v
// Project Name:  MazeGame
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: score
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module score_test;

	// Inputs
	reg move;
	reg win;
	reg rst;
	reg clk;

	// Outputs
	wire [3:0] anode;
	wire [7:0] cathode;

	// Instantiate the Unit Under Test (UUT)
	score uut (
		.move(move), 
		.win(win), 
		.rst(rst), 
		.anode(anode), 
		.cathode(cathode), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		move = 0;
		win = 0;
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

