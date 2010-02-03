def gcd(a, b):
	while (b != 0):
		a, b = b, a%b
	return a

#lcm
print reduce(lambda x, y: x * y / gcd(x, y), range(1, 21))
