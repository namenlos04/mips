`timescale 1ns/1ns
module add_tb ();

wire[7:0] s1, s2;
wire  cout, cout1;

reg [15:0] a,b, b1;

wire [15:0] s;

assign s = {s2, s1};

reg clk;
reg[8:0] count;

always#20 clk <= ~clk;


always#1
begin
count <= count + 1;
  $display("a     %b",a );
  //$display("b %d",b1 );
    $display("binb  %b",b );
      $display("binb1 %b",b1 );
  $display("s %d",s ); 
  $display("count %d",count ); 
end

add add1(
  .a(a[7:0]),
  .b(b1[7:0]),
  .cin(1'b1),
  .s(s1),
  .cout(cout)
);

add add2(
  .a(a[15:8]),
  .b(b1[15:8]),
  .cin(cout),
  .s(s2),
  .cout(cout1)
);

initial
begin
  a = 15010;
  b = 1100;
  count <= 0;
  clk <= 1'b0;
  #1
  b1 <= (~b);
  #20
  $finish();
end

endmodule