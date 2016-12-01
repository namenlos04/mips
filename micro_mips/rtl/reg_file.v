module reg_file(
  input [4:0] a1, a2, a3,
  input [31:0] wd3,
  input        clk,
  input        res,
  input        we,
  output [31:0] rd1,rd2,
  //-TEST ONLY-
  output [31:0] t1,t2,t3,t4
);

localparam REG_LENGTH = 32;

reg [31:0] regs [0:REG_LENGTH - 1];

reg [31:0] rd_rg1, rd_rg2; 
integer i;

assign rd1 = rd_rg1;
assign rd2 = rd_rg2;

always@(posedge clk, negedge res)
begin
  if(!res)
  begin
    rd_rg1 <= 32'd0;
    rd_rg2 <= 32'd0;
    for(i = 0; i < 32-1; i = i+1)
    begin
      regs [i] <= 32'd0;
    end
  end
  else begin
        //$display("%b", regs[9]);
    if(!we)
    begin
      rd_rg1 <= regs [a1];
      rd_rg2 <= regs [a2];
    end
    else
    begin
      regs [a3] <= wd3;
    end
  end
end
//  -TEST ONLY-
assign t1 = regs [9];
assign t2 = regs [10];
assign t3 = regs [11];
assign t4 = regs [12];

endmodule