module screen_display(

	input logic reset,
	input map_switch,
	input [31:0] row,
	input [31:0] col,
	input pixel_clk,
	input logic change,
	input logic [31:0] currentBallRow,
	input logic [31:0] currentBallCol,
	input logic countdown,
	input logic isdelay,
	input logic isbarrier,
	input logic isendzone,
	input logic iswin,
	input logic win,
	input logic islose,
	input logic lose,
	input logic isconfetti,
	output logic [3:0] vga_r,
	output logic [3:0] vga_g,
	output logic [3:0] vga_b,
	output logic [1:0] collision,
	output logic [1:0] touchdown
);

//=====================================================================================================//
//=====================================================================================================//


// screen dimensions
parameter screenWidth = 640;
parameter screenHeight = 480;

// ball parameters
parameter [31:0] ballRadius = 8;
logic [31:0] ballArea;

logic [3:0] random_r;
logic [3:0] random_g;
logic [3:0] random_b;

logic [3:0] randomc_r;
logic [3:0] randomc_g;
logic [3:0] randomc_b;


//=====================================================================================================//
//=====================================================================================================//

initial begin
	collision = 0;
	touchdown = 0;
	random_r = 4'b1101;
	random_g = 4'b0110;
	random_b = 4'b1010;
	randomc_r = 4'b100;
	randomc_g = 4'b1110;
	randomc_b = 4'b1110;
end

always_ff @(change) begin // randomize confetti colours

	randomc_r = currentBallRow[3:0] ^ currentBallCol[3:0];
	randomc_g = currentBallRow[7:4] ^ currentBallCol[7:4];
	randomc_b = currentBallRow[11:8] ^ currentBallCol[11:8];
	
	
	if (randomc_r == 0 && randomc_g == 0 && randomc_b == 0) begin
		randomc_r = 4'b0001;
		randomc_g = 4'b1000;
		randomc_b = 4'b0110;
	end

end


always_ff @(posedge pixel_clk) begin

	collision = 0;
	touchdown = 0;
	
	ballArea = (col - currentBallCol) ** 2 + (row - currentBallRow) ** 2; // create ball shape
	
		
	if (win) begin		
		if (iswin) begin
			vga_r = 4'b0000;
			vga_g = 4'b1111;
			vga_b = 4'b0000;
		end
		else if (isconfetti) begin
			vga_r = randomc_r;
			vga_g = randomc_g;
			vga_b = randomc_b;
		end
		else begin
			vga_r = 4'b0000;
			vga_g = 4'b0000;
			vga_b = 4'b0000;
		end
	end
	
	else if (lose) begin
		if (islose) begin
			vga_r = 4'b1111;
			vga_g = 4'b0000;
			vga_b = 4'b0000;
		end
		else begin
			vga_r = 4'b0000;
			vga_g = 4'b0000;
			vga_b = 4'b0000;
		end
	end
	
	else begin // not win or lose
		if (ballArea <= ballRadius ** 2) begin // ball display
			vga_r = random_r;
			vga_g = random_g;
			vga_b = random_g;
		end
		
		else if (isbarrier) begin // barrier display
			if (!(map_switch)) begin
				vga_r = 4'b0000;
				vga_g = 4'b0000;
				vga_b = 4'b1111;
			end
			else if (map_switch) begin
				vga_r = 4'b1111;
				vga_g = 4'b0000;
				vga_b = 4'b0000;
			end
		end
		
		else if (isendzone) begin // endzone display
			vga_r = 4'b0000;
			vga_g = 4'b1111;
			vga_b = 4'b0000;
		end
		
		else begin // background display
			vga_r = 4'b0000;
			vga_g = 4'b0000;
			vga_b = 4'b0000;
		end

		if ((ballArea <= ballRadius ** 2) && (isbarrier)) begin // collision
			collision = 1;
			
			random_r = currentBallRow[3:0] ^ currentBallCol[3:0];
			random_g = currentBallRow[7:4] ^ currentBallCol[7:4];
			random_b = currentBallRow[11:8] ^ currentBallCol[11:8];

			if (random_r == 0 && random_g == 0 && random_b == 0) begin
				random_r = 4'b0001;
				random_g = 4'b1000;
				random_b = 4'b0110;
			end
			
		end

		if ((ballArea <= ballRadius ** 2) && (isendzone)) begin // touchdown
			touchdown = 1;
		end
		
	end
end
endmodule
