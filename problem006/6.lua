#!/usr/bin/env lua

function sum_of_squares(n)
	return (n * (n + 1) * ((2 * n) + 1)) / 6
end

function square_of_sum(n)
	if n % 2 == 0 then
		return ((n / 2) * (n + 1)) ^ 2
	else
		return (((n / 2) * (n + 1)) + n) ^ 2
	end
end

print(square_of_sum(100) - sum_of_squares(100))
