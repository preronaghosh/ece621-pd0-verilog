/**
* Exercise 3.4
* you can change the code below freely
  * */
module reg_and_reg(
  input  wire clock,
  input  wire reset,
  input  wire x,
  input  wire y,
  output reg  z
);

reg x_in;
reg y_in;
always @(posedge clock) begin
  if(reset) begin
    x_in <= 0;
    y_in <= 0;
    z <= 0;
  end
  else begin
    x_in <= x;
    y_in <= y;
    z <= x_in & y_in; 
  end
end

endmodule
