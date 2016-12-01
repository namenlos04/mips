module alu(
  input [2:0] alu_control,
  input [31:0] scr_a, scr_b,
  output [31:0] alu_result,
  output        zero_flag
);

parameter ALU_AND = 2'b00;
parameter ALU_OR  = 2'b01;
parameter ALU_SUM = 2'b10;
parameter ALU_SLT = 2'b11;

wire cout1, cout2, cout3, cout4;
wire[31:0] add_res;

wire [31:0] add_b;

reg [31:0] alu_res;

assign add_b = (alu_control[2]) ? (~scr_b) : scr_b;

assign alu_result = alu_res;
add add1 (
  .a(scr_a[7:0]),
  .b(add_b[7:0]),
  .cin(alu_control[2]),
  .cout(cout1),
  .s(add_res[7:0])
);

add add2 (
  .a(scr_a[15:8]),
  .b(add_b[15:8]),
  .cin(cout1),
  .cout(cout2),
  .s(add_res[15:8])
);

add add3 (
  .a(scr_a[23:16]),
  .b(add_b[23:16]),
  .cin(cout2),
  .cout(cout3),
  .s(add_res[23:16])
);

add add4 (
  .a(scr_a[31:24]),
  .b(add_b[31:24]),
  .cin(cout3),
  .cout(cout4),
  .s(add_res[31:24])
);

/*assign alu_result = (alu_control[1:0] == ALU_AND)& (scr_a && scr_b) |
                    (alu_control[1:0] == ALU_OR) & (scr_a || scr_b) |
                    (alu_control[1:0] == ALU_SUM) & (add_res) |
                    (alu_control[1:0] == ALU_SLT) & ({32{add_res[31]}});*/

always@*
//(alu_control, scr_a, scr_b)
begin
  case(alu_control[1:0])
  ALU_AND:
  begin
    if(alu_control[2])
      alu_res = scr_a & (~scr_b );
    else 
      alu_res = scr_a & (scr_b );
  end
  ALU_OR: begin
    if(alu_control[2])
      alu_res = scr_a | (~scr_b);
    else
      alu_res = scr_a | (scr_b);
    end
  ALU_SUM: begin
      alu_res = add_res;
    end
  ALU_SLT: begin
      alu_res = {32{add_res[31]}};
    end
  endcase
end

assign zero_flag =  ((alu_res == 32'd0) & (alu_control[1:0] == ALU_SUM))? 1'b1 : 1'b0;

endmodule