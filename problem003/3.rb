#!/usr/bin/env ruby
n = 600851475143
i = 2
def factor(n, i)
    maxfactor = 2
    while i < n/2 do
        if n % i == 0 then
            n = n / i
            maxfactor = n
        else
            i += 1
        end
    end
    return maxfactor
end

puts factor(n, i)
