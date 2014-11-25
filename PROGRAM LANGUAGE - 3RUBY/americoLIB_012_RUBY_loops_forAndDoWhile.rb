#!/usr/bin/env ruby

puts ""
puts "---------------------------"
puts "Exercise 01"

array_list = ["first line", "second line", "third line"]

#forEach
for object in array_list
  print "Item one: #{object}; "
  
end

puts ""
puts ""

for surf in array_list.reverse
  print "#{surf}"
  puts ""

end


puts ""
puts ""
puts "---------------------------"
puts "Exercise 02"

#array LIST
favorite_candy = ["resses", "snickers", "milky way", "three muskteers"]

#Do While
counter = 4

favorite_candy.each do |item|
  
  puts "#{counter}: #{item}"
  counter -= 1

end


puts ""
puts "---------------------------"
puts "Exercise 03"

#index included (optimize code)
favorite_candy.each_with_index do |item, index|
  
  puts "#{index}. #{item}"

end

$end





