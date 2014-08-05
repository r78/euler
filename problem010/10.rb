#!/usr/bin/env ruby

def primes_below_n(max)
    primes = [nil, nil] + (2..max).to_a
    (2..Math.sqrt(max)).each{|i|
        next unless primes[i]
        #mark all multiples of i as composite numbers
        (i*i).step(max,i){|j|
            next unless primes[j]
            primes[j] = nil
        }
    }
    primes.compact
end

arr = primes_below_n(2000000)
puts arr.inject{|sum, x| sum + x}
