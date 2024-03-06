module get_pow
(
	input [7:0] number,
	output [2:0] pow
);

wire [2:0] b0, b1, b2, b3, b4, b5, b6, b7;

assign b0 = (number[0] == 1) ? 0 : 0;
assign b1 = (number[1] == 1) ? 1 : 0;
assign b2 = (number[2] == 1) ? 2 : 0;
assign b3 = (number[3] == 1) ? 3 : 0;
assign b4 = (number[4] == 1) ? 4 : 0;
assign b5 = (number[5] == 1) ? 5 : 0;
assign b6 = (number[6] == 1) ? 6 : 0;
assign pow = b0 | b1 | b2 | b3 | b4 | b5 | b6;

endmodule