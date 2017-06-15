`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:31:17 06/09/2017 
// Design Name: 
// Module Name:    bcd_decoder 
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
module bcd_decoder(
    input [3:0] data,
    output reg [6:0] bcd
    );
	
		
	always@ (*)
			begin
				case(data)
				4'b0000 : bcd <= 7'b1111110;
				4'b0001 : bcd <= 7'b1000000;
				4'b0010 : bcd <= 7'b1000001;
				4'b0011 : bcd <= 7'b1001001;
				4'b0100 : bcd <= 7'b0100011;
				4'b0101 : bcd <= 7'b0011101;
				4'b0110 : bcd <= 7'b0101001;
				4'b0111 : bcd <= 7'b0010011;
				4'b1000 : bcd <= 7'b0110110;
				4'b1001 : bcd <= 7'b0110111;
				4'b1010 : bcd <= 7'b1110111;
				4'b1011 : bcd <= 7'b0011111;
				4'b1100 : bcd <= 7'b1001110;
				4'b1101 : bcd <= 7'b0111101;
				4'b1110 : bcd <= 7'b1101111;
				4'b1111 : bcd <= 7'b1000111;
				endcase
			end

endmodule
