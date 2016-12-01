module prod (
	input[31:0] a,
  input[31:0] b,
  output[31:0] result,
  output			 of_flag
);

assign {of_flag, result} = a * b; 

endmodule