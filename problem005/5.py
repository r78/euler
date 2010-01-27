#!/usr/bin/env python

def factors(n):
	if n == 1:
		return [n]
	x = 2
	factors = []
	while x <= n:
		while n % x == 0:
			factors += [x]
			n = n / x
		x += 1
	return factors

def factors_frequency(nums):
	dfactors = {}
	for x in nums:
		num_factors = factors(x)
		for factor in set(num_factors):
			if factor == 1:
				break
			factor_power = len(filter(lambda x: x == factor, num_factors))
			if dfactors.get(factor) == None:
				 dfactors[factor] = factor_power
			else:
				if dfactors.get(factor) < factor_power:
					 dfactors[factor] = factor_power
	return dfactors

def lcm(factors):
	total = 1
	for factor, power in factors.iteritems():
		total *= factor ** power
	return total

nums = range(1, 21)
print lcm(factors_frequency(nums))
