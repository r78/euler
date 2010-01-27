#!/usr/bin/env js
//returns an array without duplicate elements
Array.prototype.unique = function () {
	var r = new Array();
	o:for(var i = 0, n = this.length; i < n; i++) {
		for(var x = 0, y = r.length; x < y; x++) {
			if(r[x]==this[i]) {
				continue o;
			}
		}
		r[r.length] = this[i];
	}
	return r;
}

function range(begin, end) {  
	for (let i = begin; i <= end; ++i){ yield i; }  
} 

//get prime factors of a number
function getFactors(n){
	if (n == 1) { return [n]; }
	var x = 2;
	var factors = [];
	while (x <= n) {
		while (n % x == 0) {
			factors.push(x);
			n = n / x;
		}
		x++;
	}
	return factors;
}

//gets the power of each factor from each number
function factors_frequency(nums) {
	var factors = [];
	//find the greatest power of each factor (among the factors of 'nums')
	var FactorsMaxPowers = function(x) {
		all_num_factors = getFactors(x);
		uniq_num_factors = all_num_factors.unique();
		//finds the greatest power of each unique factor of all factors of 'nums'
		var getFactorMaxPower = function(factor) {
			if (factor != 1) {
				//helper function to count the times that a factor appears in a number
				var equalsFactor = function(f) {
					return f == factor;
				}
				factor_power = all_num_factors.filter(equalsFactor).length;
				if (factors[factor] == null) {
					factors[factor] = factor_power;
				} else {
					if (factors[factor] < factor_power) {
						factors[factor] = factor_power;
					}
				}
			}
		}
		uniq_num_factors.forEach(getFactorMaxPower);
	}
	nums.forEach(FactorsMaxPowers);
	return factors;
}

//least common multiple
function lcm(factors){
	var factorToPower = function(power, factor){
		return Math.pow(factor, power);
	}
	var total = 1;
	var multiplyAll = function(x){
		total = total * x;
	}
	factors.map(factorToPower).forEach(multiplyAll);
	return total;
}

factors = factors_frequency([i for each (i in range(1, 20))]);
print(lcm(factors));
//232792560
