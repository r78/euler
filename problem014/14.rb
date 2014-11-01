#!/usr/bin/env ruby

def collatz(n)
    n.even? ? n / 2 : 3 * n + 1
end

$cache = {}
def sequence(n)
  seq = [n]
  term = collatz(n)
  while term != 1
    if !$cache[term].nil?
      $cache[n] = seq.size + $cache[term]
      return $cache[n]
    else
      seq.push term
      term = collatz(term)
    end
  end
  seq.push term
  $cache[n] = seq.size
end

longest = 2.upto(999999).map{|x| [x, sequence(x)]}.max{|a, b| a[1] <=> b[1]}
puts "%d has a chain of %d terms." % longest
