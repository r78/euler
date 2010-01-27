#!/usr/bin/env ruby
#p (3..999).select{|x| x % 3 == 0 or x % 5 == 0}.inject{|sum, x| sum + x}

#gauss method to sum all numbers in a range
def sum_all(n)
	(1 + n) * (n / 2.0)
end

#sum all multiples of "mul" in 1..n
def sum_m(n, mul)
	(n - (n % mul) + mul) * (n / mul / 2.0)
end

n = 999
puts sum_m(n, 3) + sum_m(n, 5) - sum_m(n, 15)
