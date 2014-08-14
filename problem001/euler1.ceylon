void euler1() {

    //gauss method to sum all numbers in a range
    function sumAll(Integer n) {
        return (1 + n) * (n / 2.0);
    }

    //sum all multiples of "mul" in 1..n
    function sumM(Integer n, Integer mul) {
	    return (n - (n % mul) + mul) * (n / mul / 2.0);
    }

    value n = 999;
    print(sumM(n, 3) + sumM(n, 5) - sumM(n, 15));
}
