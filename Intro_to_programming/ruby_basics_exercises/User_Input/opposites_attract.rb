def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def addition(number1, number2)
  puts "(#{number1}) + (#{number2}) = #{number1.to_i + number2.to_i}"
end

def polar_check(first_number, second_number)
  positive_number = 0
  negative_number = 0
  first_number.to_i > 0 ? positive_number += 1 : negative_number += 1
  second_number.to_i > 0 ? positive_number += 1 : negative_number += 1
  positive_number == negative_number
end

def correct_number_input
  number = ""
  loop do
    puts ">> Please enter a positive or negative integer:"
    number = gets.chomp
    break if valid_number?(number)
  end
  number
end

first_number = ""
second_number = ""

loop do
  first_number = correct_number_input
  second_number = correct_number_input

  if polar_check(first_number, second_number) == false
    puts ">> Sorry. One integer must be positive, one must be negative."
    puts ">> Please start over."
  else
    break
  end
end

addition(first_number, second_number)
