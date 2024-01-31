module pd(
  input clock,
  input reset
);

wire [31:0] data_in;
reg [31:0] f_insn;
reg [31:0] f_pc = 32'h01000000;
wire read_write;

// update pc
always @(posedge clock) begin
  if (reset) 
    f_pc <= 32'h01000000;
  else 
  begin
    f_pc <= f_pc + 4;
  end
end

// instantiate memory module
imemory imemory_0(
  .clock(clock),
  .address(f_pc),
  .data_in(data_in),
  .data_out(f_insn),
  .read_write(read_write)
);

endmodule
