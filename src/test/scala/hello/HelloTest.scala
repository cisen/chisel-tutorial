// See LICENSE.txt for license details.
package hello
import chisel3._
import chisel3.util._
import chisel3.tester._
import chisel3.tester.RawTester.test
// import dotvisualizer._
import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class HelloTests(c: Hello) extends PeekPokeTester(c) {
    // println(getVerilog(new Hello))
}

class HelloTester extends ChiselFlatSpec {
  behavior of "Hello"
}
