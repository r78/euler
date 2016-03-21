#!/usr/bin/env node

function multipleOfFirstPrimes(n) {
    var checks = [2, 3, 5, 7].map(function(x) {
        return (n % x == 0 && n != x);
    });
    return checks.reduce(function(a, b) { return a || b}); 
}

function checkDivisible(n) {
    var limit = Math.sqrt(n);
    for (i = 2; i <= limit; i++) {
        if (n % i == 0) {
            return true;
        }
    }
    return false;
}

function isPrime(n) {
    return (n == 2 || n == 1) && !(multipleOfFirstPrimes(n)) || !checkDivisible(n);
}

function nthPrime(n) {
    var pos =  0;
    var candidate = 0;
    var i = 2;
    //look for prime numbers, starting at 2
    while (pos < n) {
        //increment pos every time we find a prime
        if (isPrime(i)) {
            candidate = i;
            pos++;
        }
        i++;
    }
    return candidate;
}

console.log(nthPrime(10001));
