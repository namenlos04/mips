module shell(
input clk, 
input res,
input [31:0] mem_in,
input [31:0]  mem_adr,
input 			 instr_en,
//-TEST ONLY-
output [31:0] test_mem,
output [31:0] t1, t2, t3, t4
);
//outputs of internal modules
wire[31:0] pc_out, mem_rd, reg_rd1, reg_rd2;

//inputs of internal modules
wire [31:0] pc_in, mem_a, mem_wd;
wire [4:0] reg_a1, reg_a2, reg_a3;
wire [31:0] reg_wd3;
wire reg_we3, pc_en, mem_we;
wire alu_zero_flag;
//Control signals
wire pc_write, branch, pc_src, reg_write, i_or_d;
wire mem_write, ir_write, reg_dst, mem_to_reg;
wire [3:0] alu_control;
wire [1:0] alu_scr_b;
wire alu_scr_a, sh_or_imm;


//Internal Signals
wire [31:0] alu_result;
wire [31:0] sign_imm;
wire [31:0] src_a;
wire [31:0] shamt,scr_b_sh_or_imm;
reg  [31:0] src_b;
reg  [31:0] mem_dat_buff;

reg [31:0] mem_adr_buff;
reg[31:0] reg_out_buff1, reg_out_buff2;
reg [31:0] alu_out;

reg_file reg_file1(
  .a1(reg_a1),
  .a2(reg_a2),
  .a3(reg_a3),
  .wd3(reg_wd3),
  .we(reg_write),
  .clk(clk),
  .res(res),
  .rd1(reg_rd1),
  .rd2(reg_rd2),
  .t1(t1),
  .t2(t2),
  .t3(t3),
  .t4(t4)
);

instr_dat_mem memory_file(
  .a(mem_a),
  .wd(reg_out_buff2),
  .we(mem_write), 
  .mem_in(mem_in),
  .mem_adr(mem_adr),
  .instr_en(instr_en),
  .clk(clk),
  .res(res),
  .rd(mem_rd),
  .test_mem(test_mem)
);

pc pc1(
  .in(pc_in),
  .pc_adr(mem_adr),
  .instr_en(instr_en),
  .out(pc_out),
  .clk(clk),
  .res(res),
  .en(pc_en)
);

alu alu1(
  .alu_control(alu_control),
  .scr_a (src_a),
  .scr_b (src_b),
  .alu_result(alu_result),
  .zero_flag(alu_zero_flag)
);

control_unit control_unit1 (
  .instr(mem_adr_buff),
  .clk(clk),
  .res(res),
  .alu_zero(alu_zero_flag),
  .mem_to_reg(mem_to_reg),
  .reg_dst(reg_dst),
  .i_or_d(i_or_d),
  .pc_src(pc_src),
  .alu_src_a(alu_scr_a),
  .alu_src_b(alu_scr_b),
  .ir_write(ir_write),
  .mem_write(mem_write),
  .pc_write(pc_write),
  .pc_en(pc_en),
  .reg_write(reg_write),
  .sh_or_imm(sh_or_imm),
  .alu_control(alu_control)
);


always@(posedge clk, negedge res)
begin:mem_adr_buf
  if(!res)
    mem_adr_buff <= 32'd0;
  else begin
    if(ir_write)
      mem_adr_buff <= mem_rd;
    else
      mem_adr_buff <= mem_adr_buff;
  end
end


always@(posedge clk, negedge res)
begin
  if(!res)
    mem_dat_buff <= 32'd0;
  else
    mem_dat_buff <= mem_rd;
end

always @(posedge clk, negedge res)
begin: alu_out_buff
  if(!res)
    alu_out <= 32'd0;
  else
    alu_out <= alu_result;
end

always@(posedge clk, negedge res)
 begin:reg_out
  if(!res)
  begin
    reg_out_buff1 <= 32'd0;
    reg_out_buff2 <= 32'd0;
  end
  else begin
    reg_out_buff1 <= reg_rd1;
    reg_out_buff2 <= reg_rd2;
  end
end



assign sign_imm = {{16{mem_adr_buff[15]}}, mem_adr_buff[15:0]};
assign shamt = {sign_imm[30:0], 1'b0};

//MUXes 
assign reg_a3 = (reg_dst) ? mem_adr_buff [15:11] : mem_adr_buff [20:16];
assign mem_a = (i_or_d) ?  alu_out : pc_out;
assign src_a = (alu_scr_a) ? reg_rd1 : pc_out;
assign pc_in = (pc_src) ? alu_out : alu_result;

always@*
begin
  case (alu_scr_b)
  2'b00: src_b = scr_b_sh_or_imm;
  2'b01: src_b = 32'd1;
  2'b10: src_b = sign_imm;
  2'b11: src_b = shamt;
  endcase
end
 
assign scr_b_sh_or_imm = (sh_or_imm) ? reg_rd2 : mem_adr_buff[10:6]; 
assign reg_a1 = mem_adr_buff [25:21];
assign reg_a2 = mem_adr_buff [20:16];
assign reg_wd3 = (mem_to_reg) ? mem_dat_buff : alu_out;

endmodule