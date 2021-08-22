module VecShiftRegister(
  input        clock,
  input        reset,
  input  [3:0] io_ins_0,
  input  [3:0] io_ins_1,
  input  [3:0] io_ins_2,
  input  [3:0] io_ins_3,
  input        io_load,
  input        io_shift,
  output [3:0] io_out
);
  assign io_out = 4'h0; // @[VecShiftRegister.scala 22:10]
endmodule
