#!/usr/bin/env python
def sum_of_squares(n):
	return (n * (n + 1) * ((2 * n) + 1)) / 6

def square_of_sum(n):
	if (n % 2 == 0):
		return ((n / 2) * (n + 1)) ** 2
	else:
		return (((n / 2) * (n + 1)) + n) ** 2

print square_of_sum(100) - sum_of_squares(100)
