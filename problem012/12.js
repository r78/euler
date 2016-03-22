#!/usr/bin/env node

//lazy triangle numbers generator
var triangle = function (i) {
    var j =  i * (i + 1) / 2;
    return { "this": j, "next": function () { return triangle(i + 1); } }
}

var divisorsCount = function (num) {
    var sqrt = Math.floor(Math.sqrt(num));
    var exponents = [];
    var i = 2;
    var p;

    while (i <= sqrt) {
        p = 0;
        while (num % i == 0) {
            num /= i;
            p++;
        }
        if (p > 0) { exponents.push(p); }
        i++;
    }

    if (num != 1) { exponents.push(1); }

    return exponents.length == 0 ? 2 : exponents.reduce((prev, cur) => prev * (cur + 1), 1);
}

var t = triangle(1);

while (divisorsCount(t.this) <= 500) {
    t = t.next();
}

console.log(t.this);
