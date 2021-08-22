module DynamicMemorySearch(
  input        clock,
  input        reset,
  input        io_isWr,
  input  [2:0] io_wrAddr,
  input  [3:0] io_data,
  input        io_en,
  output [2:0] io_target,
  output       io_done
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] index; // @[DynamicMemorySearch.scala 30:23]
  wire  _T = ~io_en; // @[DynamicMemorySearch.scala 36:16]
  wire  _T_1 = 4'h0 == io_data; // @[DynamicMemorySearch.scala 36:35]
  wire  _T_2 = index == 3'h7; // @[DynamicMemorySearch.scala 36:58]
  wire  _T_3 = _T_1 | _T_2; // @[DynamicMemorySearch.scala 36:48]
  wire  done = _T & _T_3; // @[DynamicMemorySearch.scala 36:23]
  wire  _T_4 = ~done; // @[DynamicMemorySearch.scala 45:21]
  wire [2:0] _T_6 = index + 3'h1; // @[DynamicMemorySearch.scala 46:20]
  assign io_target = index; // @[DynamicMemorySearch.scala 49:13]
  assign io_done = _T & _T_3; // @[DynamicMemorySearch.scala 48:13]
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
  index = _RAND_0[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      index <= 3'h0;
    end else if (io_en) begin
      index <= 3'h0;
    end else if (_T_4) begin
      index <= _T_6;
    end
  end
endmodule
