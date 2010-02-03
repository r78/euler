#!/usr/bin/env lua

h = {}
function fib(n)
	if not h[n] then
		if n < 2 then
			h[n] = 1
			return h[n]
		else
			h[n] =  fib(n - 1) + fib(n - 2)
			return h[n]
		end
	else
		return h[n]
	end
end

function sum_even_valued_terms_under(n)
	x = 2
	total = 0
	i = fib(x)
	while i < n do
		total = total + i
		x = x + 3
		i = fib(x)
	end
	return total
end

print(sum_even_valued_terms_under(4000000))
