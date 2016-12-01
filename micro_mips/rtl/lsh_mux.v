module lsh_mux(
	input [31:0]  shamt,
  input [31:0]  a,
  output reg [31:0] res
);


localparam MUX_0 = 5'b00000;
localparam MUX_1 = 5'b00001;
localparam MUX_2 = 5'b00010;
localparam MUX_3 = 5'b00011;
localparam MUX_4 = 5'b00100;
localparam MUX_5 = 5'b00101;
localparam MUX_6 = 5'b00110;
localparam MUX_7 = 5'b00111;
localparam MUX_8 = 5'b01000;
localparam MUX_9 = 5'b01001;
localparam MUX_10 = 5'b01010;
localparam MUX_11 = 5'b01011;
localparam MUX_12 = 5'b01100;
localparam MUX_13 = 5'b01101;
localparam MUX_14 = 5'b01110;
localparam MUX_15 = 5'b01111;
localparam MUX_16 = 5'b10000;
localparam MUX_17 = 5'b10001;
localparam MUX_18 = 5'b10010;
localparam MUX_19 = 5'b10011;
localparam MUX_20 = 5'b10100;
localparam MUX_21 = 5'b10101;
localparam MUX_22 = 5'b10110;
localparam MUX_23 = 5'b10111;
localparam MUX_24 = 5'b11000;
localparam MUX_25 = 5'b11001;
localparam MUX_26 = 5'b11010;
localparam MUX_27 = 5'b11011;
localparam MUX_28 = 5'b11100;
localparam MUX_29 = 5'b11101;
localparam MUX_30 = 5'b11110;
localparam MUX_31 = 5'b11111;

wire [4:0] sh_state;
assign sh_state = shamt [4:0];

always@*
begin:mux
	case(sh_state)
  	MUX_0: res = a;
    MUX_1: res = {a[30:0],1'b0 };
    MUX_2: res = {a[29:0],2'd0};
    MUX_3: res = {a[28:0],3'd0};
    MUX_4: res = {a[27:0],4'd0};
    MUX_5: res = {a[26:0],5'd0};
    MUX_6: res = {a[25:0],6'd0};
    MUX_7: res = {a[24:0],7'd0};
    MUX_8: res = {a[23:0],8'd0};
    MUX_9: res = {a[22:0],9'd0};
    MUX_10: res = {a[21:0],10'd0};
    MUX_11: res = {a[20:0],11'd0};
    MUX_12: res = {a[19:0],12'd0};
    MUX_13: res = {a[18:0],13'd0};
    MUX_14: res = {a[17:0],14'd0};
    MUX_15: res = {a[16:0],15'd0};
    MUX_16: res = {a[15:0],16'd0};
    MUX_17: res = {a[14:0],17'd0};
    MUX_18: res = {a[13:0],18'd0};
    MUX_19: res = {a[12:0],19'd0};
    MUX_20: res = {a[11:0],20'd0};
    MUX_21: res = {a[10:0],21'd0};
    MUX_22: res = {a[9:0],22'd0};
    MUX_23: res = {a[8:0],23'd0};
    MUX_24: res = {a[7:0],24'd0};
    MUX_25: res = {a[6:0],25'd0};
    MUX_26: res = {a[5:0],26'd0};
    MUX_27: res = {a[4:0],27'd0};
    MUX_28: res = {a[3:0],28'd0};
    MUX_29: res = {a[2:0],29'd0};
    MUX_30: res = {a[1:0],30'd0};
    MUX_31: res = {a[0:0],31'd0};
  endcase
end


endmodule