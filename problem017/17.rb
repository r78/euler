#!/usr/bin/env ruby

first_ten = %w(one two three four five six seven eight nine ten)
second_ten = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
units = %w(one two three four five six seven eight nine)
tens = %w(twenty thirty forty fifty sixty seventy eighty ninety)
thousand = %w(one thousand)

def count(arr)
  arr.join(" ").gsub(/\s|\-/, '').length
end

other_tens = []
tens.each{|t|
  other_tens += units.map{|u| "#{t}-#{u}"}.push(t)
}

hundreds = []
units.each{|u|
  hundreds.push("#{u} hundred")
}

more_than_hundred = []
hundreds.each{|h|
  more_than_hundred.push("#{h}")
  first_ten.each{|t|
    more_than_hundred.push("#{h} and #{t}")
  }
  second_ten.each{|t|
    more_than_hundred.push("#{h} and #{t}")
  }
  other_tens.each{|t|
    more_than_hundred.push("#{h} and #{t}")
  }
}

total = count(first_ten) + count(second_ten) + count(other_tens) + count(more_than_hundred) + count(thousand)
puts total
#puts count(units)*100 + (count(first_ten) + count(second_ten) + count(other_tens))*10 + count(%w(hundred))*9 + count(%w(hundred and))*9*99 + count(thousand)
