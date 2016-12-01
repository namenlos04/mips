`timescale 1ns/1ns
module mips_tb();

reg clk, res;
reg [31:0] mem_in;
reg [31:0]  mem_adr;
reg 			 instr_en;
wire signed [31:0] test_mem, t1, t2, t3, t4;

integer count;

integer file;

shell shell1(
  .clk(clk),
  .res(res),
  .test_mem(test_mem),
  .t1(t1),
  .t2(t2),
  .t3(t3),
  .t4(t4),
  .mem_in(mem_in),
  .mem_adr(mem_adr),
  .instr_en(instr_en)
);

always#20 clk <= ~clk;

always@(posedge clk)
begin
  count <= count + 1;
  $fdisplay(file, "     ");
  $fdisplay(file, "****** NEW ITERATION ******");
  $fdisplay(file, "Iteration Num %d", count);
  $fdisplay(file, "Memory [11] %d", test_mem);
  $fdisplay(file, "T1     %d", t1);
  $fdisplay(file, "T2     %d", t2);
  $fdisplay(file, "T3     %d", t3);
  $fdisplay(file, "T4     %d", t4);
  $fdisplay(file, "res is     %d", res);
  $fdisplay(file, "********* END *********");
  $fdisplay(file, "     ");
end

task PROG_INIT;
begin
	instr_en <= 1'b1;
	mem_in<= 32'b001000_00000__0100100000_00000_001011;
  #40
  mem_in<= 32'b001000_00000_01010_00000_00000_001100;
  mem_adr <= mem_adr +1;
  #40
  mem_adr <= mem_adr + 1;
  mem_in<= 32'b001000_00000_01011_00000_00000_001111;
  #40
  mem_adr <= mem_adr + 1;
  mem_in<= 32'b000000_01010_01011_01100_00000_100000;
  #40
  mem_adr <= mem_adr + 1;
  mem_in<= 32'b101011_01001_01100_00000_00000_000000;
  #40
  mem_adr <= mem_adr + 1;
  mem_in<= 32'b100011_01001_01010_00000_00000_000000;
 #40
  mem_adr <= mem_adr + 1;
  mem_in<= 32'b000000_01010_01100_01100_00011_000001; 
  #40
  instr_en <= 1'b0;
end
endtask

initial
begin
  $dumpvars();
  file = $fopen("mips_log.txt");
  clk = 1'b0;
  res = 1'b1;
  count = 32'd0;
  instr_en <= 1'b0;
  mem_adr <= 32'd0;
  mem_in <= 32'd0;
  #10
  PROG_INIT;  
  #10
  res <= 1'b0;
  #5
  res <= 1'b1;
  #10000
  $finish();
end

endmodule
