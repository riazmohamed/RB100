# number_of_lines = nil
#
# def countdown(number_of_lines)
#   number_of_lines = number_of_lines.to_i
#   while number_of_lines > 0
#     puts 'Launch School is the best!'
#     number_of_lines -= 1
#   end
# end
#
# loop do
#   puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
#   number_of_lines = gets.chomp
#   break if %w(Q q).include?(number_of_lines)
#   if number_of_lines.to_i >= 3
#     countdown(number_of_lines)
#   else
#     puts ">> That's not enough lines."
#   end
# end
#
# puts ">--------------Option two"

number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
  input = gets.chomp
  break if input.upcase == 'Q'

puts input.to_i < 3 ? "That's not enough lines." : "Launch School is the best!\n" * input.to_i
end
