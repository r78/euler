#!/usr/bin/env node

function factorial(n) {
    var i = 1;
    var f = 1;
    for (i; i <= n; i++) {
        f *= i;
    }
    return f;
}

function routes(n) {
    return factorial(2 * n) / (Math.pow(factorial(n), 2));
}

console.log(routes(20));
