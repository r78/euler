#!/usr/bin/env lua
n = 600851475143
i = 2

function factor(n, i)
	maxfactor = 2
	while i < n / 2 do
		if n % i == 0 then
			n = n / i
			maxfactor = n
		else
			i = i + 1
		end
	end
	return maxfactor
end

print(factor(n, i))
