module pc(
  input [31:0] in,
  input [31:0]	 pc_adr,
  input				 instr_en,
  input        clk,
  input        res,
  input        en,
  output reg [31:0] out
);

localparam MEM_LENGTH = 256;
integer i;

reg [31:0] pc_mem [0: MEM_LENGTH - 1];
reg[7:0] count = 8'b0;

always@(posedge clk, negedge res)
begin
  if(!res)
  begin
      out <= pc_mem[0];
      count <= 8'd0;
  end
  else begin
  	if(instr_en)
  	begin
  		pc_mem[count] <= pc_adr;
                  $display("pc %b",count);
      count <= count + 1;
  	end
  	else begin
      if(en)
    	begin
      	out <= pc_mem [in];
    	end
    	else 
    	begin
      	out <= out;
      	for (i=0; i < MEM_LENGTH-1; i = i + 1)
        	pc_mem [i] <= pc_mem[i];
    	end
    end
  end
end

endmodule