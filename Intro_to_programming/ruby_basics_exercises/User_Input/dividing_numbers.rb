def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

def not_float?(number_string)
  number_string.to_i == number_string.to_f
end

puts '>> Please enter the numerator:'
numerator = gets.chomp
puts valid_number?(numerator) ? "Not a string" : "No string just integers"
puts not_float?(numerator) ? "Not a float" : "No floats allowed."
