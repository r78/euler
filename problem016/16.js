#!/usr/bin/env node

var number = [1];
var sum = 0;
var i = 0;

for (i; i < 1000; i++) {
    var overflow = 0;
    var count = number.length + 1;
    var j = 0;

    for (j; j < count; j++) {
        var digit = number[j] || 0;
        digit = 2 * digit + overflow;

        if (digit > 9) {
            digit -= 10;
            overflow = 1;
        } else {
            overflow = 0;
        }

        number[j] = digit;
    }
}

var sum = number.reduce((prev, cur) => prev + cur);
console.log(sum);
