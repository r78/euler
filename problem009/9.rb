#!/usr/bin/env ruby
(1..1000).each{|b|
   (1..b).each{|a|
      c = Math.sqrt(a**2 + b**2)
      if a+b+c == 1000.0 and (a < b) and (b < c) then
         puts a*b*c.to_i
         exit
      end
   }
}
