`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:08:22 06/15/2017 
// Design Name: 
// Module Name:    microprocessor 
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
module microprocessor(
	 input clk,
    input [7:0] instruction,
    output [6:0] bcd2,
    output [6:0] bcd1
    );

	reg [7:0] register1;
	reg [7:0] register2;
	reg [7:0] register3;
	reg [7:0] register4;
	
	
	
	wire RegDst;
	wire RegWrite;
	wire AluSrc;
	wire Branch;
	wire MemRead;
	wire MemWrite;
	wire MemtoReg;
	wire AluOp;
	
	wire imm;
	
	controller controlmachine(.clk(clk), .x1(instruction[7]), .x2(instruction[6]), .RegDst(RegDst), .RegWrite(RegWrite), .AluSrc(AluSrc),
.Branch(Branch), .MemRead(MemRead), .MemWrite(MemWrite), .MemtoReg(MemtoReg), .AluOp(AluOp));

	two_bit_mux mux1(.A(instruction[3:2]), .B(instruction[1:0]), .selected_output(imm));
	

endmodule
