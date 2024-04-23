`include "user_defined_types.sv"

module win_factory(win_array);
	
	output win_struct win_array [50:0];
	
	win_struct win0 = '{100, 30, 180, 10}; // w
	win_struct win1 = '{270, 30, 10, 100};
	win_struct win2 = '{100, 120, 180, 10};
	win_struct win3 = '{180, 75, 90, 10};
	
	win_struct win4 = '{100, 155, 180, 10}; // i
	
	win_struct win5 = '{100, 190, 180, 10}; // n
	win_struct win6 = '{100, 190, 10, 70};
	win_struct win7 = '{100, 260, 180, 10};
	
	win_struct win8 = '{100, 290, 180, 10}; // n
	win_struct win9 = '{100, 290, 10, 70};
	win_struct win10 ='{100, 360, 180, 10};
	
	win_struct win11 ='{100, 390, 180, 10}; // e
	win_struct win12 ='{100, 390, 10, 70};
	win_struct win13 ='{270, 390, 10, 70};
	win_struct win14 ='{180, 390, 10, 50};
	
	win_struct win15 ='{100, 490, 180, 10}; // r
	win_struct win16 ='{100, 490, 10, 50};
	
	win_struct win17 ='{100, 580, 160, 10}; // !
	win_struct win18 ='{270, 580, 10, 10};
	
	
	always_comb begin
		win_array[0] = win0;
		win_array[1] = win1;
		win_array[2] = win2;
		win_array[3] = win3;
		win_array[4] = win4;
		win_array[5] = win5;
		win_array[6] = win6;
		win_array[7] = win7;
		win_array[8] = win8;
		win_array[9] = win9;
		win_array[10] = win10;
		win_array[11] = win11;
		win_array[12] = win12;
		win_array[13] = win13;
		win_array[14] = win14;
		win_array[15] = win15;
		win_array[16] = win16;
		win_array[17] = win17;
		win_array[18] = win18;
	end
	
endmodule

//==========================================================================================================//
//==========================================================================================================//

module makewin (row, col, wins, iswin);

	input logic [31:0] row;
	input logic [31:0] col;
	input win_struct wins [50:0];
	
	output logic iswin;
	
	integer i;
	
	always_latch begin

		for (i = 0; i < $size(wins); i++) begin
			if (row >= wins[i].rowstart 
				&& row < (wins[i].rowstart + wins[i].width) 
				&& col >= wins[i].colstart 
				&& col < (wins[i].colstart + wins[i].length)) begin
				iswin <= 1'b1;
				break;
			end
			else begin 
				iswin <= 1'b0;
			end
		
		end
	end

endmodule
