`include "clk_div6.v"
module top();

reg tclk = 0;
always #1 tclk = ~tclk;

reg reset = 0;
initial begin
	@(posedge tclk)
	reset <= 1;
	repeat(3) @(negedge tclk);
	reset <= 0;
end

clk_div
test_clk_div
(
	.clk(tclk),
	.reset(reset),
	.clk_div6(div_6)
);
endmodule