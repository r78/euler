#!/usr/bin/env lua

function sum_m(n, mul)
	return (n - (n % mul) + mul) * (div(n, mul) / 2)
end

function div(a, b)
	return (a - (a % b)) / b
end

n = 999
print(sum_m(n, 3) + sum_m(n, 5) - sum_m(n, 15))
