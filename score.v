`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:13:37 03/09/2018 
// Design Name: 
// Module Name:    score 
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
module score(
    input move,
    input win,
    input rst,
	 input clk,
    output reg [3:0] anode,
    output reg [7:0] cathode
    );
reg [15:0] score;
reg first_move = 0;
initial score = 16'b1001100110011001;


reg clk_disp=0;
reg [20:0] clk_dispdv=0;
reg clk_one=0;
reg [27:0] clk_onedv=0;

always @ (posedge clk) begin
	clk_dispdv <= clk_dispdv +1;
	if(clk_dispdv == 200000) begin
		clk_disp <= ~clk_disp;
		clk_dispdv <= 0;
	end
	clk_onedv <= clk_onedv + 1;
	if(clk_onedv == 5000000) begin
		clk_one <= ~clk_one;
		clk_onedv <= 0;
	end
end

reg [1:0] move_on=0;
reg [1:0] time_on=0;

always @ (posedge clk) begin
	if(rst) begin 
		score = 16'b1001100110011001;
		first_move=0;
	end
	move_on = {move_on[0], move};
	time_on = {time_on[0], clk_one};
	if(move_on == 2'b01&& !win ) begin
				if(score[11:8] > 0)
					score[11:8] = score[11:8] - 1;
				else
				begin
					score[11:8] = 4'b1001;
					if(score[15:12] > 0)
						score[15:12] = score[15:12] - 1;
					else
						score[15:0] = 0;
				end
		first_move = 1;
	end
	
	if (score >=0 && time_on == 2'b01 && !win && first_move)begin
		if(score[3:0] > 0)
		score [3:0] = score[3:0] - 1;
		else
		begin
			score[3:0] = 4'b1001;
			if(score[7:4] > 0)
				score[7:4] = score[7:4] - 1;
			else
			begin
				score[7:4] = 4'b1001;
				if(score[11:8] > 0)
					score[11:8] = score[11:8] - 1;
				else
				begin
					score[11:8] = 4'b1001;
					if(score[15:12] > 0)
						score[15:12] = score[15:12] - 1;
					else
						score[15:0] = 0;
				end
			end
		end
	end
end


reg [1:0] counter=0;
reg [3:0] place =0;
reg [3:0] usedDigits=0;




always @ (posedge clk_disp) begin
	counter = counter + 1;
	case(counter)
		4'b00: begin 
					anode = 4'b1110;
					usedDigits = score[3:0];
				 end
		4'b01: begin
					anode = 4'b1101;
					usedDigits = score[7:4];
				 end
		4'b10: begin
					anode = 4'b1011;
					usedDigits = score[11:8];
				 end
		4'b11: begin
					anode = 4'b0111;
					usedDigits = score[15:12];
				 end
	endcase

	case(usedDigits)
		4'b0000: cathode = 8'b11000000;
		4'b0001: cathode = 8'b11111001;
		4'b0010: cathode = 8'b10100100;
		4'b0011: cathode = 8'b10110000;
		4'b0100: cathode = 8'b10011001;
		4'b0101: cathode = 8'b10010010;
		4'b0110: cathode = 8'b10000010;
		4'b0111: cathode = 8'b11111000;
		4'b1000: cathode = 8'b10000000;
		4'b1001: cathode = 8'b10010000;
		4'b1111: cathode = 8'b11111111;
	endcase
end

endmodule
