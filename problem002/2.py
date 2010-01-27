#!/usr/bin/env python
h = {}
def fib(n):
   if n < 2: 
		return 1
   if not h.has_key(n):
      h[n] = fib(n - 1) + fib(n - 2)
   return h[n]

x = 1
while fib(x) < 4000000:
	x += 1
print fib(x) - 1
