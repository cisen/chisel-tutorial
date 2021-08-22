;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit VendingMachineSwitch : 
  module VendingMachineSwitch : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip nickel : UInt<1>, flip dime : UInt<1>, valid : UInt<1>}
    
    reg state : UInt<3>, clock with : (reset => (reset, UInt<3>("h00"))) @[VendingMachineSwitch.scala 22:22]
    node _T = eq(UInt<3>("h00"), state) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      when io.nickel : @[VendingMachineSwitch.scala 26:24]
        state <= UInt<3>("h01") @[VendingMachineSwitch.scala 26:32]
        skip @[VendingMachineSwitch.scala 26:24]
      when io.dime : @[VendingMachineSwitch.scala 27:22]
        state <= UInt<3>("h02") @[VendingMachineSwitch.scala 27:30]
        skip @[VendingMachineSwitch.scala 27:22]
      skip @[Conditional.scala 40:58]
    node _T_1 = eq(state, UInt<3>("h04")) @[VendingMachineSwitch.scala 33:22]
    io.valid <= _T_1 @[VendingMachineSwitch.scala 33:12]
    
