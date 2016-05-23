package TutorialSolutions

import Chisel._
import Chisel.iotesters._

class VendingMachine extends Module {
  val io = new Bundle {
    val nickel = Bool(dir = INPUT)
    val dime   = Bool(dir = INPUT)
    val valid  = Bool(dir = OUTPUT) }
  val sIdle :: s5 :: s10 :: s15 :: sOk :: Nil =
    Enum(UInt(), 5)
  val state = Reg(init = sIdle)
  when (state === sIdle) {
    when (io.nickel) { state := s5 }
    when (io.dime)   { state := s10 }
  }
  when (state === s5) {
    when (io.nickel) { state := s10 }
    when (io.dime)   { state := s15 }
  }
  when (state === s10) {
    when (io.nickel) { state := s15 }
    when (io.dime)   { state := sOk }
  }
  when (state === s15) {
    when (io.nickel) { state := sOk }
    when (io.dime)   { state := sOk }
  }
  when (state === sOk) {
    state := sIdle
  }
  io.valid := (state === sOk)
}

class VendingMachineTests(c: VendingMachine, b: Option[Backend] = None) extends ClassicTester(c, _backend=b) {
  var money = 0
  var isValid = false
  for (t <- 0 until 20) {
    val coin     = rnd.nextInt(3)*5
    val isNickel = coin == 5
    val isDime   = coin == 10

    // Advance circuit
    poke(c.io.nickel, if (isNickel) 1 else 0)
    poke(c.io.dime,   if (isDime) 1 else 0)
    step(1)

    // Advance model
    money = if (isValid) 0 else (money + coin)
    isValid = money >= 20

    // Compare
    expect(c.io.valid, if (isValid) 1 else 0)
  }
}
