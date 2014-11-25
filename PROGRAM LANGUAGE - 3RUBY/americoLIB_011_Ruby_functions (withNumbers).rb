#!/usr/bin/env ruby

puts ""
puts "---------------------------"
puts "Exercise 01"

#function
def factors_to_three(n)
  rest = n % 3
  
  if rest == 0
    puts "NUMBER #{n} is a FACTOR of three"
  else
    puts "number #{n} is NOT a factor of three"
  end
end

#print function
factors_to_three(99)
factors_to_three(457894)
factors_to_three(21)
factors_to_three(22)

puts ""
puts "---------------------------"
puts "Exercise 02"

#function
def factors_to_three1(n)
  rest = n % 3
  
  if rest == 0
    print "#{n}: true, "
    return true
  else
    print "#{n}: false, "
    return false
  end
end

#print function
factors_to_three1(99)
factors_to_three1(457894)
factors_to_three1(21)
factors_to_three1(22)

puts ""
puts ""
puts "---------------------------"



$end