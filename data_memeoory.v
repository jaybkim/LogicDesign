`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:03:31 06/07/2017 
// Design Name: 
// Module Name:    data_memory 
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
module data_memory(
    input reset,
	 input Mem_read,
	 input Mem_write,	
    input [7:0] address,
    input [7:0] write_data,
	 input clk,
    output reg [7:0] read_data
    );
	reg [7:0] MEMO[0:255]; // 32 words of 8 bit memory
		
	integer i;

	always @(posedge clk or posedge reset) begin
		if (reset) begin
		for(i=0; i<16; i = i+1) begin
				MEMO[i] <= i;
			end
			for(i=16; i<32; i = i+1) begin
				MEMO[i] <= -i+16;
			end 
		/*MEMO[0] <= 8'd0;
		MEMO[1] <= 8'd1;
		MEMO[2] <= 8'd2;
		MEMO[3] <= 8'd3;
		MEMO[4] <= 8'd4;
		MEMO[5] <= 8'd5;
		MEMO[6] <= 8'd6;
		MEMO[7] <= 8'd7;
		MEMO[8] <= 8'd8;
		MEMO[9] <= 8'd9;
		MEMO[10] <= 8'd10;
		MEMO[11] <= 8'd11;
		MEMO[12] <= 8'd12;
		MEMO[13] <= 8'd13;
		MEMO[14] <= 8'd14;
		MEMO[15] <= 8'd15;
		MEMO[16] <= -8'd0;
		MEMO[17] <= -8'd1;
		MEMO[18] <= -8'd2;
		MEMO[19] <= -8'd3;
		MEMO[20] <= -8'd4;
		MEMO[21] <= -8'd5;
		MEMO[22] <= -8'd6;
		MEMO[23] <= -8'd7;
		MEMO[24] <= -8'd8;
		MEMO[25] <= -8'd9;
		MEMO[26] <= -8'd10;
		MEMO[27] <= -8'd11;
		MEMO[28] <= -8'd12;
		MEMO[29] <= -8'd13;
		MEMO[30] <= -8'd14;
		MEMO[31] <= -8'd15;*/
		end
		else if (Mem_write == 1'b1) begin
			MEMO[address] <= write_data;
		end
		else if (Mem_read == 1'b1) begin
			read_data <= MEMO[address];
		end
	end
	
endmodule
