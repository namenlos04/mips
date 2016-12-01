module prod_n(
	input[31:0] a,
  input[31:0] b,
  output[31:0] result,
  output			 of_flag
);
wire [31:0] prod_w [0:31];
wire [31:0] prod [0:31];

wire [31:0] add_res_011, add_res_021, add_res_031, add_res_041;
wire [31:0] add_res_051, add_res_061, add_res_071, add_res_081;
wire [31:0] add_res_091, add_res_101, add_res_111, add_res_121;
wire [31:0] add_res_131, add_res_141, add_res_151, add_res_161;
wire [31:0] add_res_171, add_res_181, add_res_191, add_res_201;
wire [31:0] add_res_211, add_res_221, add_res_231, add_res_241;
wire [31:0] add_res_251, add_res_261, add_res_271, add_res_281;
wire [31:0] add_res_291, add_res_301, add_res_311;

wire [31:0] expl1, expl2;

assign expl1 = prod_w[28];
assign expl2 = prod_w[29];

wire cout_011, cout_012, cout_013, cout_014;
wire cout_021, cout_022, cout_023, cout_024;
wire cout_031, cout_032, cout_033, cout_034;
wire cout_041, cout_042, cout_043, cout_044;
wire cout_051, cout_052, cout_053, cout_054;
wire cout_061, cout_062, cout_063, cout_064;
wire cout_071, cout_072, cout_073, cout_074;
wire cout_082, cout_083, cout_084;
wire cout_092, cout_093, cout_094;
wire cout_102, cout_103, cout_104;
wire cout_112, cout_113, cout_114;
wire cout_122, cout_123, cout_124;
wire cout_132, cout_133, cout_134;
wire cout_142, cout_143, cout_144;
wire cout_152, cout_153, cout_154;
wire cout_163, cout_164, cout_173, cout_174;
wire cout_183, cout_184, cout_193, cout_194;
wire cout_203, cout_204, cout_213, cout_214;
wire cout_223, cout_224, cout_233, cout_234;
wire cout_244, cout_254, cout_264, cout_274;
wire cout_284, cout_294, cout_304, cout_314;

generate
genvar i;
for (i=0; i<32; i=i+1)
  begin:gen1
  	assign prod[i] = {(a[31] & b[i]), (a[30] & b[i]),(a[29] & b[i]), (a[28] & b[i]), 
    						 (a[27] & b[i]),(a[26] & b[i]),(a[25] & b[i]),(a[24] & b[i]),
                 (a[23] & b[i]),(a[22] & b[i]),(a[21] & b[i]),(a[20] & b[i]),
                 (a[19] & b[i]),(a[18] & b[i]),(a[17] & b[i]),(a[16] & b[i]),
                 (a[15] & b[i]),(a[14] & b[i]),(a[13] & b[i]),(a[12] & b[i]),
                 (a[11] & b[i]),(a[10] & b[i]),(a[9] & b[i]),(a[8] & b[i]),
                 (a[7] & b[i]),(a[6] & b[i]),(a[5] & b[i]),(a[4] & b[i]),
                 (a[3] & b[i]),(a[2] & b[i]),(a[1] & b[i]),(a[0] & b[i])};
  end
endgenerate
assign prod_w[0]=prod[0];
assign prod_w[1] = {prod[1][30:0], 1'b0};
assign prod_w[2] = {prod[2][29:0], 2'd0};
assign prod_w[3] = {prod[3][28:0], 3'd0};
assign prod_w[4] = {prod[4][27:0], 4'd0};
assign prod_w[5] = {prod[5][26:0], 5'd0};
assign prod_w[6] = {prod[6][25:0], 6'd0};
assign prod_w[7] = {prod[7][24:0], 7'd0};
assign prod_w[8] = {prod[8][23:0], 8'd0};
assign prod_w[9] = {prod[9][22:0], 9'd0};
assign prod_w[10] = {prod[10][21:0], 10'd0};
assign prod_w[11] = {prod[11][20:0], 11'd0};
assign prod_w[12] = {prod[12][19:0], 12'd0};
assign prod_w[13] = {prod[13][18:0], 13'd0};
assign prod_w[14] = {prod[14][17:0], 14'd0};
assign prod_w[15] = {prod[15][16:0], 15'd0};
assign prod_w[16] = {prod[16][15:0], 16'd0};
assign prod_w[17] = {prod[17][14:0], 17'd0};
assign prod_w[18] = {prod[18][13:0], 18'd0};
assign prod_w[19] = {prod[19][12:0], 19'd0};
assign prod_w[20] = {prod[20][11:0], 20'd0};
assign prod_w[21] = {prod[21][10:0], 21'd0};
assign prod_w[22] = {prod[22][9:0], 22'd0};
assign prod_w[23] = {prod[23][8:0], 23'd0};
assign prod_w[24] = {prod[24][7:0], 24'd0};
assign prod_w[25] = {prod[25][6:0], 25'd0};
assign prod_w[26] = {prod[26][5:0], 26'd0};
assign prod_w[27] = {prod[27][4:0], 27'd0};
assign prod_w[28] = {prod[28][3:0], 28'd0};
assign prod_w[29] = {prod[29][2:0], 29'd0};
assign prod_w[30] = {prod[30][1:0], 30'd0};
assign prod_w[31] = {prod[31][0:0], 31'd0};

add add_011(
	.a(prod_w[0][7:0]),
  .b(prod_w[1][7:0]),
  .cin(1'b0),
  .s(add_res_011[7:0]),
  .cout(cout_011)
);

add add_012(
	.a(prod_w[0][15:8]),
  .b(prod_w[1][15:8]),
  .cin(cout_011),
  .s(add_res_011[15:8]),
  .cout(cout_012)
);

add add_013(
	.a(prod_w[0][23:16]),
  .b(prod_w[1][23:16]),
  .cin(cout_012),
  .s(add_res_011[23:16]),
  .cout(cout_013)
);

add add_014(
	.a(prod_w[0][31:24]),
  .b(prod_w[1][31:24]),
  .cin(cout_013),
  .s(add_res_011[31:24]),
  .cout(cout_014)
);
// -SECOND LAYER-
add add_021(
	.a(add_res_011[7:0]),
  .b(prod_w[2][7:0]),
  .cin(1'b0),
  .s(add_res_021[7:0]),
  .cout(cout_021)
);

add add_022(
	.a(add_res_011[15:8]),
  .b(prod_w[2][15:8]),
  .cin(cout_021),
  .s(add_res_021[15:8]),
  .cout(cout_022)
);

add add_023(
	.a(add_res_011[23:16]),
  .b(prod_w[2][23:16]),
  .cin(cout_022),
  .s(add_res_021[23:16]),
  .cout(cout_023)
);

add add_024(
	.a(add_res_011[31:24]),
  .b(prod_w[2][31:24]),
  .cin(cout_023),
  .s(add_res_021[31:24]),
  .cout(cout_024)
);
//-THIRD LAYER-
add add_031(
	.a(add_res_021[7:0]),
  .b(prod_w[3][7:0]),
  .cin(1'b0),
  .s(add_res_031[7:0]),
  .cout(cout_031)
);

add add_032(
	.a(add_res_021[15:8]),
  .b(prod_w[3][15:8]),
  .cin(cout_031),
  .s(add_res_031[15:8]),
  .cout(cout_032)
);

add add_033(
	.a(add_res_021[23:16]),
  .b(prod_w[3][23:16]),
  .cin(cout_032),
  .s(add_res_031[23:16]),
  .cout(cout_033)
);

add add_034(
	.a(add_res_021[31:24]),
  .b(prod_w[3][31:24]),
  .cin(cout_033),
  .s(add_res_031[31:24]),
  .cout(cout_034)
);
//-FORTH LAYER-
add add_041(
	.a(add_res_031[7:0]),
  .b(prod_w[4][7:0]),
  .cin(1'b0),
  .s(add_res_041[7:0]),
  .cout(cout_041)
);

add add_042(
	.a(add_res_031[15:8]),
  .b(prod_w[4][15:8]),
  .cin(cout_041),
  .s(add_res_041[15:8]),
  .cout(cout_042)
);

add add_043(
	.a(add_res_031[23:16]),
  .b(prod_w[4][23:16]),
  .cin(cout_042),
  .s(add_res_041[23:16]),
  .cout(cout_043)
);

add add_044(
	.a(add_res_031[31:24]),
  .b(prod_w[4][31:24]),
  .cin(cout_043),
  .s(add_res_041[31:24]),
  .cout(cout_044)
);
//-FIFTH LAYER-
add add_051(
	.a(add_res_041[7:0]),
  .b(prod_w[5][7:0]),
  .cin(1'b0),
  .s(add_res_051[7:0]),
  .cout(cout_051)
);

add add_052(
	.a(add_res_041[15:8]),
  .b(prod_w[5][15:8]),
  .cin(cout_051),
  .s(add_res_051[15:8]),
  .cout(cout_052)
);

add add_053(
	.a(add_res_041[23:16]),
  .b(prod_w[5][23:16]),
  .cin(cout_052),
  .s(add_res_051[23:16]),
  .cout(cout_053)
);

add add_054(
	.a(add_res_041[31:24]),
  .b(prod_w[5][31:24]),
  .cin(cout_053),
  .s(add_res_051[31:24]),
  .cout(cout_054)
);
//-SIXTH LAYER-
add add_061(
	.a(add_res_051[7:0]),
  .b(prod_w[6][7:0]),
  .cin(1'b0),
  .s(add_res_061[7:0]),
  .cout(cout_061)
);

add add_062(
	.a(add_res_051[15:8]),
  .b(prod_w[6][15:8]),
  .cin(cout_061),
  .s(add_res_061[15:8]),
  .cout(cout_062)
);

add add_063(
	.a(add_res_051[23:16]),
  .b(prod_w[6][23:16]),
  .cin(cout_062),
  .s(add_res_061[23:16]),
  .cout(cout_063)
);

add add_064(
	.a(add_res_051[31:24]),
  .b(prod_w[6][31:24]),
  .cin(cout_063),
  .s(add_res_061[31:24]),
  .cout(cout_064)
);
//-SEVENTH LAYER-
add add_071(
	.a(add_res_061[7:0]),
  .b(prod_w[7][7:0]),
  .cin(1'b0),
  .s(add_res_071[7:0]),
  .cout(cout_071)
);

add add_072(
	.a(add_res_061[15:8]),
  .b(prod_w[7][15:8]),
  .cin(cout_071),
  .s(add_res_071[15:8]),
  .cout(cout_072)
);

add add_073(
	.a(add_res_061[23:16]),
  .b(prod_w[7][23:16]),
  .cin(cout_072),
  .s(add_res_071[23:16]),
  .cout(cout_073)
);

add add_074(
	.a(add_res_061[31:24]),
  .b(prod_w[7][31:24]),
  .cin(cout_073),
  .s(add_res_071[31:24]),
  .cout(cout_074)
);
//-EITH LAYER-
assign add_res_081[7:0] = add_res_071[7:0];

add add_082(
	.a(add_res_071[15:8]),
  .b(prod_w[8][15:8]),
  .cin(1'b0),
  .s(add_res_081[15:8]),
  .cout(cout_082)
);

add add_083(
	.a(add_res_071[23:16]),
  .b(prod_w[8][23:16]),
  .cin(cout_082),
  .s(add_res_081[23:16]),
  .cout(cout_083)
);

add add_084(
	.a(add_res_071[31:24]),
  .b(prod_w[8][31:24]),
  .cin(cout_083),
  .s(add_res_081[31:24]),
  .cout(cout_084)
);
//-NINTH LAYER-
assign add_res_091[7:0] = add_res_071[7:0];

add add_092(
	.a(add_res_081[15:8]),
  .b(prod_w[9][15:8]),
  .cin(1'b0),
  .s(add_res_091[15:8]),
  .cout(cout_092)
);

add add_093(
	.a(add_res_081[23:16]),
  .b(prod_w[9][23:16]),
  .cin(cout_092),
  .s(add_res_091[23:16]),
  .cout(cout_093)
);

add add_094(
	.a(add_res_081[31:24]),
  .b(prod_w[9][31:24]),
  .cin(cout_093),
  .s(add_res_091[31:24]),
  .cout(cout_094)
);
//-TENTH LAYER-
assign add_res_101[7:0] = add_res_071[7:0];

add add_102(
	.a(add_res_091[15:8]),
  .b(prod_w[10][15:8]),
  .cin(1'b0),
  .s(add_res_101[15:8]),
  .cout(cout_102)
);

add add_103(
	.a(add_res_091[23:16]),
  .b(prod_w[10][23:16]),
  .cin(cout_102),
  .s(add_res_101[23:16]),
  .cout(cout_103)
);

add add_104(
	.a(add_res_091[31:24]),
  .b(prod_w[10][31:24]),
  .cin(cout_103),
  .s(add_res_101[31:24]),
  .cout(cout_104)
);
//-ELEVENTH LAYER-
assign add_res_111[7:0] = add_res_071[7:0];

add add_112(
	.a(add_res_101[15:8]),
  .b(prod_w[11][15:8]),
  .cin(1'b0),
  .s(add_res_111[15:8]),
  .cout(cout_112)
);

add add_113(
	.a(add_res_101[23:16]),
  .b(prod_w[11][23:16]),
  .cin(cout_112),
  .s(add_res_111[23:16]),
  .cout(cout_113)
);

add add_114(
	.a(add_res_101[31:24]),
  .b(prod_w[11][31:24]),
  .cin(cout_113),
  .s(add_res_111[31:24]),
  .cout(cout_114)
);
//-TWELVE-
assign add_res_121[7:0] = add_res_111[7:0];

add add_122(
	.a(add_res_111[15:8]),
  .b(prod_w[12][15:8]),
  .cin(1'b0),
  .s(add_res_121[15:8]),
  .cout(cout_122)
);

add add_123(
	.a(add_res_111[23:16]),
  .b(prod_w[12][23:16]),
  .cin(cout_122),
  .s(add_res_121[23:16]),
  .cout(cout_123)
);

add add_124(
	.a(add_res_111[31:24]),
  .b(prod_w[12][31:24]),
  .cin(cout_123),
  .s(add_res_121[31:24]),
  .cout(cout_124)
);
//-THIRTEEN-
assign add_res_131[7:0] = add_res_121[7:0];

add add_132(
	.a(add_res_121[15:8]),
  .b(prod_w[13][15:8]),
  .cin(1'b0),
  .s(add_res_131[15:8]),
  .cout(cout_132)
);

add add_133(
	.a(add_res_121[23:16]),
  .b(prod_w[13][23:16]),
  .cin(cout_132),
  .s(add_res_131[23:16]),
  .cout(cout_133)
);

add add_134(
	.a(add_res_121[31:24]),
  .b(prod_w[13][31:24]),
  .cin(cout_133),
  .s(add_res_131[31:24]),
  .cout(cout_134)
);
//-14-
assign add_res_141[7:0] = add_res_131[7:0];

add add_142(
	.a(add_res_131[15:8]),
  .b(prod_w[14][15:8]),
  .cin(1'b0),
  .s(add_res_141[15:8]),
  .cout(cout_142)
);

add add_143(
	.a(add_res_131[23:16]),
  .b(prod_w[14][23:16]),
  .cin(cout_142),
  .s(add_res_141[23:16]),
  .cout(cout_143)
);

add add_144(
	.a(add_res_131[31:24]),
  .b(prod_w[14][31:24]),
  .cin(cout_143),
  .s(add_res_141[31:24]),
  .cout(cout_144)
);
//-15-
assign add_res_151[7:0] = add_res_141[7:0];

add add_152(
	.a(add_res_141[15:8]),
  .b(prod_w[15][15:8]),
  .cin(1'b0),
  .s(add_res_151[15:8]),
  .cout(cout_152)
);

add add_153(
	.a(add_res_141[23:16]),
  .b(prod_w[15][23:16]),
  .cin(cout_152),
  .s(add_res_151[23:16]),
  .cout(cout_153)
);

add add_154(
	.a(add_res_141[31:24]),
  .b(prod_w[15][31:24]),
  .cin(cout_153),
  .s(add_res_151[31:24]),
  .cout(cout_154)
);
//-16-
assign add_res_161[7:0] = add_res_151[7:0];
assign add_res_161[15:8] = add_res_151[15:8];

add add_163(
	.a(add_res_151[23:16]),
  .b(prod_w[16][23:16]),
  .cin(1'b0),
  .s(add_res_161[23:16]),
  .cout(cout_163)
);

add add_164(
	.a(add_res_151[31:24]),
  .b(prod_w[16][31:24]),
  .cin(cout_163),
  .s(add_res_161[31:24]),
  .cout(cout_164)
);
//-17-
assign add_res_171[7:0] = add_res_161[7:0];
assign add_res_171[15:8] = add_res_161[15:8];

add add_173(
	.a(add_res_161[23:16]),
  .b(prod_w[17][23:16]),
  .cin(1'b0),
  .s(add_res_171[23:16]),
  .cout(cout_173)
);

add add_174(
	.a(add_res_161[31:24]),
  .b(prod_w[17][31:24]),
  .cin(cout_173),
  .s(add_res_171[31:24]),
  .cout(cout_174)
);
//-18-
//-17-
assign add_res_181[7:0] = add_res_171[7:0];
assign add_res_181[15:8] = add_res_171[15:8];

add add_183(
	.a(add_res_171[23:16]),
  .b(prod_w[18][23:16]),
  .cin(1'b0),
  .s(add_res_181[23:16]),
  .cout(cout_183)
);

add add_184(
	.a(add_res_171[31:24]),
  .b(prod_w[18][31:24]),
  .cin(cout_183),
  .s(add_res_181[31:24]),
  .cout(cout_184)
);
//-19-
assign add_res_191[7:0] = add_res_181[7:0];
assign add_res_191[15:8] = add_res_181[15:8];

add add_193(
	.a(add_res_181[23:16]),
  .b(prod_w[19][23:16]),
  .cin(1'b0),
  .s(add_res_191[23:16]),
  .cout(cout_193)
);

add add_194(
	.a(add_res_181[31:24]),
  .b(prod_w[19][31:24]),
  .cin(cout_193),
  .s(add_res_191[31:24]),
  .cout(cout_194)
);
//-20-
assign add_res_201[7:0] = add_res_191[7:0];
assign add_res_201[15:8] = add_res_191[15:8];

add add_203(
	.a(add_res_191[23:16]),
  .b(prod_w[20][23:16]),
  .cin(1'b0),
  .s(add_res_201[23:16]),
  .cout(cout_203)
);

add add_204(
	.a(add_res_191[31:24]),
  .b(prod_w[20][31:24]),
  .cin(cout_203),
  .s(add_res_201[31:24]),
  .cout(cout_204)
);
//-21-
assign add_res_211[7:0] = add_res_201[7:0];
assign add_res_211[15:8] = add_res_201[15:8];

add add_213(
	.a(add_res_201[23:16]),
  .b(prod_w[21][23:16]),
  .cin(1'b0),
  .s(add_res_211[23:16]),
  .cout(cout_213)
);

add add_214(
	.a(add_res_201[31:24]),
  .b(prod_w[21][31:24]),
  .cin(cout_213),
  .s(add_res_211[31:24]),
  .cout(cout_214)
);
//-22-
assign add_res_221[7:0] = add_res_211[7:0];
assign add_res_221[15:8] = add_res_211[15:8];

add add_223(
	.a(add_res_211[23:16]),
  .b(prod_w[22][23:16]),
  .cin(1'b0),
  .s(add_res_221[23:16]),
  .cout(cout_223)
);

add add_224(
	.a(add_res_211[31:24]),
  .b(prod_w[22][31:24]),
  .cin(cout_223),
  .s(add_res_221[31:24]),
  .cout(cout_224)
);
//-23-
assign add_res_231[7:0] = add_res_221[7:0];
assign add_res_231[15:8] = add_res_221[15:8];

add add_233(
	.a(add_res_221[23:16]),
  .b(prod_w[23][23:16]),
  .cin(1'b0),
  .s(add_res_231[23:16]),
  .cout(cout_233)
);

add add_234(
	.a(add_res_221[31:24]),
  .b(prod_w[23][31:24]),
  .cin(cout_233),
  .s(add_res_231[31:24]),
  .cout(cout_234)
);
//-24-
assign add_res_241[7:0] = add_res_231[7:0];
assign add_res_241[15:8] = add_res_231[15:8];
assign add_res_241[23:16] = add_res_231[23:16];

add add_244(
	.a(add_res_231[31:24]),
  .b(prod_w[24][31:24]),
  .cin(1'b0),
  .s(add_res_241[31:24]),
  .cout(cout_244)
);
//-25-
assign add_res_251[7:0] = add_res_241[7:0];
assign add_res_251[15:8] = add_res_241[15:8];
assign add_res_251[23:16] = add_res_241[23:16];

add add_254(
	.a(add_res_241[31:24]),
  .b(prod_w[25][31:24]),
  .cin(1'b0),
  .s(add_res_251[31:24]),
  .cout(cout_254)
);
//-26-
assign add_res_261[7:0] = add_res_251[7:0];
assign add_res_261[15:8] = add_res_251[15:8];
assign add_res_261[23:16] = add_res_251[23:16];

add add_264(
	.a(add_res_251[31:24]),
  .b(prod_w[26][31:24]),
  .cin(1'b0),
  .s(add_res_261[31:24]),
  .cout(cout_264)
);
//-27-
assign add_res_271[7:0] = add_res_251[7:0];
assign add_res_271[15:8] = add_res_251[15:8];
assign add_res_271[23:16] = add_res_251[23:16];

add add_274(
	.a(add_res_261[31:24]),
  .b(prod_w[27][31:24]),
  .cin(1'b0),
  .s(add_res_271[31:24]),
  .cout(cout_274)
);
//-28-
assign add_res_281[7:0] = add_res_251[7:0];
assign add_res_281[15:8] = add_res_251[15:8];
assign add_res_281[23:16] = add_res_251[23:16];

add add_284(
	.a(add_res_271[31:24]),
  .b(prod_w[28][31:24]),
  .cin(1'b0),
  .s(add_res_281[31:24]),
  .cout(cout_284)
);
//-29-
assign add_res_291[7:0] = add_res_251[7:0];
assign add_res_291[15:8] = add_res_251[15:8];
assign add_res_291[23:16] = add_res_251[23:16];

add add_294(
	.a(add_res_281[31:24]),
  .b(prod_w[29][31:24]),
  .cin(1'b0),
  .s(add_res_291[31:24]),
  .cout(cout_294)
);
//-30-
assign add_res_301[7:0] = add_res_251[7:0];
assign add_res_301[15:8] = add_res_251[15:8];
assign add_res_301[23:16] = add_res_251[23:16];

add add_304(
	.a(add_res_291[31:24]),
  .b(prod_w[30][31:24]),
  .cin(1'b0),
  .s(add_res_301[31:24]),
  .cout(cout_304)
);
//-31-
assign add_res_311[7:0] = add_res_251[7:0];
assign add_res_311[15:8] = add_res_251[15:8];
assign add_res_311[23:16] = add_res_251[23:16];

add add_314(
	.a(add_res_301[31:24]),
  .b(prod_w[31][31:24]),
  .cin(1'b0),
  .s(add_res_311[31:24]),
  .cout(cout_314)
);

assign of_flag = cout_314;
assign result = add_res_311;

endmodule