puts "Please enter a valid integer: "
number = gets.chomp.to_i

answer = case
when number > 0 && number < 51 then "number is between 0 and 50"
when number > 50 && number < 101 then "number is between 50 and 100"
when number > 100 then "Number is over 100"
else "Number is less than 0"
end

puts answer
