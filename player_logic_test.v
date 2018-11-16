`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:26:20 03/05/2018
// Design Name:   player_logic
// Module Name:   C:/Users/TEMP.CS152A-01.000/Desktop/MazeGame/player_logic_test.v
// Project Name:  MazeGame
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: player_logic
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module player_logic_test;

	// Inputs
	reg [7:0] player_pos_in;
	reg [99:0] maze;
	reg btnU;
	reg btnD;
	reg btnR;
	reg btnL;
	reg clk;

	// Outputs
	wire [7:0] player_pos_out;

	// Instantiate the Unit Under Test (UUT)
	player_logic uut (
		.player_pos_in(player_pos_in), 
		.maze(maze), 
		.player_pos_out(player_pos_out), 
		.btnU(btnU), 
		.btnD(btnD), 
		.btnR(btnR), 
		.btnL(btnL), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		player_pos_in = 0;
		maze = 0;
		btnU = 0;
		btnD = 0;
		btnR = 0;
		btnL = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

