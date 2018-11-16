`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:27:52 02/26/2018 
// Design Name: 
// Module Name:    display 
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
module display(clk, maze, player_pos, reset,vga_h_sync,vga_v_sync, vga_r, vga_g, vga_b, player_end, win
    );
`include "maze_parameters.v"
input [27:0] clk;
input [maze_flat:0] maze;
input [maze_player_dim:0] player_pos;
input reset;
output vga_h_sync;
output vga_v_sync;
input [maze_player_dim:0] player_end;
input win;

output reg [2:0] vga_r=0;
output reg [2:0] vga_g=0;
output reg [1:0] vga_b=0;

//wire [9:0] maze[9:0]= {
//	10'b1011111111,
//	10'b1010000001,
//	10'b1010111111,
//	10'b1000000001,
//	10'b1010111101,
//	10'b1010010101,
//	10'b1001010011,
//	10'b1110001011,
//	10'b1000100000,
//	10'b1111111111};
reg [maze_dim:0] maze_expand[maze_dim:0];
reg [maze_player_dim_split:0] index_i;
reg [maze_player_dim_split:0] index_j;
always@* begin
			for (index_i = 0; index_i < maze_width; index_i = index_i +1) begin
				for (index_j = 0; index_j < maze_height; index_j = index_j +1) begin
					maze_expand[index_i][index_j] = maze[index_i*maze_width+index_j];
				end
			end
end


wire inDisplayArea;
wire [9:0] CounterX;
wire [9:0] CounterY;

hvsync_generator uut (
		.clk(clk[1]), 
		.reset(reset), 
		.vga_h_sync(vga_h_sync), 
		.vga_v_sync(vga_v_sync), 
		.inDisplayArea(inDisplayArea), 
		.CounterX(CounterX), 
		.CounterY(CounterY)
	);





reg [maze_player_dim_split:0] x =0;
reg [maze_player_dim_split:0] y =0;
reg [2:0] player_x = 0;
reg [2:0] player_y = 0;
reg [maze_player_dim_split:0] player_x_end = 0;
reg [maze_player_dim_split:0] player_y_end = 0;
reg [maze_player_dim_split:0] player_x_pos = 0;
reg [maze_player_dim_split:0] player_y_pos = 0;


reg green =0;
reg blue =0;
reg red=0;
reg flash =0;

always @* begin
	player_x_end = player_end[maze_player_dim_split+maze_player_dim_split+1:maze_player_dim_split+1];
	player_y_end = player_end[maze_player_dim_split:0];
	player_x_pos = player_pos[maze_player_dim_split+maze_player_dim_split+1:maze_player_dim_split+1];
	player_y_pos = player_pos[maze_player_dim_split:0];
	if(CounterX > 80 && CounterX <560 && inDisplayArea) begin
		x = (CounterX-80)/(480/maze_width);
		y = CounterY/(480/maze_width);
		player_x = (CounterX-(x*(480/maze_width)-80)/6);
		player_y = (CounterY-(x*(480/maze_width))/6);
		if(player_x_pos == x && player_y_pos == y && player_x > 0 && player_x < 7 && player_y > 0 && player_y < 7)
			blue = 1;
		else 
			blue = 0;
		if((x == player_x_end && y == player_y_end) || (win && flash))
			red = 1;
		else
			red = 0;
		green = maze_expand[y][x];
	end
	else begin
		green = 0;
		blue = 0;
		red = 0;
	end
end
wire g = green;
wire b = blue;
wire r = red;

always @(posedge clk[1])
begin
vga_g[2:0] <= {g,g,g};
vga_r[2:0] <= {r,r,r};
vga_b[1:0] <= {b,b};
end



always @ (posedge clk[22]) begin
			flash <= ~flash;
end



endmodule
