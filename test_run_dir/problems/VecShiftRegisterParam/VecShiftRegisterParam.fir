;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit VecShiftRegisterParam : 
  module VecShiftRegisterParam : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<4>, out : UInt<4>}
    
    io.out <= UInt<1>("h00") @[VecShiftRegisterParam.scala 20:10]
    
