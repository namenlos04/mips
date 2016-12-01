`timescale 1ns/1ns
module shamt_tb  ();

reg [31:0] num, a;
wire [31:0] res;
 
lsh_mux sh1(
	.a(a),
  .shamt(num),
  .res(res)
);

initial
begin
	$dumpvars();
  a = 32'd0;
  num = 32'd0;
  #20
  a = 32'd10;
  num = 32'd5;
  #20
  $display("a = %d", a);
  $display("num = %d", num);
  $display("res = %d", res);
  #100
  $finish();
end
endmodule