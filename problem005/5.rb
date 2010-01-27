#!/usr/bin/env ruby
def factors(n)
	return [n] if n == 1
	x = 2
	factors = []
	while x <= n do
		while n % x == 0 do
			factors << x 
			n = n / x
		end
		x += 1
	end
	return factors
end

def factors_frequency(nums)
	hsh_factors = {}
	nums.each{|x|
		ary_num_factors = factors(x)
		ary_num_factors.uniq.each{|factor|
			next if factor == 1
			factor_power = ary_num_factors.select{|f| factor == f}.size #search all factors, count them
			if hsh_factors[factor].nil? then
				hsh_factors[factor] = factor_power
			else
				hsh_factors[factor] = factor_power unless hsh_factors[factor] > factor_power
			end
		}
	}
	return hsh_factors
end

def lcm(factors)
	factors.map{|factor, power| factor**power}.inject{|lcm, x| lcm * x}
end

nums = (1..20)
factors = factors_frequency(nums)
puts lcm(factors)
