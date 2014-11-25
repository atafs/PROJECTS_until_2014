#!/usr/bin/env ruby

#variable01
your_age1 = 19

if your_age1 <= 17
  puts "your not old enough for this site"
else
  puts "What is your gender? "
end

#variable02
your_age2 = 16
if your_age2 <= 17
  puts "Your not old enough for this site"
end

#variable03
your_age3 = 21
if your_age3 <= 18
  puts "your not old enough for this site"
elsif your_age3 == 21
  puts "Hey, lets party!!!"
elsif your_age3 <= 100
  puts "What is your gender? "
  your_age3 + 80
else
  puts "Go to this site: http://snakeHouse.pt"
end

#print and puts
print "Variable 01: "
puts your_age1
print "Variable 02: "
puts your_age2
print "Variable 03: "
puts your_age3
