`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:23:21 06/09/2017 
// Design Name: 
// Module Name:    sign_extend 
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
module sign_extend(
    input [1:0] data,
	 input clk,
    output reg [7:0] sign_extended
    );

		always @(posedge clk) begin
			sign_extended <= { {6{data[1]}}, data[1:0]};
		end

endmodule
