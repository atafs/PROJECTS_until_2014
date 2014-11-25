#!/usr/bin/env ruby

print "What is the triangles HEIGHT?"
h = gets.to_f;

print "What is this triangles WIDTH?"
w = gets.to_f;

#formula
area = 0.5 * h * w

#result
print "Guess what! Your tiangles area is #{area}!!!"

puts ""
puts "---------------------------"

puts "This is a pythagorean theoram calculator! You can find the hypotenus of a right triangle with it."

print "To get started, what is a side a?"
a = gets.to_f;

puts "What is side b of your triangle?"
b = gets.to_f;

#formula
a2 = a**2
b2 = b**2
c2 = a2 + b2

#result
puts "You look great today! By the way, your triangle is hypotenuse is #{Math.sqrt(c2)}"
puts ""
puts "You look great today! By the way, your triangle is hypotenuse is #{ Math.sqrt(c2).round }"
puts ""
puts "You look great today! By the way, your triangle is hypotenuse is #{ Math.sqrt(c2).round(2) }"



$end





