`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:10:42 06/15/2017 
// Design Name: 
// Module Name:    two_bit_mux 
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
module two_bit_mux(
    input [1:0] A,
    input [1:0] B,
	 input sel,
	 output [1:0] selected_output
    );

	/*	if (sel == 1'b1) begin
			assign selected_output = A;
		end
		else begin
			assign selected_output = B;
		end*/
			  assign selected_output = ((sel == 1) ? A : B);


endmodule
