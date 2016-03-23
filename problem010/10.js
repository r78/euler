#!/usr/bin/env node

function primes_below_n(max) {
    var primes = Array.from(Array(max).keys());
    primes[0] = null;
    primes[1] = null;
    var i = 2;
    for (i; i < Math.sqrt(max); i ++) {
        if (primes[i] === null) { continue; }
        //mark all multiples of i as composite numbers
        for (j = i*i; j < max; j += i) {
            if (primes[j] === null) { continue; }
            primes[j] = null;
        }
    }
    return primes;
}

console.log( primes_below_n(2000000).reduce((prev, curr) => curr + prev) );
