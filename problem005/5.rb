#!/usr/bin/env ruby
def gcd(a, b)
	while b != 0 do
		a, b = b, a % b
	end
	return a
end

#lcm
puts (1..20).inject{|x, y| (x * y) / gcd(x, y)}
