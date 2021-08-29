// See LICENSE.txt for license details.
package examples

import chisel3._
// 带有上一次的进位标输入和下一次输出进位的无符号数加法器
class FullAdder extends Module {
  val io = IO(new Bundle {
    val a    = Input(UInt(1.W))
    val b    = Input(UInt(1.W))
    // 上次计算的进位，要么是0，要么是1
    val cin  = Input(UInt(1.W))
    val sum  = Output(UInt(1.W))
    // 新的进位
    val cout = Output(UInt(1.W))
  })

  // Generate the sum
  /*
  A = 0011 1100
  B = 0000 1101
  -------位运算----------
  A&B = 0000 1100
  A|B = 0011 1101
  A^B = 0011 0001
  ~A  = 1100 0011
  */
  // a+b除了进位外的结果，最大是1111 1111，也就是9位能完全覆盖a+b+cin
  val a_xor_b = io.a ^ io.b
  // 加上上一次进位的结果
  io.sum := a_xor_b ^ io.cin
  // Generate the carry
  // 计算进位，只有两个都是1的时候才保留1，也就是只有两个最高位都是1的时候cout就是true，也就是进位为1
  val a_and_b = io.a & io.b
  val b_and_cin = io.b & io.cin
  val a_and_cin = io.a & io.cin
  io.cout := a_and_b | b_and_cin | a_and_cin
}
