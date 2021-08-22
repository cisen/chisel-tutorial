// See LICENSE.txt for license details.
package hello

import chisel3.iotesters.{Driver, TesterOptionsManager}
import utils.TutorialRunner

object Launcher {
  val hello = Map(
      "Hello" -> { (manager: TesterOptionsManager) =>
        Driver.execute(() => new Hello(), manager) {
          (c) => new HelloTests(c)
        }
      }
  )
  def main(args: Array[String]): Unit = {
    TutorialRunner("hello", hello, args)
  }
}

