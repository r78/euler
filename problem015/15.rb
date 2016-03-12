#!/usr/bin/env ruby

def factorial(n)
  1.upto(n).reduce(1, :*)
end

#http://mathworld.wolfram.com/CentralBinomialCoefficient.html
#we want to find the number of routes with the same number 
#of downs and rights, or ones and zeros
def routes(n)
  factorial(2*n) / (factorial(n) ** 2)
end

puts routes(20)
