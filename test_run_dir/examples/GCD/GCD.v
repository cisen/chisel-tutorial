module GCD(
  input         clock,
  input         reset,
  input  [15:0] io_a,
  input  [15:0] io_b,
  input         io_load,
  output [15:0] io_out,
  output        io_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] x; // @[GCD.scala 20:14]
  reg [15:0] y; // @[GCD.scala 21:14]
  wire [15:0] _T_2 = x - y; // @[GCD.scala 27:14]
  wire [15:0] _T_5 = y - x; // @[GCD.scala 29:14]
  assign io_out = x; // @[GCD.scala 33:10]
  assign io_valid = y == 16'h0; // @[GCD.scala 34:17]
  always @(posedge clock) begin
    if (io_load) begin // @[GCD.scala 23:18]
      x <= io_a; // @[GCD.scala 24:7]
    end else if (x > y) begin // @[GCD.scala 26:18]
      x <= _T_2; // @[GCD.scala 27:9]
    end
    if (io_load) begin // @[GCD.scala 23:18]
      y <= io_b; // @[GCD.scala 24:18]
    end else if (!(x > y)) begin // @[GCD.scala 26:18]
      if (x <= y) begin // @[GCD.scala 28:26]
        y <= _T_5; // @[GCD.scala 29:9]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  x = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  y = _RAND_1[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
