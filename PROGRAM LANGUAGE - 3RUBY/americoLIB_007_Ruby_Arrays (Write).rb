#!/usr/bin/env ruby

#array
soda_type = ["sprite", "coke", "montain dew", "orange soda", "dr peper", "surge"]

#print
puts "/* ------------------------------- */"
print "My soda type is: "
puts soda_type[2]

print "My soda type is: "
puts soda_type[-2]

puts "/* ------------------------------- */"
print "My soda type is [-6]: "
puts soda_type[-6]
print "My soda type is [0]: "
puts soda_type[0]

#array
soda_type1 = ["sprite", 6, "montain dew", 8.5225, "dr peper", 6+4]

#print
puts "/* ------------------------------- */"
puts "Print my Array content: "
puts soda_type1
puts "/* ------------------------------- */"
print soda_type1
puts ""

#String and Puts
puts "/* ------------------------------- */"
string_one = "My favorite drink is "
puts string_one + soda_type1[2]
puts soda_type1[4] + " tastes delicious!"
puts "soda_type1[4] + tastes delicious!"
puts "#{soda_type1[4]} tastes delicious!"
puts "/* ------------------------------- */"

$end