module Accumulator(
  input        clock,
  input        reset,
  input        io_in,
  output [7:0] io_out
);
  assign io_out = 8'h0; // @[Accumulator.scala 19:10]
endmodule
