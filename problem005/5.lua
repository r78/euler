#!/usr/bin/env lua

function gcd(a, b)
	while b ~= 0 do
		a, b = b, a % b	
	end
	return a
end

function lcm(a, b)
	return (a * b) / gcd(a, b)
end

function range(min, max)
	range = {}
	for i = min, max do
		table.insert(range, i)
	end
	return range
end

r = range(1, 20)
i = r[1]
for j = r[2], #r do
	i = lcm(i, j)
end

print(i)
