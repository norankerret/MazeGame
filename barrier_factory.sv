
`include "user_defined_types.sv"

module barrier_factory(map_switch, barrier_array);

	input map_switch;
	output barrier_struct barrier_array [100:0];
	
	// Map 1
	barrier_struct barrier1_0 = '{210, 280, 60, 10};
	barrier_struct barrier1_1 = '{210, 350, 60, 10};
	barrier_struct barrier1_2 = '{270, 280, 10, 80};
	barrier_struct barrier1_3 = '{210, 280, 10, 20};
	barrier_struct barrier1_4 = '{210, 340, 10, 20};
	
	barrier_struct barrier1_5 = '{150, 190, 35, 10};
	barrier_struct barrier1_6 = '{150, 430, 35, 10};
	barrier_struct barrier1_7 = '{150, 190, 10, 250};
	
	barrier_struct barrier1_8 = '{30, 100, 70, 10};
	barrier_struct barrier1_9 = '{100, 50, 55, 10};
	barrier_struct barrier1_10 = '{100, 30, 10, 80};
	barrier_struct barrier1_11 = '{30, 100, 10, 65};
	barrier_struct barrier1_12 = '{155, 30, 10, 30};
	
	barrier_struct barrier1_13 = '{240, 10, 10, 100};
	barrier_struct barrier1_14 = '{240, 150, 10, 85};
	barrier_struct barrier1_15 = '{218, 225, 105, 10};
	
	barrier_struct barrier1_16 = '{320, 225, 10, 65};
	barrier_struct barrier1_17 = '{320, 290, 155, 10};
	
	barrier_struct barrier1_18 = '{370, 350, 100, 10};
	barrier_struct barrier1_19 = '{370, 350, 10, 100};
	barrier_struct barrier1_20 = '{370, 450, 85, 10};
	
	barrier_struct barrier1_21 = '{320, 350, 10, 150};
	barrier_struct barrier1_22 = '{320, 500, 60, 10};

	barrier_struct barrier1_23 = '{10, 310, 70, 10};
	
	barrier_struct barrier1_24 = '{180, 600, 90, 10};
	barrier_struct barrier1_25 = '{220, 550, 10, 50};
	
	barrier_struct barrier1_26 = '{230, 420, 10, 60};
	barrier_struct barrier1_27 = '{230, 455, 40, 10};
	
	barrier_struct barrier1_28 = '{70, 500, 90, 10};
	barrier_struct barrier1_29 = '{160, 500, 10, 60};
	
	barrier_struct barrier1_30 = '{365, 60, 10, 80};
	barrier_struct barrier1_31 = '{365, 140, 60, 10};

	barrier_struct barrier1_32 = '{310, 80, 10, 80};
	barrier_struct barrier1_33 = '{60, 420, 60, 10};

	// Map 2
	barrier_struct barrier2_0 = '{210, 280, 60, 10};
	barrier_struct barrier2_1 = '{210, 350, 60, 10};
	barrier_struct barrier2_2 = '{270, 280, 10, 20};
	barrier_struct barrier2_3 = '{270, 340, 10, 20};
	barrier_struct barrier2_4 = '{210, 280, 10, 20};
	barrier_struct barrier2_5 = '{210, 340, 10, 20};

	barrier_struct barrier2_6 = '{165, 340, 45, 10};
	barrier_struct barrier2_7 = '{165, 230, 10, 110};
	barrier_struct barrier2_8 = '{165, 230, 200, 10};
	barrier_struct barrier2_9 = '{365, 230, 10, 225};
	barrier_struct barrier2_10 = '{65, 450, 310, 10};
	barrier_struct barrier2_11 = '{65, 130, 10, 320};
	barrier_struct barrier2_12 = '{65, 130, 360, 10};
	barrier_struct barrier2_13 = '{75, 65, 405, 10};
	barrier_struct barrier2_14 = '{470, 75, 10, 490};

	barrier_struct barrier2_15 = '{270, 290, 55, 10};
	barrier_struct barrier2_16 = '{315, 290, 10, 120};
	barrier_struct barrier2_17 = '{115, 400, 210, 10};
	barrier_struct barrier2_18 = '{115, 180, 10, 220};
	barrier_struct barrier2_19 = '{115, 180, 300, 10};
	barrier_struct barrier2_20 = '{415, 180, 10, 325};
	barrier_struct barrier2_21 = '{65, 500, 360, 10};
	barrier_struct barrier2_22 = '{0, 565, 405, 10};
	barrier_struct barrier2_23 = '{0, 75, 10, 490};

	
	always_comb begin
		if (!(map_switch)) begin // Map 1
			barrier_array[0] = barrier1_0;
			barrier_array[1] = barrier1_1;
			barrier_array[2] = barrier1_2;
			barrier_array[3] = barrier1_3;
			barrier_array[4] = barrier1_4;
			barrier_array[5] = barrier1_5;
			barrier_array[6] = barrier1_6;
			barrier_array[7] = barrier1_7;
			barrier_array[8] = barrier1_8;
			barrier_array[9] = barrier1_9;
			barrier_array[10] = barrier1_10;
			barrier_array[11] = barrier1_11;
			barrier_array[12] = barrier1_12;
			barrier_array[13] = barrier1_13;
			barrier_array[14] = barrier1_14;
			barrier_array[15] = barrier1_15;
			barrier_array[16] = barrier1_16;
			barrier_array[17] = barrier1_17;
			barrier_array[18] = barrier1_18;
			barrier_array[19] = barrier1_19;
			barrier_array[20] = barrier1_20;
			barrier_array[21] = barrier1_21;
			barrier_array[22] = barrier1_22;
			barrier_array[23] = barrier1_23;
			barrier_array[24] = barrier1_24;
			barrier_array[25] = barrier1_25;
			barrier_array[26] = barrier1_26;
			barrier_array[27] = barrier1_27;
			barrier_array[28] = barrier1_28;
			barrier_array[29] = barrier1_29;	
			barrier_array[30] = barrier1_30;
			barrier_array[31] = barrier1_31;
			barrier_array[32] = barrier1_32;
			barrier_array[33] = barrier1_33;
		end
		else if (map_switch) begin // Map 2
			barrier_array[0] = barrier2_0;
			barrier_array[1] = barrier2_1;
			barrier_array[2] = barrier2_2;
			barrier_array[3] = barrier2_3;	
			barrier_array[4] = barrier2_4;
			barrier_array[5] = barrier2_5;
			barrier_array[6] = barrier2_6;
			barrier_array[7] = barrier2_7;
			barrier_array[8] = barrier2_8;
			barrier_array[9] = barrier2_9;
			barrier_array[10] = barrier2_10;
			barrier_array[11] = barrier2_11;
			barrier_array[12] = barrier2_12;
			barrier_array[13] = barrier2_13;
			barrier_array[14] = barrier2_14;
			barrier_array[15] = barrier2_15;
			barrier_array[16] = barrier2_16;
			barrier_array[17] = barrier2_17;
			barrier_array[18] = barrier2_18;
			barrier_array[19] = barrier2_19;
			barrier_array[20] = barrier2_20;
			barrier_array[21] = barrier2_21;
			barrier_array[22] = barrier2_22;
			barrier_array[23] = barrier2_23;
			barrier_array[24] = 0;
			barrier_array[25] = 0;
			barrier_array[26] = 0;
			barrier_array[27] = 0;
			barrier_array[28] = 0;
			barrier_array[29] = 0;	
			barrier_array[30] = 0;
			barrier_array[31] = 0;
			barrier_array[32] = 0;
			barrier_array[33] = 0;		
		end
		
	end
	
endmodule

//==========================================================================================================//
//==========================================================================================================//

module makebarrier (row, col, barriers, isbarrier);

	input logic [31:0] row;
	input logic [31:0] col;
	input barrier_struct barriers [100:0];
	
	output logic isbarrier;
	
	integer i;
	
	always_latch begin

		for (i = 0; i < $size(barriers); i++) begin
			if (row >= barriers[i].rowstart 
				&& row < (barriers[i].rowstart + barriers[i].width) 
				&& col >= barriers[i].colstart 
				&& col < (barriers[i].colstart + barriers[i].length)) begin
				isbarrier <= 1'b1;
				break; // if we hit barrier, exit loop
			end
			else begin 
				isbarrier <= 1'b0;
			end
		
		end
	end

endmodule
