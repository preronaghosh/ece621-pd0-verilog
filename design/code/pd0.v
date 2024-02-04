module pd0(
  input clock,
  input reset
);
  /* demonstrating the usage of assign_and */
  reg assign_and_x;
  reg assign_and_y;
  wire assign_and_z;
  assign_and assign_and_0 (
    .x(assign_and_x),
    .y(assign_and_y),
    .z(assign_and_z)
  );

  /* Exercise 3.3 module/probes */

  reg probe_ex33_areset;
  reg probe_ex33_x;
  reg probe_ex33_y;
  wire probe_ex33_z;
  reg_and_arst reg_and_arst_0 (
    .clock(clock),
    .areset(probe_ex33_areset),
    .x(probe_ex33_x),
    .y(probe_ex33_y),
    .z(probe_ex33_z)
  );

  /* Exercise 3.4 module/probes */

  reg probe_ex34_x;
  reg probe_ex34_y;
  reg probe_ex34_z;
  reg_and_reg reg_and_reg_0 (
    .clock(clock),
    .reset(reset),
    .x(probe_ex34_x),
    .y(probe_ex34_y),
    .z(probe_ex34_z)
  );
  
endmodule
