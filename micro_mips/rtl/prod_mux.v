module prod_mux (
	input  [1:0] 			a,
  input  [31:0] 		r_in,
  input [31:0] 			b_scr,
  input 				i_o_n,
  output 						cout,
  output reg [31:0] b_out,
  output 		 [31:0] r_out
);

reg op;
wire[31:0] add_out;
reg [31:0] out;

wire pos, neg;
wire [31:0] b_n;
reg [31:0] b_add;

assign pos = i_o_n;
assign neg = ~i_o_n;
assign b_n = ~b_scr;

localparam DO_NTHN_LOW = 2'b00;
localparam DO_NTHN_HIGH = 2'b11;
localparam SUB = 2'b10;
localparam ADD = 2'b01;

add_32 add1(
	.a(r_in),
  .b(b_add), 
  .ad_o_sb(op),
  .rslt(add_out),
  .cout(cout)
);

always@*
begin
	case (a)
  DO_NTHN_LOW:begin
	b_out = {b_scr[30:0],1'b0};
	out = r_in;
  end
  DO_NTHN_HIGH:begin
	b_out = {b_scr[30:0],1'b0};
	out = r_in;
  end
  SUB: begin
	op = 1'b1;
	b_out = {b_scr[30:0],1'b0};
	b_add = b_n;
	out = add_out;
	end  
  ADD:begin
  	op = 1'b0;
	b_out = {b_scr[30:0],1'b0};
	out = add_out;
	b_add = b_scr;
  end
  endcase
end

assign r_out =  out;

endmodule