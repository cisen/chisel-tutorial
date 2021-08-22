;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit VecShiftRegister : 
  module VecShiftRegister : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip ins : UInt<4>[4], flip load : UInt<1>, flip shift : UInt<1>, out : UInt<4>}
    
    io.out <= UInt<1>("h00") @[VecShiftRegister.scala 22:10]
    
