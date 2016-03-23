#!/usr/bin/env node

var a, b, c;

for (b = 1; b <= 500; b++) {
    for (a = 1; a <= b; a++) {
        c = Math.sqrt(Math.pow(a, 2) + Math.pow(b, 2));
        if ((a + b + c == 1000) && (a < b) && (b < c)) {
            console.log(a * b * c);
            return;
        }
    } 
}
