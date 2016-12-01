module boot_prod (
	input[31:0] a,
  input[31:0] b,
  output[31:0] result,
  output			 of_flag
);
//-cout-
wire op1, op2, op3, op4, op5, op6, op7, op8;
wire op9, op10, op11, op12, op13, op14, op15, op16;
wire op17, op18, op19, op20, op21, op22, op23, op24;
wire op25, op26, op27, op28, op29, op30, op31, op32;
// -Parts of Multiply-
wire [31:0] a1, a2, a3, a4, a5, a6, a7, a8, a9; 
wire [31:0] a10, a11, a12, a13, a14, a15, a16, a17;
wire [31:0] a18, a19, a20, a21, a22, a23, a24, a25;
wire [31:0] a26, a27, a28, a29, a30, a31, a0, b0;
wire [31:0] b1, b2, b3, b4, b5, b6, b7, b8, b9, b10;
wire [31:0] b11, b12, b13, b14, b15, b16, b17, b18;
wire [31:0] b19, b20, b21, b22, b23, b24, b25, b26;
wire [31:0] b27, b28, b29, b30, b31;

wire [1:0] first_a;
wire 	   i_o_n;

assign first_a = {a[0],1'b0};
assign i_o_n = b[31];


//-First Iteration-
prod_mux mux1(
	.a(first_a),
  .r_in(32'd0),
  .b_scr(b),
  .cout(op1), 
  .b_out(a0),
  .i_o_n(i_o_n),
  .r_out(b0)
);
//-2-
prod_mux mux2(
	.a(a[1:0]),
  .r_in(b0),
  .b_scr(a0),
  .cout(op2), 
  .b_out(a1),
  .i_o_n(i_o_n),
  .r_out(b1)
);
//-3-
prod_mux mux3(
	.a(a[2:1]),
  .r_in(b1),
  .b_scr(a1),
  .cout(op3), 
  .b_out(a2),
  .i_o_n(i_o_n),
  .r_out(b2)
);
//-4-
prod_mux mux4(
	.a(a[3:2]),
  .r_in(b2),
  .b_scr(a2),
  .cout(op4), 
  .b_out(a3),
  .i_o_n(i_o_n),
  .r_out(b3)
);
//-5-
prod_mux mux5(
	.a(a[4:3]),
  .r_in(b3),
  .b_scr(a3),
  .cout(op5), 
  .b_out(a4),
  .i_o_n(i_o_n),
  .r_out(b4)
);
//-6-
prod_mux mux6(
	.a(a[5:4]),
  .r_in(b4),
  .b_scr(a4),
  .cout(op6), 
  .b_out(a5),
  .i_o_n(i_o_n),
  .r_out(b5)
);
//-7-
prod_mux mux7(
	.a(a[6:5]),
  .r_in(b5),
  .b_scr(a5),
  .cout(op7), 
  .b_out(a6),
  .i_o_n(i_o_n),
  .r_out(b6)
);
//-8-
prod_mux mux8(
	.a(a[7:6]),
  .r_in(b6),
  .b_scr(a6),
  .cout(op8), 
  .b_out(a7),
  .i_o_n(i_o_n),
  .r_out(b7)
);
//-9-
prod_mux mux9(
	.a(a[8:7]),
  .r_in(b7),
  .b_scr(a7),
  .cout(op9), 
  .b_out(a8),
  .i_o_n(i_o_n),
  .r_out(b8)
);
//-10-
prod_mux mux10(
	.a(a[9:8]),
  .r_in(b8),
  .b_scr(a8),
  .cout(op10), 
  .b_out(a9),
  .i_o_n(i_o_n),
  .r_out(b9)
);
//-11-
prod_mux mux11(
	.a(a[10:9]),
  .r_in(b9),
  .b_scr(a9),
  .cout(op11), 
  .b_out(a10),
  .i_o_n(i_o_n),
  .r_out(b10)
);
//-12-
prod_mux mux12(
	.a(a[11:10]),
  .r_in(b10),
  .b_scr(a10),
  .cout(op12), 
  .b_out(a11),
  .i_o_n(i_o_n),
  .r_out(b11)
);
//-13-
prod_mux mux13(
	.a(a[12:11]),
  .r_in(b11),
  .b_scr(a11),
  .cout(op13), 
  .b_out(a12),
  .i_o_n(i_o_n),
  .r_out(b12)
);
//-14-
prod_mux mux14(
	.a(a[13:12]),
  .r_in(b12),
  .b_scr(a12),
  .cout(op14), 
  .b_out(a13),
  .i_o_n(i_o_n),
  .r_out(b13)
);
//-15-
prod_mux mux15(
	.a(a[14:13]),
  .r_in(b13),
  .b_scr(a13),
  .cout(op15), 
  .b_out(a14),
  .i_o_n(i_o_n),
  .r_out(b14)
);
//-16-
prod_mux mux16(
	.a(a[15:14]),
  .r_in(b14),
  .b_scr(a14),
  .cout(op16), 
  .b_out(a15),
  .i_o_n(i_o_n),
  .r_out(b15)
);
//-17-
prod_mux mux17(
	.a(a[16:15]),
  .r_in(b15),
  .b_scr(a15),
  .cout(op17), 
  .b_out(a16),
  .i_o_n(i_o_n),
  .r_out(b16)
);
//-18-
prod_mux mux18(
	.a(a[17:16]),
  .r_in(b16),
  .b_scr(a16),
  .cout(op18), 
  .b_out(a17),
  .i_o_n(i_o_n),
  .r_out(b17)
);
//-19-
prod_mux mux19(
	.a(a[18:17]),
  .r_in(b17),
  .b_scr(a17),
  .cout(op19), 
  .b_out(a18),
  .i_o_n(i_o_n),
  .r_out(b18)
);
//-20-
prod_mux mux20(
	.a(a[19:18]),
  .r_in(b18),
  .b_scr(a18),
  .cout(op20), 
  .b_out(a19),
  .i_o_n(i_o_n),
  .r_out(b19)
);
//-21-
prod_mux mux21(
	.a(a[20:19]),
  .r_in(b19),
  .b_scr(a19),
  .cout(op21), 
  .b_out(a20),
  .i_o_n(i_o_n),
  .r_out(b20)
);
//-22-
prod_mux mux22(
	.a(a[21:20]),
  .r_in(b20),
  .b_scr(a20),
  .cout(op22), 
  .b_out(a21),
  .i_o_n(i_o_n),
  .r_out(b21)
);
//-23-
prod_mux mux23(
	.a(a[22:21]),
  .r_in(b21),
  .b_scr(a21),
  .cout(op23), 
  .b_out(a22),
  .i_o_n(i_o_n),
  .r_out(b22)
);
//-24-
prod_mux mux24(
	.a(a[23:22]),
  .r_in(b22),
  .b_scr(a22),
  .cout(op24), 
  .b_out(a23),
  .i_o_n(i_o_n),
  .r_out(b23)
);
//-25-
prod_mux mux25(
	.a(a[24:23]),
  .r_in(b23),
  .b_scr(a23),
  .cout(op25), 
  .b_out(a24),
  .i_o_n(i_o_n),
  .r_out(b24)
);
//-26-
prod_mux mux26(
	.a(a[25:24]),
  .r_in(b24),
  .b_scr(a24),
  .cout(op26), 
  .b_out(a25),
  .i_o_n(i_o_n),
  .r_out(b25)
);
//-27-
prod_mux mux27(
	.a(a[26:25]),
  .r_in(b25),
  .b_scr(a25),
  .cout(op27), 
  .b_out(a26),
  .i_o_n(i_o_n),
  .r_out(b26)
);
//-28-
prod_mux mux28(
	.a(a[27:26]),
  .r_in(b26),
  .b_scr(a26),
  .cout(op28), 
  .b_out(a27),
  .i_o_n(i_o_n),
  .r_out(b27)
);
//-29-
prod_mux mux29(
	.a(a[28:27]),
  .r_in(b27),
  .b_scr(a27),
  .cout(op29), 
  .b_out(a28),
  .i_o_n(i_o_n),
  .r_out(b28)
);
//-30-
prod_mux mux30(
	.a(a[29:28]),
  .r_in(b28),
  .b_scr(a28),
  .cout(op30), 
  .b_out(a29),
  .i_o_n(i_o_n),
  .r_out(b29)
);
//-31-
prod_mux mux31(
	.a(a[30:29]),
  .r_in(b29),
  .b_scr(a29),
  .cout(op31), 
  .b_out(a30),
  .r_out(b30)
);
//-32-
prod_mux mux32(
	.a(a[31:30]),
  .r_in(b30),
  .b_scr(a30),
  .cout(op32), 
  .b_out(a31),
  .i_o_n(i_o_n),
  .r_out(b31)
);

assign result = b31;

/*assign result[31:0] = {b31[0],b31[1],b31[2], b31[3], b31[4], b31[5], b31[6],
					   b31[7], b31[8], b31[9], b31[10], b31[11], b31[12], b31[13],
					   b31[14], b31[15], b31[16], b31[17], b31[18], b31[19], b31[20], 
					   b31[21], b31[22], b31[23], b31[24], b31[25], b31[26], b31[27],
					   b31[28], b31[29], b31[30], b31[31]};*/
endmodule