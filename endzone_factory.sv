
`include "user_defined_types.sv"

module endzone_factory(map_switch, endzone_array);
	
	input map_switch;
	output endzone_struct endzone_array [3:0];
	
	// Map 1
	endzone_struct endzone1_0 = '{0, 0, 75, 75};
	endzone_struct endzone1_1 = '{0, 640-75, 75, 75};
	endzone_struct endzone1_2 = '{480-75, 0, 75, 75};
	endzone_struct endzone1_3 = '{480-75, 640-75, 75, 75};
	
	// Map 2
	endzone_struct endzone2_0 = '{0, 0, 75, 75};
	endzone_struct endzone2_1 = '{480-75, 640-75, 75, 75};
	
	
	always_comb begin
		if (!(map_switch)) begin
			endzone_array[0] = endzone1_0;
			endzone_array[1] = endzone1_1;
			endzone_array[2] = endzone1_2;
			endzone_array[3] = endzone1_3;
		end
		else if (map_switch) begin
			endzone_array[0] = endzone2_0;
			endzone_array[1] = endzone2_1;
			endzone_array[2] = 0;
			endzone_array[3] = 0;
		end
	end
	
endmodule

//==========================================================================================================//
//==========================================================================================================//

module makeendzone (row, col, endzones, isendzone);

	input logic [31:0] row;
	input logic [31:0] col;
	input endzone_struct endzones [3:0];
	
	output logic isendzone;
	
	integer i;
	
	always_latch begin

		for (i = 0; i < $size(endzones); i++) begin
			if (row >= endzones[i].rowstart 
				&& row < (endzones[i].rowstart + endzones[i].width) 
				&& col >= endzones[i].colstart 
				&& col < (endzones[i].colstart + endzones[i].length)) begin
				isendzone <= 1'b1;
				break;
			end
			else begin 
				isendzone <= 1'b0;
			end
		
		end
	end

endmodule
