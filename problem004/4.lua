#!/usr/bin/env lua

function palindrome(top, floor)
	max = 0
	while top > floor do
		y = top
		while y >= floor do
			if y % 2 == 0 then
				y = y - 1
			end
			if top * y < max then
				break
			end
			if top % 11 ~= 0 then
				y = y - (y % 11)
			end
			n = top * y
			if tostring(n) == string.reverse(n) then
				max = n
			end
			y = y - 2
		end
		top = top - 2
	end
	return max
end

print(palindrome(999, 100))
