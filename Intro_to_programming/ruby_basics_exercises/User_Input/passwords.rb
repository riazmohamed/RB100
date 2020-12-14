PASSWORD = "SecreT"

loop do
  puts ">> Please enter your password:"
  input = gets.chomp
  puts input == PASSWORD ? "Welcome!" : ">> Invalid password!"
  break if input == "SecreT"
end
