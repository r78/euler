#!/usr/bin/env ruby
def sum_of_squares(n)
	(n * (n + 1) * ((2 * n) + 1)) / 6
end

def square_of_sum(n)
	sum = n % 2 == 0 ? (n / 2) * (n + 1) : ((n / 2) * (n + 1)) + n
	sum ** 2
end

p (square_of_sum(100) - sum_of_squares(100))
