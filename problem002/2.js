#!/usr/bin/env js
//slow
var h = [];

function fib(n){
	if (h[n] == null) {
		if (n < 2) {
			h[n] = 1;
			return h[n];
		} else {
			h[n] = fib(n - 1) + fib(n - 2);
			return h[n];
		}
	} else {
		return h[n];
	}
}

var x = 2;
var total = 0;
var i = fib(x);
while (i < 4000000){
	total += i;
	x += 3;
	i = fib(x);
}

print(total);
