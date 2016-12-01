module rsh_mux(
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
    MUX_1: res = {1'b0, a[31:1]};
    MUX_2: res = {2'd0, a[31:2]};
    MUX_3: res = {3'd0, a[31:3]};
    MUX_4: res = {4'd0, a[31:4]};
    MUX_5: res = {5'd0, a[31:5]};
    MUX_6: res = {6'd0, a[31:6]};
    MUX_7: res = {7'd0, a[31:7]};
    MUX_8: res = {8'd0, a[31:8]};
    MUX_9: res = {9'd0, a[31:9]};
    MUX_10: res = {10'd0, a[31:10]};
    MUX_11: res = {11'd0, a[31:11]};
    MUX_12: res = {12'd0, a[31:12]};
    MUX_13: res = {13'd0, a[31:13]};
    MUX_14: res = {14'd0, a[31:14]};
    MUX_15: res = {15'd0, a[31:15]};
    MUX_16: res = {16'd0, a[31:16]};
    MUX_17: res = {17'd0, a[31:17]};
    MUX_18: res = {18'd0, a[31:18]};
    MUX_19: res = {19'd0, a[31:19]};
    MUX_20: res = {20'd0, a[31:20]};
    MUX_21: res = {21'd0, a[31:21]};
    MUX_22: res = {22'd0, a[31:22]};
    MUX_23: res = {23'd0, a[31:23]};
    MUX_24: res = {24'd0, a[31:24]};
    MUX_25: res = {25'd0, a[31:25]};
    MUX_26: res = {26'd0, a[31:26]};
    MUX_27: res = {27'd0, a[31:27]};
    MUX_28: res = {28'd0, a[31:28]};
    MUX_29: res = {29'd0, a[31:29]};
    MUX_30: res = {30'd0, a[31:30]};
    MUX_31: res = {31'd0, a[31:31]};
  endcase
end

endmodule
