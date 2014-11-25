#!/usr/bin/env ruby

#video youtube
#Learn Ruby Programming - Day 14 - All about Loops

#while loops
bomb_timer1 = 10

while bomb_timer1 >= 0
  puts bomb_timer1
  bomb_timer1 = bomb_timer1 - 1
end

puts ""
puts "---------------------------"
puts ""

bomb_timer2 = 10

while bomb_timer2 >= 0
  puts bomb_timer2
  bomb_timer2 -= 1
end

puts ""
puts "---------------------------"
puts ""

bomb_timer3 = -5

while bomb_timer3 <= 10
  puts bomb_timer3
  bomb_timer3 += 1
end

puts ""
puts "---------------------------"
puts ""

#until loops
end_fix = 50

until end_fix < 20
  puts end_fix
  end_fix -= 3
end

puts ""
puts "---------------------------"
puts ""

#do loops
hp = 30
loop do
  hp -= 2
  puts "Damage done, hp remaining #{hp}"
  break if hp <= 0
end

puts "GAME OVER!!!"

puts ""
puts "---------------------------"
puts ""

any_number = 200
loop do
  any_number -= 5
  next if any_number % 2 != 0 #returns to the top
  puts "#{any_number}"
  break if any_number <= 0 #end loop
end

puts ""
puts "---------------------------"
puts ""

any_number1 = 50
loop do
  any_number1 -= 1
  next if any_number1 % 2 != 0 #returns to the top
  puts "#{any_number1}"
  break if any_number1 <= 0 #end loop
end

$end





