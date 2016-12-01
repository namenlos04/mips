module add_32 ( 
	input [31:0] a,
  input [31:0] b,
  output [31:0] rslt,
  input 				ad_o_sb,
  output 				cout
);

wire cout1, cout2, cout3, cout4;

add add1 (
  .a(a[7:0]),
  .b(b[7:0]),
  .cin(ad_o_sb),
  .cout(cout1),
  .s(rslt[7:0])
);

add add2 (
  .a(a[15:8]),
  .b(b[15:8]),
  .cin(cout1),
  .cout(cout2),
  .s(rslt[15:8])
);

add add3 (
  .a(a[23:16]),
  .b(b[23:16]),
  .cin(cout2),
  .cout(cout3),
  .s(rslt[23:16])
);

add add4 (
  .a(a[31:24]),
  .b(b[31:24]),
  .cin(cout3),
  .cout(cout4),
  .s(rslt[31:24])
);

endmodule