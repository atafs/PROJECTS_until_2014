#!/usr/bin/env ruby

#print
puts "-----------------------"
puts "Please type your name: "
puts ""
#gets
user_input = gets.chomp.capitalize

#print
puts "-----------------------"
puts ""
puts "Your first name is #{user_input.upcase}!"
puts "Your name proper is #{user_input.downcase}."
puts "Your name proper is #{user_input}."

#user
puts "-----------------------"
puts ""
print "First name? "
first_name = gets.chomp

print "Middle name? "
middle_name = gets.chomp

print "Last name? "
last_name = gets.chomp

#print
puts "-----------------------"
puts ""
puts "Your full name is #{first_name.capitalize} #{middle_name.capitalize} #{last_name.capitalize}. Very cool ;-)" 
puts "-----------------------"

$end
