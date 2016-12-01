`timescale 1ns/1ns
module prod_tb( );

reg signed [31:0] a, b;
wire signed [31:0] res1;
wire of_flag1;

/*prod_n prod1(
	.a(a),
  .b(b),
  .result (res1),
  .of_flag(of_flag1)
);*/

boot_prod prod1(
	.a(a), 
  .b(b),
  .result(res1),
  .of_flag(of_flag1)
);

initial
begin
	$dumpvars();
	a = 32'd0;
  b = 32'd0;
  $display("a %d", a);
  $display("b %d", b);
  #50
  $display("result %d", res1);
  #20 
  a = 32'd2;
  b = 32'd3;
  $display("a %d", a);
  $display("b %d", b);
  #50
  $display("result %d", res1);
	#20
	a = 32'd4388;
	b = -137;
  $display("a %d", a);
  $display("b %d", b);
  #50
  $display("result %d", res1);  
  #200
  $display("a %d", a);
  $display("b %d", b);
  #50
  $display("result %d", res1);
  #500
  $finish();
end

endmodule