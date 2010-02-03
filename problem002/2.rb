#!/usr/bin/env ruby
$h = []
def fib(n)
	if $h[n].nil? then
		$h[n] = (n < 2) ? 1 : fib(n - 1) + fib(n - 2) 
	else 
		$h[n] 
	end
end


def sum_even_valued_terms_under(n)
	x = 2 #first even valued term
	total = 0
	i = fib(x)
	while i < n do
		total += i
		x += 3 #every 3rd number is even 
		i = fib(x)
	end
	return total
end

p sum_even_valued_terms_under(4_000_000)
