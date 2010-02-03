#!/usr/bin/env python
h = {}
def fib(n):
   if n < 2: 
		return 1
   if not h.has_key(n):
      h[n] = fib(n - 1) + fib(n - 2)
   return h[n]

x = 2
total = 0
i = fib(x)
while i < 4000000:
	total += i
	x += 3
	i = fib(x)
print total
