# conditional.rb

puts "Put in a number: "
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end

#  comparison operators always return a boolean value
#  a boolean value is either true or false
# when comparing two different values both of them should be of the same data type
