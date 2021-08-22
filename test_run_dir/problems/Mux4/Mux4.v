module Mux4(
  input        clock,
  input        reset,
  input        io_in0,
  input        io_in1,
  input        io_in2,
  input        io_in3,
  input  [1:0] io_sel,
  output       io_out
);
  assign io_out = 1'h1; // @[Mux4.scala 46:10]
endmodule
