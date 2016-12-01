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
  output reg   reg_write, sh_or_imm,
  output reg   [3:0] alu_control
);

//Name of states
localparam FETCH 				= 5'd0;
localparam DECODE 			= 5'd1;
localparam MEM_ADR 			= 5'd2;
localparam MEM_RD 			= 5'd3;
localparam MEM_WR_BC 		= 5'd4;
localparam MEM_WR 			= 5'd5;
localparam EXECUTE 			= 5'd6;
localparam ALU_WR_BC 		= 5'd7;
localparam BRANCH 			= 5'd8;
localparam ADDI_EXECUTE = 5'd9;
localparam ADDI_WR_BC 	= 5'd10;
localparam IDLE 				= 5'd11;
localparam LW_WAIT   		= 5'd12;
localparam PROD_WAIT1		= 5'd13;
localparam PROD_WAIT2		= 5'd14;
//opcodec
localparam LW   = 6'b100011;
localparam SW   = 6'b101011;
localparam R_T  = 6'b000000;
localparam BEQ  = 6'b000100;
localparam ADDI = 6'b001000;
//alu_control values
localparam A_ADD = 4'b0010;
localparam A_SUB = 4'b0110;
localparam A_AND = 4'b0000;
localparam A_OR  = 4'b0001;
localparam A_PRD = 4'b0011;
localparam A_SLT = 4'b0111;
localparam A_LSH = 4'b1000;
localparam A_RSH = 4'b1001;
//funct
localparam F_ADD 	= 6'b100000;
localparam F_SUB 	= 6'b100010;
localparam F_AND 	= 6'b100100;
localparam F_OR 	= 6'b100101;
localparam F_SLT 	= 6'b101010;
localparam F_PROD = 6'b100110;
localparam F_LSH 	= 6'b000000;
localparam F_RSH  = 6'b000001; 

reg [4:0] state, n_state;
reg [1:0] alu_op;
reg branch;

wire [5:0] opcode, funct;
assign opcode = instr [31:26];
assign funct = instr [5:0];

always@(posedge clk or negedge res)
if(!res)
	state <= FETCH;
 else
 	state <= n_state;
  
always@*
begin:main_fsm
n_state = state;
case(state)//synthesis parallel_case
	FETCH : n_state = DECODE;
  DECODE: n_state = IDLE;
  IDLE:begin
          if((opcode == LW) | (opcode == SW))
            n_state = MEM_ADR;
          else if(opcode == R_T)
            n_state = EXECUTE;
          else if(opcode == BEQ)
            n_state = BRANCH;    
          else if(opcode == ADDI)
            n_state = ADDI_EXECUTE;
  end
  MEM_ADR: begin
    if(opcode == LW)
      n_state = MEM_RD;
    else if(opcode == SW)
      n_state = MEM_WR;	  	
  end
  
  MEM_RD: 	 		n_state = LW_WAIT;
  LW_WAIT:			n_state = MEM_WR_BC;
  MEM_WR_BC: 		n_state = FETCH;
  MEM_WR:		 		n_state = FETCH;
  EXECUTE:begin
  	if(funct == F_PROD)
    	n_state = PROD_WAIT1;
    else
  		n_state = ALU_WR_BC;
  end
  PROD_WAIT1: n_state = PROD_WAIT2;
  PROD_WAIT2: n_state = ALU_WR_BC;
  ALU_WR_BC:		n_state = FETCH;
  BRANCH:		 		n_state = FETCH;
  ADDI_EXECUTE:	n_state = ADDI_WR_BC;
  ADDI_WR_BC:		n_state = FETCH;
endcase
end //main_fsm

always@(posedge clk or negedge res)
begin:seq_out
	if(!res)begin
  	alu_op   <= 2'b00;
    ir_write <= 1'b0;
    pc_write <= 1'b0;
    branch   <= 1'b0;
    sh_or_imm <= 1'b0;
  end
  else 
  	case(state)
    	FETCH: begin
      	i_or_d 		<= 1'b0;
        alu_src_a <= 1'b0;
        alu_src_b <= 2'b01;
        alu_op 		<= 2'b00;
        pc_src 		<= 1'b0;
        
        ir_write 	<= 1'b1;
        pc_write 	<= 1'b1;
        reg_write <= 1'b0;
        mem_write <= 1'b0;
        branch 		<= 1'b0;
      end
      DECODE:begin
      	alu_src_a <= 1'b0;
        alu_src_b <= 2'b11;
        alu_op 		<= 2'b00;
        ir_write  <= 1'b0;
        pc_write  <= 1'b0;

      end
      IDLE: begin
      	if((opcode == R_T) && ((funct == F_RSH)||(funct == F_LSH)))
        	sh_or_imm <= 1'b0;
        else
        	sh_or_imm <= 1'b1;
      end
      MEM_ADR:begin
      	alu_src_a <= 1'b1;
        alu_src_b <= 2'b10;
        alu_op 		<= 2'b00;
      end
      MEM_RD:begin
      	i_or_d <= 1'b1;	
      end
      LW_WAIT: i_or_d <= 1'b0;
      MEM_WR_BC:begin
      	reg_dst 	 <= 1'b0;
        mem_to_reg <= 1'b1;
        reg_write  <= 1'b1;
      end
      MEM_WR:begin
      	i_or_d 		<= 1'b1;
				mem_write <= 1'b1;        
      end
      EXECUTE:begin
      	alu_src_a <= 1'b1;
        alu_src_b <= 2'b00;
        alu_op 		<= 2'b10;
      end
      ALU_WR_BC:begin
      	reg_dst 	 <= 1'b1;
        mem_to_reg <= 1'b0;
        reg_write  <= 1'b1;
      end
      BRANCH:begin
      	alu_src_a <= 1'b1;
        alu_src_b <= 2'b00;
        alu_op 		<= 2'b01;
        pc_src 		<= 1'b1;
        branch 		<= 1'b1;
      end
      ADDI_EXECUTE:begin
      	alu_src_a <= 1'b1;
        alu_src_b <= 2'b10;
        alu_op 		<= 2'b00;
      end
      ADDI_WR_BC:begin
      	reg_dst 	 <= 1'b0;
        mem_to_reg <= 1'b0;
        reg_write  <= 1'b1;
      end
      
    endcase
end//seq_out

 
 
always@*
begin:alu_decoder
  if(!res)
    alu_control = A_ADD;
  else begin
    if(alu_op == 2'b00)
      alu_control = A_ADD;
    else if(alu_op == 2'b01)
      alu_control =A_SUB;
    else if(alu_op == 2'b10)
    begin
    	case(funct)
      	F_ADD:alu_control 	= A_ADD;
        F_SUB:alu_control 	= A_SUB;
        F_AND:alu_control 	= A_AND;
        F_OR :alu_control 	= A_OR;
        F_SLT:alu_control 	= A_SLT;
        F_PROD: alu_control = A_PRD;
        F_LSH: alu_control = A_LSH;
        F_RSH: alu_control = A_RSH;
      endcase
     end
  end
end//alu_decoder

assign pc_en = (alu_zero & branch) | pc_write;

endmodule