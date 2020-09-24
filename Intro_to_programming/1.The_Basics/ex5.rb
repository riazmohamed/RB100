# ex5.rb factorial!

puts "Please inputs a number from 5 to 8."
user_input = gets.chomp
number = user_input.to_i

counter = 1
until number <= 0
  counter *= number
  number -= 1
end

puts "The factorial value for the number #{user_input} = #{counter}."
