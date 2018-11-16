`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:10:37 03/09/2018
// Design Name:   maze_selector
// Module Name:   C:/Users/152/Desktop/MazeGame/maze_selector_test.v
// Project Name:  MazeGame
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: maze_selector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module maze_selector_test;

	// Inputs
	reg [7:0] sel;
	reg send;

	// Outputs
	wire [399:0] maze;
	wire [0:0] player_start;
	wire [0:0] player_end;

	// Instantiate the Unit Under Test (UUT)
	maze_selector select (
		.sel(sel), 
		.send(send), 
		.maze(maze), 
		.player_start(player_start), 
		.player_end(player_end)
	);

	initial begin
		// Initialize Inputs
		sel = 8'b00000000;
		send = 0;
		#20 send = 1;
		#21 send = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#50 begin
		send = 1;
		sel = 8'b00000001;
		end
		#51 send = 0;
      
        
		// Add stimulus here

	end

endmodule

