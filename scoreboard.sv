
module scoreboard(score, highscore, scoreones, scoretens, highscoreones, highscoretens, hex5, hex4, hex3, hex2);

	input logic [7:0] score;
	input logic [7:0] highscore;
	
	output logic [7:0] scoretens;
	output logic [7:0] scoreones;
	
	output logic [7:0] highscoretens;
	output logic [7:0] highscoreones;
	
	output logic [7:0] hex4;	
	output logic [7:0] hex5;
	
	output logic [7:0] hex2;
	output logic [7:0] hex3;
	
	always_ff @(score) begin
			scoreones = score % 10;
			scoretens = (score - (score % 10)) / 10;
	end
	
	always_ff @(highscore) begin
			highscoreones = highscore % 10;
			highscoretens = (highscore - (highscore % 10)) / 10;
	end
   
	assign hex4[0] = ~((~scoreones[3] & ~scoreones[2] & scoreones[1] & ~scoreones[0]) | (~scoreones[3] & ~scoreones[2] & scoreones[1] & scoreones[0]) | (~scoreones[3] & scoreones[2] & ~scoreones[1] & scoreones[0]) | (~scoreones[3] & scoreones[2] & scoreones[1] & ~scoreones[0]) | (~scoreones[3] & scoreones[2] & scoreones[1] & scoreones[0]) | (scoreones[3] & ~scoreones[2] & ~scoreones[1] & ~scoreones[0]) | (scoreones[3] & ~scoreones[2] & ~scoreones[1] & scoreones[0]) | (scoreones[3] & ~scoreones[2] & scoreones[1] & ~scoreones[0]) | (scoreones[3] & scoreones[2] & ~scoreones[1] & ~scoreones[0]) | (scoreones[3] & scoreones[2] & scoreones[1] & ~scoreones[0]) | (scoreones[3] & scoreones[2] & scoreones[1] & scoreones[0]) | (~scoreones[3] & ~scoreones[2] & ~scoreones[1] & ~scoreones[0]));
	assign hex4[1] = ~((~scoreones[3] & ~scoreones[2] & ~scoreones[1] & scoreones[0]) | (~scoreones[3] & ~scoreones[2] & scoreones[1] & ~scoreones[0]) | (~scoreones[3] & ~scoreones[2] & scoreones[1] & scoreones[0]) | (~scoreones[3] & scoreones[2] & ~scoreones[1] & ~scoreones[0]) | (~scoreones[3] & scoreones[2] & scoreones[1] & scoreones[0]) | (scoreones[3] & ~scoreones[2] & ~scoreones[1] & ~scoreones[0]) | (scoreones[3] & ~scoreones[2] & ~scoreones[1] & scoreones[0]) | (scoreones[3] & ~scoreones[2] & scoreones[1] & ~scoreones[0]) | (scoreones[3] & scoreones[2] & ~scoreones[1] & scoreones[0]) | (~scoreones[3] & ~scoreones[2] & ~scoreones[1] & ~scoreones[0]));
	assign hex4[2] = ~((~scoreones[3] & ~scoreones[2] & ~scoreones[1] & scoreones[0]) | (~scoreones[3] & ~scoreones[2] & scoreones[1] & scoreones[0]) | (~scoreones[3] & scoreones[2] & ~scoreones[1] & ~scoreones[0]) | (~scoreones[3] & scoreones[2] & ~scoreones[1] & scoreones[0]) | (~scoreones[3] & scoreones[2] & scoreones[1] & ~scoreones[0]) | (~scoreones[3] & scoreones[2] & scoreones[1] & scoreones[0]) | (scoreones[3] & ~scoreones[2] & ~scoreones[1] & ~scoreones[0]) | (scoreones[3] & ~scoreones[2] & ~scoreones[1] & scoreones[0]) | (scoreones[3] & ~scoreones[2] & scoreones[1] & ~scoreones[0]) | (scoreones[3] & ~scoreones[2] & scoreones[1] & scoreones[0]) | (scoreones[3] & scoreones[2] & ~scoreones[1] & scoreones[0]) | (~scoreones[3] & ~scoreones[2] & ~scoreones[1] & ~scoreones[0]));	
	assign hex4[3] = ~((~scoreones[3] & ~scoreones[2] & scoreones[1] & ~scoreones[0]) | (~scoreones[3] & ~scoreones[2] & scoreones[1] & scoreones[0]) | (~scoreones[3] & scoreones[2] & ~scoreones[1] & scoreones[0]) | (~scoreones[3] & scoreones[2] & scoreones[1] & ~scoreones[0]) | (scoreones[3] & ~scoreones[2] & ~scoreones[1] & ~scoreones[0]) | (scoreones[3] & ~scoreones[2] & ~scoreones[1] & scoreones[0]) | (scoreones[3] & ~scoreones[2] & scoreones[1] & scoreones[0]) | (scoreones[3] & scoreones[2] & ~scoreones[1] & ~scoreones[0]) | (scoreones[3] & scoreones[2] & ~scoreones[1] & scoreones[0]) | (scoreones[3] & scoreones[2] & scoreones[1] & ~scoreones[0]) | (~scoreones[3] & ~scoreones[2] & ~scoreones[1] & ~scoreones[0]));
	assign hex4[4] = ~((~scoreones[3] & ~scoreones[2] & scoreones[1] & ~scoreones[0]) | (~scoreones[3] & scoreones[2] & scoreones[1] & ~scoreones[0]) | (scoreones[3] & ~scoreones[2] & ~scoreones[1] & ~scoreones[0]) | (scoreones[3] & ~scoreones[2] & scoreones[1] & ~scoreones[0]) | (scoreones[3] & ~scoreones[2] & scoreones[1] & scoreones[0]) | (scoreones[3] & scoreones[2] & ~scoreones[1] & ~scoreones[0]) | (scoreones[3] & scoreones[2] & ~scoreones[1] & scoreones[0]) | (scoreones[3] & scoreones[2] & scoreones[1] & ~scoreones[0]) | (scoreones[3] & scoreones[2] & scoreones[1] & scoreones[0]) | (~scoreones[3] & ~scoreones[2] & ~scoreones[1] & ~scoreones[0]));
	assign hex4[5] = ~((~scoreones[3] & scoreones[2] & ~scoreones[1] & ~scoreones[0]) | (~scoreones[3] & scoreones[2] & ~scoreones[1] & scoreones[0]) | (~scoreones[3] & scoreones[2] & scoreones[1] & ~scoreones[0]) | (scoreones[3] & ~scoreones[2] & ~scoreones[1] & ~scoreones[0]) | (scoreones[3] & ~scoreones[2] & ~scoreones[1] & scoreones[0]) | (scoreones[3] & ~scoreones[2] & scoreones[1] & ~scoreones[0]) | (scoreones[3] & ~scoreones[2] & scoreones[1] & scoreones[0]) | (scoreones[3] & scoreones[2] & ~scoreones[1] & ~scoreones[0]) | (scoreones[3] & scoreones[2] & scoreones[1] & ~scoreones[0]) | (scoreones[3] & scoreones[2] & scoreones[1] & scoreones[0]) | (~scoreones[3] & ~scoreones[2] & ~scoreones[1] & ~scoreones[0]));
	assign hex4[6] = (~scoreones[3] & ~scoreones[2] & ~scoreones[1]) | (~scoreones[3] & scoreones[2] & scoreones[1] & scoreones[0]) | (scoreones[3] & scoreones[2] & ~scoreones[1] & ~scoreones[0]);
	assign hex4[7] = 1;
	
	assign hex5[0] = ~((~scoretens[3] & ~scoretens[2] & scoretens[1] & ~scoretens[0]) | (~scoretens[3] & ~scoretens[2] & scoretens[1] & scoretens[0]) | (~scoretens[3] & scoretens[2] & ~scoretens[1] & scoretens[0]) | (~scoretens[3] & scoretens[2] & scoretens[1] & ~scoretens[0]) | (~scoretens[3] & scoretens[2] & scoretens[1] & scoretens[0]) | (scoretens[3] & ~scoretens[2] & ~scoretens[1] & ~scoretens[0]) | (scoretens[3] & ~scoretens[2] & ~scoretens[1] & scoretens[0]) | (scoretens[3] & ~scoretens[2] & scoretens[1] & ~scoretens[0]) | (scoretens[3] & scoretens[2] & ~scoretens[1] & ~scoretens[0]) | (scoretens[3] & scoretens[2] & scoretens[1] & ~scoretens[0]) | (scoretens[3] & scoretens[2] & scoretens[1] & scoretens[0]));
	assign hex5[1] = ~((~scoretens[3] & ~scoretens[2] & ~scoretens[1] & scoretens[0]) | (~scoretens[3] & ~scoretens[2] & scoretens[1] & ~scoretens[0]) | (~scoretens[3] & ~scoretens[2] & scoretens[1] & scoretens[0]) | (~scoretens[3] & scoretens[2] & ~scoretens[1] & ~scoretens[0]) | (~scoretens[3] & scoretens[2] & scoretens[1] & scoretens[0]) | (scoretens[3] & ~scoretens[2] & ~scoretens[1] & ~scoretens[0]) | (scoretens[3] & ~scoretens[2] & ~scoretens[1] & scoretens[0]) | (scoretens[3] & ~scoretens[2] & scoretens[1] & ~scoretens[0]) | (scoretens[3] & scoretens[2] & ~scoretens[1] & scoretens[0]));
	assign hex5[2] = ~((~scoretens[3] & ~scoretens[2] & ~scoretens[1] & scoretens[0]) | (~scoretens[3] & ~scoretens[2] & scoretens[1] & scoretens[0]) | (~scoretens[3] & scoretens[2] & ~scoretens[1] & ~scoretens[0]) | (~scoretens[3] & scoretens[2] & ~scoretens[1] & scoretens[0]) | (~scoretens[3] & scoretens[2] & scoretens[1] & ~scoretens[0]) | (~scoretens[3] & scoretens[2] & scoretens[1] & scoretens[0]) | (scoretens[3] & ~scoretens[2] & ~scoretens[1] & ~scoretens[0]) | (scoretens[3] & ~scoretens[2] & ~scoretens[1] & scoretens[0]) | (scoretens[3] & ~scoretens[2] & scoretens[1] & ~scoretens[0]) | (scoretens[3] & ~scoretens[2] & scoretens[1] & scoretens[0]) | (scoretens[3] & scoretens[2] & ~scoretens[1] & scoretens[0]));	
	assign hex5[3] = ~((~scoretens[3] & ~scoretens[2] & scoretens[1] & ~scoretens[0]) | (~scoretens[3] & ~scoretens[2] & scoretens[1] & scoretens[0]) | (~scoretens[3] & scoretens[2] & ~scoretens[1] & scoretens[0]) | (~scoretens[3] & scoretens[2] & scoretens[1] & ~scoretens[0]) | (scoretens[3] & ~scoretens[2] & ~scoretens[1] & ~scoretens[0]) | (scoretens[3] & ~scoretens[2] & ~scoretens[1] & scoretens[0]) | (scoretens[3] & ~scoretens[2] & scoretens[1] & scoretens[0]) | (scoretens[3] & scoretens[2] & ~scoretens[1] & ~scoretens[0]) | (scoretens[3] & scoretens[2] & ~scoretens[1] & scoretens[0]) | (scoretens[3] & scoretens[2] & scoretens[1] & ~scoretens[0]));
	assign hex5[4] = ~((~scoretens[3] & ~scoretens[2] & scoretens[1] & ~scoretens[0]) | (~scoretens[3] & scoretens[2] & scoretens[1] & ~scoretens[0]) | (scoretens[3] & ~scoretens[2] & ~scoretens[1] & ~scoretens[0]) | (scoretens[3] & ~scoretens[2] & scoretens[1] & ~scoretens[0]) | (scoretens[3] & ~scoretens[2] & scoretens[1] & scoretens[0]) | (scoretens[3] & scoretens[2] & ~scoretens[1] & ~scoretens[0]) | (scoretens[3] & scoretens[2] & ~scoretens[1] & scoretens[0]) | (scoretens[3] & scoretens[2] & scoretens[1] & ~scoretens[0]) | (scoretens[3] & scoretens[2] & scoretens[1] & scoretens[0]));
	assign hex5[5] = ~((~scoretens[3] & scoretens[2] & ~scoretens[1] & ~scoretens[0]) | (~scoretens[3] & scoretens[2] & ~scoretens[1] & scoretens[0]) | (~scoretens[3] & scoretens[2] & scoretens[1] & ~scoretens[0]) | (scoretens[3] & ~scoretens[2] & ~scoretens[1] & ~scoretens[0]) | (scoretens[3] & ~scoretens[2] & ~scoretens[1] & scoretens[0]) | (scoretens[3] & ~scoretens[2] & scoretens[1] & ~scoretens[0]) | (scoretens[3] & ~scoretens[2] & scoretens[1] & scoretens[0]) | (scoretens[3] & scoretens[2] & ~scoretens[1] & ~scoretens[0]) | (scoretens[3] & scoretens[2] & scoretens[1] & ~scoretens[0]) | (scoretens[3] & scoretens[2] & scoretens[1] & scoretens[0]));
	assign hex5[6] = (~scoretens[3] & ~scoretens[2] & ~scoretens[1]) | (~scoretens[3] & scoretens[2] & scoretens[1] & scoretens[0]) | (scoretens[3] & scoretens[2] & ~scoretens[1] & ~scoretens[0]);
	assign hex5[7] = 1;
	
	assign hex2[0] = ~((~highscoreones[3] & ~highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (~highscoreones[3] & ~highscoreones[2] & highscoreones[1] & highscoreones[0]) | (~highscoreones[3] & highscoreones[2] & ~highscoreones[1] & highscoreones[0]) | (~highscoreones[3] & highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (~highscoreones[3] & highscoreones[2] & highscoreones[1] & highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & highscoreones[2] & highscoreones[1] & highscoreones[0]) | (~highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]));
	assign hex2[1] = ~((~highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & highscoreones[0]) | (~highscoreones[3] & ~highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (~highscoreones[3] & ~highscoreones[2] & highscoreones[1] & highscoreones[0]) | (~highscoreones[3] & highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]) | (~highscoreones[3] & highscoreones[2] & highscoreones[1] & highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & highscoreones[2] & ~highscoreones[1] & highscoreones[0]) | (~highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]));
	assign hex2[2] = ~((~highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & highscoreones[0]) | (~highscoreones[3] & ~highscoreones[2] & highscoreones[1] & highscoreones[0]) | (~highscoreones[3] & highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]) | (~highscoreones[3] & highscoreones[2] & ~highscoreones[1] & highscoreones[0]) | (~highscoreones[3] & highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (~highscoreones[3] & highscoreones[2] & highscoreones[1] & highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & highscoreones[1] & highscoreones[0]) | (highscoreones[3] & highscoreones[2] & ~highscoreones[1] & highscoreones[0]) | (~highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]));	
	assign hex2[3] = ~((~highscoreones[3] & ~highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (~highscoreones[3] & ~highscoreones[2] & highscoreones[1] & highscoreones[0]) | (~highscoreones[3] & highscoreones[2] & ~highscoreones[1] & highscoreones[0]) | (~highscoreones[3] & highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & highscoreones[1] & highscoreones[0]) | (highscoreones[3] & highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & highscoreones[2] & ~highscoreones[1] & highscoreones[0]) | (highscoreones[3] & highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (~highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]));
	assign hex2[4] = ~((~highscoreones[3] & ~highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (~highscoreones[3] & highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & highscoreones[1] & highscoreones[0]) | (highscoreones[3] & highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & highscoreones[2] & ~highscoreones[1] & highscoreones[0]) | (highscoreones[3] & highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & highscoreones[2] & highscoreones[1] & highscoreones[0]) | (~highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]));
	assign hex2[5] = ~((~highscoreones[3] & highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]) | (~highscoreones[3] & highscoreones[2] & ~highscoreones[1] & highscoreones[0]) | (~highscoreones[3] & highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & ~highscoreones[2] & highscoreones[1] & highscoreones[0]) | (highscoreones[3] & highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & highscoreones[2] & highscoreones[1] & ~highscoreones[0]) | (highscoreones[3] & highscoreones[2] & highscoreones[1] & highscoreones[0]) | (~highscoreones[3] & ~highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]));
	assign hex2[6] = (~highscoreones[3] & ~highscoreones[2] & ~highscoreones[1]) | (~highscoreones[3] & highscoreones[2] & highscoreones[1] & highscoreones[0]) | (highscoreones[3] & highscoreones[2] & ~highscoreones[1] & ~highscoreones[0]);
	assign hex2[7] = 1;
	
	assign hex3[0] = ~((~highscoretens[3] & ~highscoretens[2] & highscoretens[1] & ~highscoretens[0]) | (~highscoretens[3] & ~highscoretens[2] & highscoretens[1] & highscoretens[0]) | (~highscoretens[3] & highscoretens[2] & ~highscoretens[1] & highscoretens[0]) | (~highscoretens[3] & highscoretens[2] & highscoretens[1] & ~highscoretens[0]) | (~highscoretens[3] & highscoretens[2] & highscoretens[1] & highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & ~highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & ~highscoretens[1] & highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & highscoretens[2] & ~highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & highscoretens[2] & highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & highscoretens[2] & highscoretens[1] & highscoretens[0]));
	assign hex3[1] = ~((~highscoretens[3] & ~highscoretens[2] & ~highscoretens[1] & highscoretens[0]) | (~highscoretens[3] & ~highscoretens[2] & highscoretens[1] & ~highscoretens[0]) | (~highscoretens[3] & ~highscoretens[2] & highscoretens[1] & highscoretens[0]) | (~highscoretens[3] & highscoretens[2] & ~highscoretens[1] & ~highscoretens[0]) | (~highscoretens[3] & highscoretens[2] & highscoretens[1] & highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & ~highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & ~highscoretens[1] & highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & highscoretens[2] & ~highscoretens[1] & highscoretens[0]));
	assign hex3[2] = ~((~highscoretens[3] & ~highscoretens[2] & ~highscoretens[1] & highscoretens[0]) | (~highscoretens[3] & ~highscoretens[2] & highscoretens[1] & highscoretens[0]) | (~highscoretens[3] & highscoretens[2] & ~highscoretens[1] & ~highscoretens[0]) | (~highscoretens[3] & highscoretens[2] & ~highscoretens[1] & highscoretens[0]) | (~highscoretens[3] & highscoretens[2] & highscoretens[1] & ~highscoretens[0]) | (~highscoretens[3] & highscoretens[2] & highscoretens[1] & highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & ~highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & ~highscoretens[1] & highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & highscoretens[1] & highscoretens[0]) | (highscoretens[3] & highscoretens[2] & ~highscoretens[1] & highscoretens[0]));	
	assign hex3[3] = ~((~highscoretens[3] & ~highscoretens[2] & highscoretens[1] & ~highscoretens[0]) | (~highscoretens[3] & ~highscoretens[2] & highscoretens[1] & highscoretens[0]) | (~highscoretens[3] & highscoretens[2] & ~highscoretens[1] & highscoretens[0]) | (~highscoretens[3] & highscoretens[2] & highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & ~highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & ~highscoretens[1] & highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & highscoretens[1] & highscoretens[0]) | (highscoretens[3] & highscoretens[2] & ~highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & highscoretens[2] & ~highscoretens[1] & highscoretens[0]) | (highscoretens[3] & highscoretens[2] & highscoretens[1] & ~highscoretens[0]));
	assign hex3[4] = ~((~highscoretens[3] & ~highscoretens[2] & highscoretens[1] & ~highscoretens[0]) | (~highscoretens[3] & highscoretens[2] & highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & ~highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & highscoretens[1] & highscoretens[0]) | (highscoretens[3] & highscoretens[2] & ~highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & highscoretens[2] & ~highscoretens[1] & highscoretens[0]) | (highscoretens[3] & highscoretens[2] & highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & highscoretens[2] & highscoretens[1] & highscoretens[0]));
	assign hex3[5] = ~((~highscoretens[3] & highscoretens[2] & ~highscoretens[1] & ~highscoretens[0]) | (~highscoretens[3] & highscoretens[2] & ~highscoretens[1] & highscoretens[0]) | (~highscoretens[3] & highscoretens[2] & highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & ~highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & ~highscoretens[1] & highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & ~highscoretens[2] & highscoretens[1] & highscoretens[0]) | (highscoretens[3] & highscoretens[2] & ~highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & highscoretens[2] & highscoretens[1] & ~highscoretens[0]) | (highscoretens[3] & highscoretens[2] & highscoretens[1] & highscoretens[0]));
	assign hex3[6] = (~highscoretens[3] & ~highscoretens[2] & ~highscoretens[1]) | (~highscoretens[3] & highscoretens[2] & highscoretens[1] & highscoretens[0]) | (highscoretens[3] & highscoretens[2] & ~highscoretens[1] & ~highscoretens[0]);
	assign hex3[7] = 1;

	
endmodule
