import scala.collection.mutable.ListBuffer

object euler12 {

    def divisors_count(n: Int) : Double = {
        val sqrt = math.sqrt(n).toInt
        val exponents: ListBuffer[Int] = ListBuffer()
        var num = n

        for (i <- 2 to sqrt) {
            var p = 0
            while (num % i == 0) {
                num = num / i
                p += 1
            }

            if (p > 0) {
                exponents += p
            }
        }

        if (num != 1) { exponents += 1 }

        if (exponents.size == 0) 2 else exponents.fold(1){(t, f) => t * (f + 1)}
    }

    def main(args: Array[String]) {
        val triangle = Stream.from(1).map(n => n * (n + 1) / 2)

        triangle filter(x => divisors_count(x) > 500) map println
    }

}
