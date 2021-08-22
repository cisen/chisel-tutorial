module LFSR16(
  input         clock,
  input         reset,
  input         io_inc,
  output [15:0] io_out
);
  assign io_out = 16'h0; // @[LFSR16.scala 20:10]
endmodule
