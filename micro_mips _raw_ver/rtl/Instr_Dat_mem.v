module instr_dat_mem(
  input[31:0] 			a,
  input[31:0] 			wd,
  input[31:0] 			mem_in,
  input[31:0]  			mem_adr,
  input 						instr_en,
  input 						clk, 
  input 						we,
  input 						res,
  output reg [31:0] rd,
  // - ONLY  FOR TEST -
  output [31:0] test_mem
);

localparam MEM_LENGHT = 100;

reg [31:0] mem_reg [0:MEM_LENGHT - 1];

integer i;

always@(posedge clk, negedge res)
begin
  if(!res)
  begin
    rd <= 32'd0;
  end
  else begin
    if(instr_en)
    begin
    	mem_reg[mem_adr] <= mem_in;
    end
    else begin
    	if(we)
    	begin
     		mem_reg [a] <= wd;
    	end
    	else begin
     	 	rd <= mem_reg [a];
      	for (i = 0;  i < MEM_LENGHT-1; i = i + 1)
      	begin
        	mem_reg [i] <= mem_reg[i];
      	end
    	end 
		end      
  end
end
// - ONLY FOR TEST - 
assign test_mem = mem_reg[11];

endmodule