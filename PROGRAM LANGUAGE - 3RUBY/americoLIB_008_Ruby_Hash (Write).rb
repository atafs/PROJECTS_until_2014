#!/usr/bin/env ruby
hash_brown = {
  "topping1" => "Sour cream",
  "topping2" => "Butter",
  "topping3" => "Salt",
  "topping4" => "Ketchup"
}

puts "-------------------------"
puts hash_brown["topping2"]
puts hash_brown["topping4"]
puts hash_brown["topping1"]
puts "-------------------------"
print hash_brown
puts ""

first_hash = Hash.new
first_hash["first_name"] = "Jacob"
first_hash["nick_name"] = "Day"
first_hash["last_name"] = "Williams"

puts "-------------------------"
puts first_hash["first_name"]
puts first_hash["last_name"]
puts "-------------------------"
print first_hash
puts ""

$end

