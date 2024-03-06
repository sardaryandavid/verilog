`include "prioritet_decypher.v"

module top();

wire [7:0] num_test1 = 8'b01001100;
wire [7:0] num_test2 = 8'b00001011;
wire [7:0] num_test3 = 8'b00000001;
wire [2:0] check1 = 6;
wire [2:0] check2 = 3;
wire [3:0] check3 = 0;

get_pow
test1_get_pow
(
	.number	(num_test1),
	.ub	(result1)
);

get_pow
test2_get_pow
(
	.number	(num_test2),
	.ub	(result2)
);

get_pow
test3_get_pow
(
	.number	(num_test3),
	.ub	(result3)
);

endmodule