#!/usr/bin/env js
function div(num, den){
	var rem = num % den;
	return (num - rem) / den;
}


function sum_m(n, mul){
	return  (n - (n % mul) + mul) * (div(n, mul) / 2);
}

var n = 999;
print(sum_m(n, 3) + sum_m(n, 5) - sum_m(n, 15));
