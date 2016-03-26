object euler2 {
    def fib_iter(a: Int, b: Int, count: Int) : Int = {
        count match {
            case 0 => b
            case _ => fib_iter(a + b, a, count - 1)
        }
    }
    
    def fibonacci(n: Int): Int = {
        return fib_iter(1, 0, n);
    }

    def sumEvenValuedTermsUnder(start: Int, limit: Int, acc: Int) : Int = {
        val n = fibonacci(start)
        if (n >= limit)
            acc
        else
            sumEvenValuedTermsUnder(start + 3, limit, acc + n)
    }

    def main(args: Array[String]) {
        println(sumEvenValuedTermsUnder(3, 4000000, 0));
    }
}
