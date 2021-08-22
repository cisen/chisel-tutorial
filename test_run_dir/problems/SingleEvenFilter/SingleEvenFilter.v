module SingleEvenFilter(
  input         clock,
  input         reset,
  input         io_in_valid,
  input  [15:0] io_in_bits,
  output        io_out_valid,
  output [15:0] io_out_bits
);
  assign io_out_valid = io_in_valid; // @[SingleEvenFilter.scala 45:10]
  assign io_out_bits = io_in_bits; // @[SingleEvenFilter.scala 45:10]
endmodule
