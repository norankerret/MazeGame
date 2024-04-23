`include "user_defined_types.sv"

module lose_factory(lose_array);
	
	output lose_struct lose_array [90:0];
	
	lose_struct lose0 = '{60, 80, 130, 20}; // g
	lose_struct lose1 = '{60, 80, 20, 85};
	lose_struct lose2 = '{190, 80, 20, 85};
	lose_struct lose3 = '{130, 130, 20, 35};
	lose_struct lose4 = '{140, 145, 50, 20};
	
	lose_struct lose5 = '{60, 210, 150, 20}; // a
	lose_struct lose6 = '{60, 210, 20, 85};
	lose_struct lose7 = '{60, 275, 150, 20};
	lose_struct lose8 = '{130, 210, 20, 85};
	
	lose_struct lose9 = '{60, 335, 150, 20}; // m
	lose_struct lose10 = '{60, 335, 20, 40};
	lose_struct lose11 = '{60, 415, 20, 40};
	lose_struct lose12 = '{60, 435, 150, 20};
	lose_struct lose13 = '{90, 385, 35, 20};
	lose_struct lose14 = '{75, 370, 30, 20};
	lose_struct lose15 = '{75, 400, 30, 20};
	
	lose_struct lose16 = '{60, 490, 130, 20}; // e
	lose_struct lose17 = '{60, 490, 20, 80};
	lose_struct lose18 = '{120, 490, 20, 65};
	lose_struct lose19 = '{190, 490, 20, 80};
	
	lose_struct lose20 = '{240, 80, 130, 20}; // o
	lose_struct lose21 = '{240, 80, 20, 80};
	lose_struct lose22 = '{240, 140, 130, 20};
	lose_struct lose23 = '{370, 80, 20, 80};
	
	lose_struct lose24 = '{240, 210, 70, 20}; // v
	lose_struct lose25 = '{309, 229, 70, 20};
	lose_struct lose26 = '{379, 249, 20, 20};
	lose_struct lose27 = '{309, 269, 70, 20};
	lose_struct lose28 = '{240, 289, 70, 20};
	
	lose_struct lose29 = '{240, 335, 130, 20}; // e
	lose_struct lose30 = '{240, 335, 20, 80};
	lose_struct lose31 = '{300, 335, 20, 65};
	lose_struct lose32 = '{370, 335, 20, 80};
	
	lose_struct lose33 = '{240, 460, 150, 20}; // r
	lose_struct lose34 = '{240, 460, 20, 50};
	lose_struct lose35 = '{240, 510, 50, 20};
	lose_struct lose36 = '{290, 480, 20, 50};
	lose_struct lose37 = '{310, 490, 20, 20};
	lose_struct lose38 = '{325, 500, 20, 20};
	lose_struct lose39 = '{345, 510, 20, 20};
	lose_struct lose40 = '{365, 520, 20, 20};
	
	lose_struct lose41 = '{240, 560, 110, 20}; // !
	lose_struct lose42 = '{370, 560, 20, 20};
	
	always_comb begin
		lose_array[0] = lose0;
		lose_array[1] = lose1;
		lose_array[2] = lose2;
		lose_array[3] = lose3;
		lose_array[4] = lose4;
		lose_array[5] = lose5;
		lose_array[6] = lose6;
		lose_array[7] = lose7;
		lose_array[8] = lose8;
		lose_array[9] = lose9;
		lose_array[10] = lose10;
		lose_array[11] = lose11;
		lose_array[12] = lose12;
		lose_array[13] = lose13;
		lose_array[14] = lose14;
		lose_array[15] = lose15;
		lose_array[16] = lose16;
		lose_array[17] = lose17;
		lose_array[18] = lose18;
		lose_array[19] = lose19;
		lose_array[20] = lose20;
		lose_array[21] = lose21;
		lose_array[22] = lose22;
		lose_array[23] = lose23;
		lose_array[24] = lose24;
		lose_array[25] = lose25;
		lose_array[26] = lose26;
		lose_array[27] = lose27;
		lose_array[28] = lose28;
		lose_array[29] = lose29;
		lose_array[30] = lose30;
		lose_array[31] = lose31;
		lose_array[32] = lose32;
		lose_array[33] = lose33;
		lose_array[34] = lose34;
		lose_array[35] = lose35;
		lose_array[36] = lose36;
		lose_array[37] = lose37;
		lose_array[38] = lose38;
		lose_array[39] = lose39;
		lose_array[40] = lose40;
		lose_array[41] = lose41;
		lose_array[42] = lose42;
	end
	
endmodule

//==========================================================================================================//
//==========================================================================================================//

module makelose (row, col, loses, islose);

	input logic [31:0] row;
	input logic [31:0] col;
	input lose_struct loses [90:0];
	
	output logic islose;
	
	integer i;
	
	always_latch begin

		for (i = 0; i < $size(loses); i++) begin
			if (row >= loses[i].rowstart 
				&& row < (loses[i].rowstart + loses[i].width) 
				&& col >= loses[i].colstart 
				&& col < (loses[i].colstart + loses[i].length)) begin
				islose <= 1'b1;
				break;
			end
			else begin 
				islose <= 1'b0;
			end
		
		end
	end

endmodule