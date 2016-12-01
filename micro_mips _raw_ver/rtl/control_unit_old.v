module control_unit(
  input [31:0] instr,
  input        clk,
  input        res,
  input        alu_zero,
  output reg   mem_to_reg, reg_dst,
  output reg   i_or_d, pc_src, alu_src_a,
  output reg   [1:0] alu_src_b,
  output reg   ir_write, mem_write, pc_write,
  output       pc_en,
  output reg   reg_write,
  output reg   [2:0] alu_control
);
//Name of states
localparam FETCH = 8'd0;
localparam DECODE = 8'd1;
localparam MEM_ADR = 8'd2;
localparam MEM_RD = 8'd3;
localparam MEM_WR_BC = 8'd4;
localparam MEM_WR = 8'd5;
localparam EXECUTE = 8'd6;
localparam ALU_WR_BC = 8'd7;
localparam BRANCH = 8'd8;
localparam ADDI_EXECUTE = 8'd9;
localparam ADDI_WR_BC = 8'd10;
localparam IDLE = 8'd100;
localparam LW_WAIT = 8'd101;
//opcodec
localparam LW   = 6'b100011;
localparam SW   = 6'b101011;
localparam R_T  = 6'b000000;
localparam BEQ  = 6'b000100;
localparam ADDI = 6'b001000;
//alu_control values
localparam A_ADD = 3'b010;
localparam A_SUB = 3'b110;
localparam A_AND = 3'b000;
localparam A_OR = 3'b001;
localparam A_SLT = 3'b111;
//funct
localparam F_ADD = 6'b100000;
localparam F_SUB = 6'b100010;
localparam F_AND = 6'b100100;
localparam F_OR = 6'b100101;
localparam F_SLT = 6'b101010;

reg [7:0] state;
reg [1:0] alu_op;
reg branch;

wire [5:0] opcode, funct;
assign opcode = instr [31:26];
assign funct = instr [5:0];

always@(posedge clk, negedge res)
begin:main_decoder
  if(!res)
  begin
    state <= FETCH;
    alu_op <= 2'b00;
    ir_write <= 1'b0;
    pc_write <= 1'b0;
    branch <= 1'b0;
  end
  else 
    case (state)
LW_WAIT: state <= MEM_WR_BC;
IDLE:  begin
          if((opcode == LW) | (opcode == SW))
            state <= MEM_ADR;
          else if(opcode == R_T)
            state <= EXECUTE;
          else if(opcode == BEQ)
            state <= BRANCH;    
          else if(opcode == ADDI)
            state <= ADDI_EXECUTE;
       end
FETCH: begin
        i_or_d <= 1'b0;
        alu_src_a <= 1'b0;
        alu_src_b <= 2'b01;
        alu_op <= 2'b00;
        pc_src <= 1'b0;
        
        ir_write <= 1'b1;
        pc_write <= 1'b1;
        reg_write <= 1'b0;
        mem_write <= 1'b0;
        branch <= 1'b0;
        
        state <= DECODE;
        
      end
DECODE: begin
          alu_src_a <= 1'b0;
          alu_src_b <= 2'b11;
          alu_op <= 2'b00;
          
          ir_write <= 1'b0;
          pc_write <= 1'b0;
          
          state <= IDLE;
      end
MEM_ADR: begin
          alu_src_a <= 1'b1;
          alu_src_b <= 2'b10;
          alu_op <= 2'b00;
          
          if(opcode == LW)
            state <= MEM_RD;
          else if(opcode == SW)
            state <= MEM_WR;
      end
MEM_RD: begin
          i_or_d <= 1;
          
          state <= LW_WAIT;
      end
MEM_WR_BC: begin
          reg_dst <= 1'b0;
          mem_to_reg <= 1'b1;
          reg_write <= 1'b1;
          
          state <= FETCH;
      end
MEM_WR: begin
          i_or_d <= 1'b1;
          mem_write <= 1'b1;
          
          state <= FETCH;
      end
EXECUTE: begin
          alu_src_a <= 1'b1;
          alu_src_b <= 2'b00;
          alu_op <= 2'b10;
          
          state <= ALU_WR_BC;
      end
ALU_WR_BC: begin
          reg_dst <= 1'b1;
          mem_to_reg <= 1'b0;
          reg_write <= 1'b1;
          
          state <= FETCH;
      end
BRANCH: begin
          alu_src_a <= 1'b1;
          alu_src_b <= 2'b00;
          alu_op <= 01;
          pc_src <= 1'b1;
          branch <= 1'b1; 
          
          state <= FETCH;
      end
ADDI_EXECUTE: begin
          alu_src_a <= 1'b1;
          alu_src_b <= 2'b10;
          alu_op <= 00;
          
          state <= ADDI_WR_BC;
      end
ADDI_WR_BC: begin
          reg_dst <= 1'b0;
          mem_to_reg <= 1'b0;
          reg_write <= 1'b1;
          
          state <= FETCH;
      end
    endcase
end

always@*
begin:alu_decoder
  if(!res)
  begin
    alu_control = A_ADD;
  end
  else begin
    if(alu_op == 2'b00)
      alu_control = A_ADD;
    else if(alu_op == 2'b01)
      alu_control =A_SUB;
    else if(alu_op == 2'b10)
    begin
      if(funct == F_ADD)
        alu_control = A_ADD;
      else if(funct == F_SUB)
        alu_control = A_SUB;
      else if(funct == F_AND)
        alu_control = A_AND;
      else if(funct == F_OR)
        alu_control = A_OR;
      else if(funct == F_SLT)
        alu_control = A_SLT;
    end
  end
end

assign pc_en = (alu_zero & branch) | pc_write;

endmodule