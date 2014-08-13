#!/usr/bin/env ruby

#compute the number of divisors of a number
def divisors_count(num)
    sqrt = Math.sqrt(num).to_i
    exponents = []
    2.upto(sqrt).each{|i|
        p = 0
        while num % i == 0
            num = num / i
            p += 1
        end
        exponents.push p if p > 0
    }
    exponents.push 1 if num != 1
    exponents.size == 0 ? 2 : exponents.inject(1){|t, f| t *= f + 1}
end

#enumerator returning the series of triangle numbers
triangle = Enumerator.new{|t|
    i = 1
    loop {
        t.yield i * (i + 1) / 2
        i += 1
    }
}

#find the first triangle number with more than 500 divisors
triangle.each{|n|
    if divisors_count(n) > 500
        puts n
        break
    end
}
