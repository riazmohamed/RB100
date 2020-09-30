#  ex2.rb

user_input = ""

while user_input != "STOP"
  puts "do you want to carry on typing? "
  puts "Please type 'STOP' to stop the program: "
  user_input = gets.chomp
end

puts "Execution stopped!"
