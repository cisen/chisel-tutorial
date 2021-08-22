;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit VecShiftRegisterSimple : 
  module VecShiftRegisterSimple : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<8>, out : UInt<8>}
    
    wire _T : UInt<8>[4] @[VecShiftRegisterSimple.scala 18:31]
    _T[0] <= UInt<8>("h00") @[VecShiftRegisterSimple.scala 18:31]
    _T[1] <= UInt<8>("h00") @[VecShiftRegisterSimple.scala 18:31]
    _T[2] <= UInt<8>("h00") @[VecShiftRegisterSimple.scala 18:31]
    _T[3] <= UInt<8>("h00") @[VecShiftRegisterSimple.scala 18:31]
    reg delays : UInt<8>[4], clock with : (reset => (reset, _T)) @[VecShiftRegisterSimple.scala 18:23]
    io.out <= UInt<1>("h00") @[VecShiftRegisterSimple.scala 22:10]
    
