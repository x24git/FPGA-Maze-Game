`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:57 03/05/2018 
// Design Name: 
// Module Name:    player_logic 
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
module player_logic(
	
    input [maze_player_dim:0] player_pos_in,
    input [maze_flat:0] maze,
    output reg [maze_player_dim:0] player_pos_out,
	 input [maze_player_dim:0] player_start,
	 input [maze_player_dim:0] player_end,
    input btnU,
    input btnD,
    input btnR,
    input btnL,
	 input btnC,
    input clk,
	 output reg win,
	 output reg rst,
	 output reg move
    );
initial player_pos_out = player_start;
`include "maze_parameters.v"
reg [17:0] clk_debouncedv;
reg clk_debounce=0;
reg clk_debounce_d;

reg[2:0] step_U;
reg[2:0] step_L;
reg[2:0] step_D;
reg[2:0] step_R;
reg[2:0] step_C;

reg [maze_player_dim_split:0] playerX;
reg [maze_player_dim_split:0] playerY;

always @ (posedge clk) begin
	clk_debouncedv <= clk_debouncedv + 1;
	clk_debounce<=clk_debouncedv[17];
	clk_debounce_d<=clk_debounce;
end
	
always @ (posedge clk) begin
//		  if (rst)
//			 begin
//				 step_U[2:0]  <= 0;
//				 step_L[2:0]  <= 0;
//				 step_D[2:0]  <= 0;
//				 step_R[2:0]  <= 0;
//				 step_C[2:0]  <= 0;
//			 end
		   if (clk_debounce) // Down sampling
			 begin
				 step_U[2:0]  <= {btnU, step_U[2:1]};
				 step_L[2:0]  <= {btnL, step_L[2:1]};
				 step_D[2:0]  <= {btnD, step_D[2:1]};
				 step_R[2:0]  <= {btnR, step_R[2:1]};
				 step_C[2:0]  <= {btnC, step_C[2:1]};
			 end
		end
			
		// Detecting posedge of btnS
		wire is_btnU_posedge;
		assign is_btnU_posedge = ~ step_U[0] & step_U[1];
		wire is_btnL_posedge;
		assign is_btnL_posedge = ~ step_L[0] & step_L[1];
		wire is_btnD_posedge;
		assign is_btnD_posedge = ~ step_D[0] & step_D[1];
		wire is_btnR_posedge;
		assign is_btnR_posedge = ~ step_R[0] & step_R[1];
		wire is_btnC_posedge;
		assign is_btnC_posedge = ~ step_C[0] & step_C[1];
		always @ (posedge clk) begin
			if (clk_debounce_d && is_btnC_posedge) begin
				player_pos_out = player_start;
				rst=1;
				move = 0;
			end
		   else if (clk_debounce_d && is_btnU_posedge) begin
				movementValid(player_pos_in, 3, maze, player_pos_out);
				rst =0;
				move=1;
			end
			else if (clk_debounce_d && is_btnL_posedge) begin
				movementValid(player_pos_in, 0, maze, player_pos_out);
				rst =0;
				move=1;
			end
			else if (clk_debounce_d && is_btnD_posedge) begin
				movementValid(player_pos_in, 1, maze, player_pos_out);
				rst =0;
				move=1;
			end
			else if (clk_debounce_d && is_btnR_posedge) begin
				movementValid(player_pos_in, 2, maze, player_pos_out);
				rst =0;
				move=1;
			end
			else begin
				player_pos_out= player_pos_in;
				rst =0;
				move=0;
			end
			
			if (player_pos_out == player_end)
				win = 1;
			else
				win = 0;
	end

task movementValid;
input [maze_player_dim:0] player_pos_in;
input [1:0] player_direction;
input [maze_flat:0] maze;
output [maze_player_dim:0] player_pos_out;
	begin
	playerX = player_pos_in[maze_player_dim_split+maze_player_dim_split+1:maze_player_dim_split+1];
	playerY = player_pos_in[maze_player_dim_split:0];
	case(player_direction)
	0: playerX= playerX-1;
	1: playerY= playerY+1;
	2: playerX= playerX+1;
	3: playerY= playerY-1;
	endcase
	if(playerX >=0 && playerX < maze_width && playerY >=0 && playerY < maze_height)
	begin
		if(maze[playerY*maze_width+playerX]==0 && player_pos_in != player_end) 
		begin
			player_pos_out[maze_player_dim_split+maze_player_dim_split+1:maze_player_dim_split+1] = playerX;
			player_pos_out[maze_player_dim_split:0] = playerY;
		end
	end
//	else if (rst)
//		player_pos_out <= 8'b00010001;
	else
		player_pos_out = player_pos_in;
	end
endtask

endmodule
