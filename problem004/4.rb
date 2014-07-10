#!/usr/bin/env ruby
def palindrome(top, floor)
	max = 0
	while top > floor do
		y = top
		while y >= floor do
			#use only odd numbers because the largest palindrome ends 
			#in 9 and we can't get a 9 multiplying by an even number
			y -= 1 if y % 2 == 0
			#if the product isn't greater than max we don't check if its a palindrome
			break if top * y < max
			#palindromes have 11 as a factor, if x does not have it, then y should have it
			y = y - (y % 11) if top % 11 != 0
			n = (top * y).to_s
			max = n.to_i if n == n.reverse
			y -= 2
		end
		top -= 2
	end
	return max
end
puts palindrome(999, 100)
