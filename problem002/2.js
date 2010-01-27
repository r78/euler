#!/usr/bin/env js
//slow
var h = [];

function fib(n){
	if (h[n] == null) {
		if (n < 2) {
			return 1;
		} else {
			return fib(n - 1) + fib(n - 2);
		}
	} else {
		return h[n];
	}
}

var x = 1;
while (fib(x) < 4000000){
	x += 1;
}

print(fib(x) - 1);
