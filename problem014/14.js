#!/usr/bin/env node

//longest = 2.upto(999999).map{|x| [x, sequence(x)]}.max{|a, b| a[1] <=> b[1]}
var arr = [];
var i = 2;

function collatz(n) {
    return n % 2 == 0 ? n / 2 : 3 * n + 1;
}

var cache = {};
function sequence(n) {
    var seq = [n];
    var term = collatz(n);
    while (term != 1) {
        if (cache[term] != undefined) {
            cache[n] = seq.length + cache[term];
            return cache[n];
        } else {
            seq.push(term);
            term = collatz(term);
        }
    }
    seq.push(term);
    cache[n] = seq.length;
    return cache[n];
}

for (i; i <= 999999; i++) {
    arr[i] = [i, sequence(i)];
}

var longest = arr.sort((a, b) => b[1] - a[1])[0];
console.log(`${longest[0]} has a chain of ${longest[1]} terms.`);
