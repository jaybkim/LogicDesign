`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:12:44 06/15/2017 
// Design Name: 
// Module Name:    controller 
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
module controller(
	input clk,
	input x1,
	input x2,
	output reg RegDst,
	output reg RegWrite,
	output reg AluSrc,
	output reg Branch,
	output reg MemRead,
	output reg MemWrite,
	output reg MemtoReg,
	output reg AluOp
    );
  
	always@(posedge clk)begin
		if(x1 == 0 & x2 == 0) begin
			RegDst <= 1'd1;
			RegWrite <= 1'd1;
			AluSrc <= 1'd0;
			Branch <= 1'd0;
			MemRead <= 1'd0;
			MemWrite <= 1'd0;
			MemtoReg <= 1'd0;
			AluOp <= 1'd1;
		end
		else if(x1 == 0 & x2 == 1) begin
			RegDst <= 1'd0;
			RegWrite <= 1'd1;
			AluSrc <= 1'd1;
			Branch <= 1'd0;
			MemRead <= 1'd1;
			MemWrite <= 1'd0;
			MemtoReg <= 1'd1;
			AluOp <= 1'd0;
		end
		else if(x1 == 1 & x2 == 0) begin
			RegWrite <= 1'd0;
			AluSrc <= 1'd1;
			Branch <= 1'd0;
			MemRead <= 1'd0;
			MemWrite <= 1'd1;
			AluOp <= 1'd0;
		end
		else if(x1 == 1 & x2 == 1) begin
			RegWrite <= 1'd0;
			AluSrc <= 1'd0;
			Branch <= 1'd1;
			MemRead <= 1'd0;
			MemWrite <= 1'd0;
			AluOp <= 1'd0;
		end
	end
endmodule
