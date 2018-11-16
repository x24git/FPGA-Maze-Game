`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:13:04 02/26/2018 
// Design Name: 
// Module Name:    Maze 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Maze(clk, sw, BtnC, BtnU, BtnD, BtnL, BtnR, seg, an, vga_r, vga_g, vga_b, vga_h_sync, vga_v_sync
    );
	 
`include "maze_parameters.v"	 
input clk;
input [7:0] sw;
input BtnC, BtnU, BtnD, BtnL, BtnR;


output wire [7:0] seg;
output wire [3:0] an;



output wire [2:0] vga_r;
output wire [2:0] vga_g;
output wire [1:0] vga_b;
output wire vga_h_sync;
output wire vga_v_sync;


	wire board_clk;
	BUF BUF1 (board_clk, clk); 	
	//BUF BUF2 (Reset, Sw0);
	//BUF BUF3 (Start, Sw1);
	
	reg [27:0]	clk_div;
	always @ (posedge board_clk)  
	begin : CLOCK_DIVIDER
			clk_div <= clk_div + 1'b1;
	end	




wire [maze_flat:0] maze;
wire win;
wire rst;
wire move;
reg  [maze_player_dim:0] player_pos;
wire [maze_player_dim:0] player_pos_out;
wire [maze_player_dim:0] player_start;
wire [maze_player_dim:0] player_end;

always @*
player_pos= player_pos_out;

maze_selector select (
		.sel(sw), 
		.send(rst), 
		.maze(maze), 
		.player_start(player_start), 
		.player_end(player_end)
	);

display disp (
		.clk(clk_div), 
		.maze(maze), 
		.player_pos(player_pos), 
		.reset(reset), 
		.vga_h_sync(vga_h_sync), 
		.vga_v_sync(vga_v_sync), 
		.vga_r(vga_r), 
		.vga_g(vga_g), 
		.vga_b(vga_b),
		.player_end(player_end),
		.win(win)
	);
	
player_logic plogic (
		.player_pos_in(player_pos), 
		.maze(maze), 
		.player_pos_out(player_pos_out), 
		.player_start(player_start),
		.player_end(player_end),
		.btnU(BtnU), 
		.btnD(BtnD), 
		.btnR(BtnR), 
		.btnL(BtnL),
		.btnC(BtnC),
		.clk(clk),
		.win(win),
		.rst(rst),
		.move(move)
	);
	
	score score (
		.move(move), 
		.win(win), 
		.rst(rst), 
		.clk(clk),
		.anode(an), 
		.cathode(seg)
		
	);
	
endmodule

