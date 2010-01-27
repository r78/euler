#!/usr/bin/env js
var n = 600851475143;
var i = 2;

function factor(n, i){
	maxfactor = 2;
	while (i < n/2) {
		if (n % i == 0) {
			n = n / i;
			maxfactor = n;
		} else {
			i += 1;
		}
	}
	return maxfactor;
}

print(factor(n, i));
