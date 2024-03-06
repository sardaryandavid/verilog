`timescale 1ns/1ns
`include "rev.v"

module top();

reg	[2:0]	num_test;
wire	[7:0]	result;

always
begin
	#1
	num_test = $random();
end

reverse_n
test_rev
(
	.N	(num_test),
	.rev	(result)
);

endmodule