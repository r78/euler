#!/usr/bin/env ruby
$h = []
def fib(n)
	if $h[n].nil? then
		$h[n] = (n < 2) ? 1 : fib(n - 1) + fib(n - 2) 
	else 
		$h[n] 
	end
end

x = 1
while fib(x) < 4_000_000 do
	x += 1
end

p fib(x) - 1
