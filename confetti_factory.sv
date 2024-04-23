`include "user_defined_types.sv"

module confetti_factory(confetti_array);
	
	output confetti_struct confetti_array [100:0];
	
	confetti_struct confetti0 = '{50, 50, 5, 5};
	confetti_struct confetti1 = '{80, 400, 5, 5};
	confetti_struct confetti2 = '{520, 230, 5, 5};
	confetti_struct confetti3 = '{95, 300, 5, 5};
	confetti_struct confetti4 = '{320, 45, 5, 5};
	
	confetti_struct confetti5 = '{357, 196, 5, 5};
	confetti_struct confetti6 = '{459, 560, 5, 5};
	confetti_struct confetti7 = '{67, 89, 5, 5};
	
	confetti_struct confetti8 = '{264, 245, 5, 5};
	confetti_struct confetti9 = '{20, 580, 5, 5};
	confetti_struct confetti10 ='{420, 427, 5, 5};
	
	confetti_struct confetti11 ='{400, 52, 5, 5};
	confetti_struct confetti12 ='{471, 159, 5, 5};
	confetti_struct confetti13 ='{329, 210, 5, 5};
	confetti_struct confetti14 ='{105, 6, 5, 5};
	
	confetti_struct confetti15 ='{85, 620, 5, 5};
	confetti_struct confetti16 ='{430, 580, 5, 5};
	
	confetti_struct confetti17 ='{228, 612, 5, 5};
	confetti_struct confetti18 ='{95, 504, 5, 5};
	confetti_struct confetti19 = '{210, 638, 5, 5};
	confetti_struct confetti20 = '{365, 402, 5, 5};
	confetti_struct confetti21 = '{112, 146, 5, 5};
	confetti_struct confetti22 = '{206, 302, 5, 5};
	confetti_struct confetti23 = '{23, 45, 5, 5};
	
	confetti_struct confetti24 = '{108, 506, 5, 5};
	confetti_struct confetti25 = '{230, 392, 5, 5};
	confetti_struct confetti26 = '{169, 320, 5, 5};
	
	confetti_struct confetti27 = '{15, 15, 5, 5};
	confetti_struct confetti28 = '{22, 328, 5, 5};
	confetti_struct confetti29 = '{69, 365, 5, 5};
	confetti_struct confetti30 = '{402, 520, 5, 5};
	
	confetti_struct confetti31 = '{98, 65, 5, 5};
	confetti_struct confetti32 = '{420, 128, 5, 5};
	confetti_struct confetti33 = '{170, 608, 5, 5};

	confetti_struct confetti34 = '{390, 327, 5, 5};
	confetti_struct confetti35 = '{386, 328, 5, 5};
	confetti_struct confetti36 = '{423, 280, 5, 5};
	confetti_struct confetti37 = '{402, 315, 5, 5};
	
	confetti_struct confetti38 = '{289, 394, 5, 5};
	confetti_struct confetti39 = '{301, 308, 5, 5};
	confetti_struct confetti40 = '{419, 512, 5, 5};	
	
	confetti_struct confetti41 = '{20, 123, 5, 5};
	confetti_struct confetti42 = '{16, 96, 5, 5};
	confetti_struct confetti43 = '{23, 143, 5, 5};

	confetti_struct confetti44 = '{15, 412, 5, 5};
	confetti_struct confetti45 = '{18, 405, 5, 5};
	confetti_struct confetti46 = '{26, 498, 5, 5};
	confetti_struct confetti47 = '{9, 105, 5, 5};
	
	confetti_struct confetti48 = '{12, 189, 5, 5};
	confetti_struct confetti49 = '{26, 215, 5, 5};
	confetti_struct confetti50 = '{13, 203, 5, 5};	
	
	always_comb begin
		confetti_array[0] = confetti0;
		confetti_array[1] = confetti1;
		confetti_array[2] = confetti2;
		confetti_array[3] = confetti3;
		confetti_array[4] = confetti4;
		confetti_array[5] = confetti5;
		confetti_array[6] = confetti6;
		confetti_array[7] = confetti7;
		confetti_array[8] = confetti8;
		confetti_array[9] = confetti9;
		confetti_array[10] = confetti10;
		confetti_array[11] = confetti11;
		confetti_array[12] = confetti12;
		confetti_array[13] = confetti13;
		confetti_array[14] = confetti14;
		confetti_array[15] = confetti15;
		confetti_array[16] = confetti16;
		confetti_array[17] = confetti17;
		confetti_array[18] = confetti18;
		confetti_array[19] = confetti19;
		confetti_array[20] = confetti20;
		confetti_array[21] = confetti21;
		confetti_array[22] = confetti22;
		confetti_array[23] = confetti23;
		confetti_array[24] = confetti24;
		confetti_array[25] = confetti25;
		confetti_array[26] = confetti26;
		confetti_array[27] = confetti27;
		confetti_array[28] = confetti28;
		confetti_array[29] = confetti29;
		confetti_array[30] = confetti30;
		confetti_array[31] = confetti31;
		confetti_array[32] = confetti32;
		confetti_array[33] = confetti33;
		confetti_array[34] = confetti34;
		confetti_array[35] = confetti35;
		confetti_array[36] = confetti36;
		confetti_array[37] = confetti37;
		confetti_array[38] = confetti38;
		confetti_array[39] = confetti39;
		confetti_array[40] = confetti40;
		confetti_array[41] = confetti41;
		confetti_array[42] = confetti42;
		confetti_array[43] = confetti43;
		confetti_array[44] = confetti44;
		confetti_array[45] = confetti45;
		confetti_array[46] = confetti46;
		confetti_array[47] = confetti47;
		confetti_array[48] = confetti48;
		confetti_array[49] = confetti49;
		confetti_array[50] = confetti50;
	end
	
endmodule

//==========================================================================================================//
//==========================================================================================================//

module makeconfetti (row, col, confettis, isconfetti);

	input logic [31:0] row;
	input logic [31:0] col;
	input confetti_struct confettis [100:0];
	
	output logic isconfetti;
	
	integer i;
	
	always_latch begin

		for (i = 0; i < $size(confettis); i++) begin
			if (row >= confettis[i].rowstart 
				&& row < (confettis[i].rowstart + confettis[i].width) 
				&& col >= confettis[i].colstart 
				&& col < (confettis[i].colstart + confettis[i].length)) begin
				isconfetti <= 1'b1;
				break;
			end
			else begin 
				isconfetti <= 1'b0;
			end
		
		end
	end

endmodule
