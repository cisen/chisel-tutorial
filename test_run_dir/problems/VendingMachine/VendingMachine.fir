;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit VendingMachine : 
  module VendingMachine : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip nickel : UInt<1>, flip dime : UInt<1>, valid : UInt<1>}
    
    reg state : UInt<3>, clock with : (reset => (reset, UInt<3>("h00"))) @[VendingMachine.scala 22:22]
    state <= UInt<3>("h01") @[VendingMachine.scala 26:9]
    node _T = eq(state, UInt<3>("h04")) @[VendingMachine.scala 30:22]
    io.valid <= _T @[VendingMachine.scala 30:12]
    
