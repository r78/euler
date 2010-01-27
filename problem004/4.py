#!/usr/bin/env python
def palindrome(top, floor):
	max = 0
	for x in range(top, floor, -2):
		for y in range(x, floor, -2):
			if x * y < max:
				break
			if x % 11 != 0:
				y = y - (y % 11)
			n = str(x * y)
			if n == n[::-1]:
				max = int(n)
	return max

print palindrome(999, 100)
