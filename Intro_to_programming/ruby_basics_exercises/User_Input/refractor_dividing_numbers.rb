def number_input
  char = Array("a".."z") + Array("A".."Z")
  number = ""

  loop do
    number = gets.chomp
    if char.include?(number)
      puts ">> Invalid input. Only integers are allowed."
    elsif number == "0"
      puts ">> Invalid input. A number of 0 is not allowed."
    elsif number.to_f != number.to_i
      puts ">> Invalid input. Please enter a whole number."
    else
      break
    end
  end
  number.to_i
end

def divider
  puts ">> Please enter the numerator:"
  numerator = number_input
  denominator = ""

  loop do
    puts ">> Please enter the denominator:"
    denominator = number_input
    if denominator > numerator
      puts ">> Invalid input. Please enter a smaller denominator."
    else
      break
    end
  end

  ">> #{numerator} / #{denominator} is #{numerator / denominator}"
end

p divider
