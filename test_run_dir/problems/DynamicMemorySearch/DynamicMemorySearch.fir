;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit DynamicMemorySearch : 
  module DynamicMemorySearch : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip isWr : UInt<1>, flip wrAddr : UInt<3>, flip data : UInt<4>, flip en : UInt<1>, target : UInt<3>, done : UInt<1>}
    
    reg index : UInt<3>, clock with : (reset => (reset, UInt<3>("h00"))) @[DynamicMemorySearch.scala 30:23]
    node _T = eq(io.en, UInt<1>("h00")) @[DynamicMemorySearch.scala 36:16]
    node _T_1 = eq(UInt<1>("h00"), io.data) @[DynamicMemorySearch.scala 36:35]
    node _T_2 = eq(index, UInt<3>("h07")) @[DynamicMemorySearch.scala 36:58]
    node _T_3 = or(_T_1, _T_2) @[DynamicMemorySearch.scala 36:48]
    node done = and(_T, _T_3) @[DynamicMemorySearch.scala 36:23]
    when io.en : @[DynamicMemorySearch.scala 43:16]
      index <= UInt<1>("h00") @[DynamicMemorySearch.scala 44:11]
      skip @[DynamicMemorySearch.scala 43:16]
    else : @[DynamicMemorySearch.scala 45:34]
      node _T_4 = eq(done, UInt<1>("h00")) @[DynamicMemorySearch.scala 45:21]
      when _T_4 : @[DynamicMemorySearch.scala 45:34]
        node _T_5 = add(index, UInt<1>("h01")) @[DynamicMemorySearch.scala 46:20]
        node _T_6 = tail(_T_5, 1) @[DynamicMemorySearch.scala 46:20]
        index <= _T_6 @[DynamicMemorySearch.scala 46:11]
        skip @[DynamicMemorySearch.scala 45:34]
    io.done <= done @[DynamicMemorySearch.scala 48:13]
    io.target <= index @[DynamicMemorySearch.scala 49:13]
    
