;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit Mul : 
  module Mul : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip x : UInt<4>, flip y : UInt<4>, z : UInt<8>}
    
    
