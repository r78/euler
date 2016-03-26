object euler3 {

    def factor(i: Int, n: Long, maxFactor: Long) : Long = {
        if (i < n / 2) {
            if (n % i == 0)
                factor(i, n / i, n / i)
            else
                factor(i + 1, n, maxFactor)
        } else
            maxFactor
    }

    def main(args: Array[String]) {
        val n = 600851475143L;
        println(factor(2, n, n))
    }
}
