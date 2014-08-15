object euler1 {

    def sum_m(n: Int, mul: Int) : Double = {
        return (n - (n % mul) + mul) * (n / mul / 2.0)
    }

    def main(args: Array[String]) {
        val n = 999
        println(sum_m(n, 3) + sum_m(n, 5) - sum_m(n, 15))
    }
}
