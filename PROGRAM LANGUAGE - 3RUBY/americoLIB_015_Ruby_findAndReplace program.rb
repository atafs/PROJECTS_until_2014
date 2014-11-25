#!/usr/bin/env ruby

#video youtube
#Learn Ruby Programming - Day 15 - Find and Replace Program

puts ""
puts "---------------------------"
puts ""

#interact with user
puts "Paste your document here: "
document = gets.chomp

puts ""

puts "What word would you like removed?"
remove = gets.chomp

puts ""

puts "What would you like there instead?"
replace = gets.chomp

target_words = document.split(" ")

puts ""
print document
puts ""

target_words.each do |a_word|
  if a_word != remove
    print a_word + (" ")
  else
    print replace + (" ")
  end
end

puts ""
puts ""
puts "---------------------------"
puts ""
