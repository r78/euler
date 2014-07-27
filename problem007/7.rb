def is_prime(n)
    return true if n == 2 or n == 1
    return false if (n % 2 == 0 and n != 2) or (n % 3 == 0 and n!= 3) or (n % 5 == 0 and n!= 5) or (n % 7 == 0 and n!= 7)
    2.upto(Math.sqrt(n).to_i){|x|
      return false if n % x == 0
    }
end


def nth_prime(n)
    pos, p = 0
    i = 2
    #look for prime numbers, starting at 2
    while pos < n do
      #increment pos every time we find a prime
      if is_prime(i) then
         p = i
         pos += 1
      end
      i += 1
    end
    return p
end

p nth_prime(10001)
