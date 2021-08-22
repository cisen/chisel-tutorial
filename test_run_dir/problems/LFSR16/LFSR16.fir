;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit LFSR16 : 
  module LFSR16 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip inc : UInt<1>, out : UInt<16>}
    
    io.out <= UInt<1>("h00") @[LFSR16.scala 20:10]
    
