#!/usr/bin/env python
#print sum(filter(lambda x: x % 3 == 0 or x % 5 == 0, range(3, 1000)))
def sum_m(n, mul):
	return (n - (n % mul) + mul) * (n / mul / 2.0)

n = 999

print sum_m(n, 3) + sum_m(n, 5) - sum_m(n, 15)
