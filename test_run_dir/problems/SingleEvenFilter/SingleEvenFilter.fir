;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit SingleEvenFilter : 
  module SingleEvenFilter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : {valid : UInt<1>, bits : UInt<16>}, out : {valid : UInt<1>, bits : UInt<16>}}
    
    io.out.bits <= io.in.bits @[SingleEvenFilter.scala 45:10]
    io.out.valid <= io.in.valid @[SingleEvenFilter.scala 45:10]
    
