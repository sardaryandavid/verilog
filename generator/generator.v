module generator
(
	input	wire	clk,
	input	wire	reset,
	output  reg	imp
);

reg [2:0] stage;

always @(posedge clk)
if (reset)
	{imp, stage} <= 5'h0;
else begin
	imp <= (stage[2] == 1) ? ~imp : imp;
	#1
	imp = 0;
	stage <= (stage[2] == 1) ? 3'h0 : stage + 1;
end
endmodule