# ex2.rb

puts "Please enter a 4 digit whole number: "
number = gets.chomp.to_i

if number.to_i != 0
  puts "The number you have entered is '#{number}'!!!"
else
  puts "Please enter a valid number!!!"
end

puts "Please type 'thousand' to find the thousands place."
puts "Please type 'hundred' to find the hundreds place."
puts "Please type 'ten' to find the tens place."
puts "Please type 'one' to find the ones place."
user_place_input = gets.chomp.downcase!

ones = number % 10
tens = number % 100 / 10
hundreds = number % 1000 / 100
thousands = number / 1000

case user_place_input
  when "thousand"
    puts "The thousands place is #{thousands}"
  when "hundred"
    puts "The hundreds place is #{hundreds}"
  when "ten"
    puts "The tens place is #{tens}"
  when "one"
    puts "The ones place is #{ones}"
  else
    puts "Please enter a valid number!!!"
end
