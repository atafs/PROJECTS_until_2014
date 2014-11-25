#!/usr/bin/env ruby

#interact with user -------------------
puts "Example 01 ----------------------"
puts ""

puts "What is your first name?"
name_yours = gets.chomp

puts "How old are you?"
age_yours = gets.chomp

puts "How many kids do you have?"
kids_yours = gets.chomp

puts "Are you male or female"
sex_yours = gets.chomp

#print -------------------------------
puts ""
puts "You are #{age_yours} years old. Your name is #{name_yours}. You have #{kids_yours} kids. And you are #{sex_yours}."
puts ""

#print with HASH ---------------------
puts "Example 02 ----------------------"
puts ""

facebook_knows_all = Hash.new
facebook_knows_all ["name_yours"] = name_yours.capitalize
facebook_knows_all ["age_yours"] = age_yours.capitalize
facebook_knows_all ["kids_yours"] = kids_yours.capitalize
facebook_knows_all ["sex_yours"] = sex_yours.capitalize

#print
puts facebook_knows_all
puts ""
#--------------------------------------

#interact with user (optimize code)----
puts "Example 03 ----------------------"
puts ""

#hash (LIST)
facebook_knows_all1 = Hash.new

puts "What is your first name?"
facebook_knows_all1 ["name_yours"] = gets.chomp.capitalize

puts "How old are you?"
facebook_knows_all1 ["age_yours"] = gets.chomp

puts "How many kids do you have?"
facebook_knows_all1 ["kids_yours"] = gets.chomp

puts "Are you male or female"
facebook_knows_all1 ["sex_yours"] = gets.chomp.capitalize

#print
puts facebook_knows_all1
puts ""
puts "You are #{facebook_knows_all1 ["age_yours"]} years old. Your name is #{facebook_knows_all1 ["name_yours"]}. You have #{facebook_knows_all1 ["kids_yours"]} kids. And you are #{facebook_knows_all1 ["sex_yours"]}."

$end
