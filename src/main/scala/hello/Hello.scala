// See LICENSE.txt for license details.
package hello

import chisel3._
import chisel3.iotesters.{PeekPokeTester, Driver}

class MyFloat extends Bundle {
  val sign        = Bool()
  val exponent    = UInt(8.W)
  val significand = UInt(23.W)
}

class Hello extends Module {
  val io = IO(new Bundle {
    val out = Output(UInt(8.W))
  })
  val sign = Bool()
  io.out := 42.U
  // Vector of 5 23-bit signed integers.
  // val myVec = Wire(Vec(5, SInt(23.W)))

  // // Connect to one element of vector.
  // val reg3 = myVec(3)
  // val reg4 = myVec(2)
}

class HelloTests(c: Hello) extends PeekPokeTester(c) {
  step(1)
  expect(c.io.out, 42)
}

object Hello {
  def main(args: Array[String]): Unit = {
    if (!Driver(() => new Hello())(c => new HelloTests(c))) System.exit(1)
  }
}
