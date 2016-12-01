`timescale 1ns/1ns
module alu_tb ();

parameter AND = 3'b000;
parameter AND_N = 3'b100;
parameter OR  = 3'b001;
parameter OR_N = 3'b101;
parameter SUM = 3'b010;
parameter SUM_N = 3'b110;
parameter SLT = 3'b111;

reg [2:0] alu_control;
reg signed [31:0] a, b;

wire signed [31:0] res;
wire               zero_flag;
alu alu1(
  .alu_control(alu_control),
  .scr_a(a),
  .scr_b(b),
  .alu_result(res),
  .zero_flag(zero_flag)
);

integer seed;
time l;

task a_b_rand;
begin
  a = ($random(seed)%10);
  b = ($random(seed)%10)*($random(seed)%10);
end
endtask

task disp;
begin
  #10
  $display("   ");
  $display("ALU IS WORKING");
  $display("a is %d", a);
  $display("b is %d", b);
  case(alu_control)
    AND : $display("operation is A & B");
    AND_N : $display("operation is A & (~B)");
    OR   : $display("operation is A | B");
    OR_N : $display("operation is A | (~B)");
    SUM  : $display("operation is A + B");
    SUM_N : $display("operation is A - B");
    SLT  : $display("operation is SLT");
  endcase
  $display("Answer is %d", res);
  $display("Zero?  %d", zero_flag);
  $display("   ");
  $display("   ");
  $display("   ");
end
endtask

initial
begin
  a = 32'd0;
  b = 32'd0;
  seed = 7;
  alu_control = 3'd0;
  #20
  a = 32'd20;
  b = 32'd20;
  alu_control = SUM_N;
  #5
  disp;
  #20
  a_b_rand;
  alu_control = SUM;
  disp;
  #20
  a_b_rand;
  disp;
  #20
  a_b_rand;
  alu_control = SUM;
  disp;
  #20
  a_b_rand;
  alu_control = SUM_N;
  disp;
  #20
  a_b_rand;
  disp;
  #20
  a_b_rand;
  alu_control = SUM_N;
  disp;
  #20
  a_b_rand;
  alu_control = SUM_N;
  disp;
  #20
  a_b_rand;
  alu_control = SUM_N;
  disp;
  #20
  a_b_rand;
  alu_control = SUM;
  disp;
  #20
  a_b_rand;
  alu_control = SUM_N;
  disp;
  #20
  a_b_rand;
  alu_control = SUM_N;
  disp;
  #20
  a_b_rand;
  alu_control = SUM;
  disp;
  #20
  $finish();
end

endmodule