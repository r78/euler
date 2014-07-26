#!/usr/bin/env js
function sum_of_squares(n){
	return (n * (n + 1) * ((2 * n) + 1)) / 6;
}

function square_of_sum(n){
	var sum = (n / 2) * (n + 1);
	if (n % 2 != 0) { sum +=  n; }
	return Math.pow(sum, 2);
}

print(square_of_sum(100) - sum_of_squares(100));
