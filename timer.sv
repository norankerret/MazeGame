
module timer(clock, startkey, playkey, win, ledr, countdown, delay);

	input clock;
	input startkey;
	input playkey;
	input [9:0] ledr;
	input win;
	output logic [7:0] countdown;
	output logic [7:0] delay;
	
	logic counter;
	logic delaystart;
	logic start;
	
	initial begin
		delay = 8'd3;
		countdown = 8'd30;
		start = 0;
		delaystart = 0;
	end
	
   always_ff @(posedge clock) begin
		
		if (!startkey) begin
			countdown = 8'd45;
			start = 0;
			delay = 8'd3;
		end

		if (!playkey) begin
			delaystart = 1;
		end

		if (delay > 0 && delaystart == 1) begin
			delay = delay - 1;
		end
		else if (delay == 0) begin
			delaystart = 0;
			start = 1;
		end
		
		if (countdown > 0 && start == 1) begin
			countdown = countdown - 1;
		end
		else if (countdown == 0) begin
			start = 0;
		end
		
	end
	
endmodule


module seconds(value, ones, tens, hex0, hex1);

	input logic [7:0] value;
	
	output logic [7:0] tens;
	output logic [7:0] ones;
	
	output logic [7:0] hex0;
	output logic [7:0] hex1;
	
	always_ff @(value) begin
			ones = value % 10;
			tens = (value - (value % 10)) / 10;
	end
   
	assign hex0[0] = ~((~ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (~ones[3] & ~ones[2] & ones[1] & ones[0]) | (~ones[3] & ones[2] & ~ones[1] & ones[0]) | (~ones[3] & ones[2] & ones[1] & ~ones[0]) | (~ones[3] & ones[2] & ones[1] & ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ones[0]) | (ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (ones[3] & ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ones[2] & ones[1] & ~ones[0]) | (ones[3] & ones[2] & ones[1] & ones[0]) | (~ones[3] & ~ones[2] & ~ones[1] & ~ones[0]));
	assign hex0[1] = ~((~ones[3] & ~ones[2] & ~ones[1] & ones[0]) | (~ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (~ones[3] & ~ones[2] & ones[1] & ones[0]) | (~ones[3] & ones[2] & ~ones[1] & ~ones[0]) | (~ones[3] & ones[2] & ones[1] & ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ones[0]) | (ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (ones[3] & ones[2] & ~ones[1] & ones[0]) | (~ones[3] & ~ones[2] & ~ones[1] & ~ones[0]));
	assign hex0[2] = ~((~ones[3] & ~ones[2] & ~ones[1] & ones[0]) | (~ones[3] & ~ones[2] & ones[1] & ones[0]) | (~ones[3] & ones[2] & ~ones[1] & ~ones[0]) | (~ones[3] & ones[2] & ~ones[1] & ones[0]) | (~ones[3] & ones[2] & ones[1] & ~ones[0]) | (~ones[3] & ones[2] & ones[1] & ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ones[0]) | (ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ones[1] & ones[0]) | (ones[3] & ones[2] & ~ones[1] & ones[0]) | (~ones[3] & ~ones[2] & ~ones[1] & ~ones[0]));	
	assign hex0[3] = ~((~ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (~ones[3] & ~ones[2] & ones[1] & ones[0]) | (~ones[3] & ones[2] & ~ones[1] & ones[0]) | (~ones[3] & ones[2] & ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ones[0]) | (ones[3] & ~ones[2] & ones[1] & ones[0]) | (ones[3] & ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ones[2] & ~ones[1] & ones[0]) | (ones[3] & ones[2] & ones[1] & ~ones[0]) | (~ones[3] & ~ones[2] & ~ones[1] & ~ones[0]));
	assign hex0[4] = ~((~ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (~ones[3] & ones[2] & ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ones[1] & ones[0]) | (ones[3] & ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ones[2] & ~ones[1] & ones[0]) | (ones[3] & ones[2] & ones[1] & ~ones[0]) | (ones[3] & ones[2] & ones[1] & ones[0]) | (~ones[3] & ~ones[2] & ~ones[1] & ~ones[0]));
	assign hex0[5] = ~((~ones[3] & ones[2] & ~ones[1] & ~ones[0]) | (~ones[3] & ones[2] & ~ones[1] & ones[0]) | (~ones[3] & ones[2] & ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ones[0]) | (ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ones[1] & ones[0]) | (ones[3] & ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ones[2] & ones[1] & ~ones[0]) | (ones[3] & ones[2] & ones[1] & ones[0]) | (~ones[3] & ~ones[2] & ~ones[1] & ~ones[0]));
	assign hex0[6] = (~ones[3] & ~ones[2] & ~ones[1]) | (~ones[3] & ones[2] & ones[1] & ones[0]) | (ones[3] & ones[2] & ~ones[1] & ~ones[0]);
	assign hex0[7] = 1;
	
	assign hex1[0] = ~((~tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (~tens[3] & ~tens[2] & tens[1] & tens[0]) | (~tens[3] & tens[2] & ~tens[1] & tens[0]) | (~tens[3] & tens[2] & tens[1] & ~tens[0]) | (~tens[3] & tens[2] & tens[1] & tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & tens[0]) | (tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (tens[3] & tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & tens[2] & tens[1] & ~tens[0]) | (tens[3] & tens[2] & tens[1] & tens[0]));
	assign hex1[1] = ~((~tens[3] & ~tens[2] & ~tens[1] & tens[0]) | (~tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (~tens[3] & ~tens[2] & tens[1] & tens[0]) | (~tens[3] & tens[2] & ~tens[1] & ~tens[0]) | (~tens[3] & tens[2] & tens[1] & tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & tens[0]) | (tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (tens[3] & tens[2] & ~tens[1] & tens[0]));
	assign hex1[2] = ~((~tens[3] & ~tens[2] & ~tens[1] & tens[0]) | (~tens[3] & ~tens[2] & tens[1] & tens[0]) | (~tens[3] & tens[2] & ~tens[1] & ~tens[0]) | (~tens[3] & tens[2] & ~tens[1] & tens[0]) | (~tens[3] & tens[2] & tens[1] & ~tens[0]) | (~tens[3] & tens[2] & tens[1] & tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & tens[0]) | (tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & tens[1] & tens[0]) | (tens[3] & tens[2] & ~tens[1] & tens[0]));	
	assign hex1[3] = ~((~tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (~tens[3] & ~tens[2] & tens[1] & tens[0]) | (~tens[3] & tens[2] & ~tens[1] & tens[0]) | (~tens[3] & tens[2] & tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & tens[0]) | (tens[3] & ~tens[2] & tens[1] & tens[0]) | (tens[3] & tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & tens[2] & ~tens[1] & tens[0]) | (tens[3] & tens[2] & tens[1] & ~tens[0]));
	assign hex1[4] = ~((~tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (~tens[3] & tens[2] & tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & tens[1] & tens[0]) | (tens[3] & tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & tens[2] & ~tens[1] & tens[0]) | (tens[3] & tens[2] & tens[1] & ~tens[0]) | (tens[3] & tens[2] & tens[1] & tens[0]));
	assign hex1[5] = ~((~tens[3] & tens[2] & ~tens[1] & ~tens[0]) | (~tens[3] & tens[2] & ~tens[1] & tens[0]) | (~tens[3] & tens[2] & tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & tens[0]) | (tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & tens[1] & tens[0]) | (tens[3] & tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & tens[2] & tens[1] & ~tens[0]) | (tens[3] & tens[2] & tens[1] & tens[0]));
	assign hex1[6] = (~tens[3] & ~tens[2] & ~tens[1]) | (~tens[3] & tens[2] & tens[1] & tens[0]) | (tens[3] & tens[2] & ~tens[1] & ~tens[0]);
	assign hex1[7] = 1;
	
endmodule

module clockdivider(cin, cout);

	input cin;
	output logic cout;
 
	logic[31:0] count;
	parameter D = 32'd25000000;
	
	always_ff @(posedge cin) begin
		count <= count + 32'd1;
			if (count >= (D-1)) begin
				cout <= ~cout;
				count <= 32'd0;
			end
	end
endmodule
