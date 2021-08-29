;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Darken : 
  module Darken : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<8>, out : UInt<8>}
    
    node _T = dshl(io.in, UInt<1>("h01")) @[Darken.scala 12:19]
    io.out <= _T @[Darken.scala 12:10]
    
