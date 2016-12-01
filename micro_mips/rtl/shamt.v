module rshamt (
	input [31:0] num,
  input [31:0] a,
  output [31:0] res
);

assign res = a >> num;

endmodule