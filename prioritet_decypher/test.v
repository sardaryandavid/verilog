`include "prioritet_decypher.v"

module top();

wire [7:0] num_test1 = 8'b01001100;
wire [7:0] num_test2 = 8'b00001011;
wire [7:0] num_test3 = 8'b00000001;

wire [2:0] result1;
wire [2:0] result2;
wire [2:0] result3;

wire [2:0] check1 = 6;
wire [2:0] check2 = 3;
wire [2:0] check3 = 0;

prioritet_decypher
test1_prioritet_decypher
(
	.number	(num_test1),
	.ub	(result1)
);

prioritet_decypher
test2_prioritet_decypher
(
	.number	(num_test2),
	.ub	(result2)
);

prioritet_decypher
test3_prioritet_decypher
(
	.number	(num_test3),
	.ub	(result3)
);

endmodule