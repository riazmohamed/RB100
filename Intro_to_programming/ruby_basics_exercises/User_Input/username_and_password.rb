USER_NAME = 'admin'
PASSWORD = 'SecreT'

loop do
  puts '>> Please enter user name:'
  name_input = gets.chomp.downcase
  puts '>> Please enter your password:'
  password_input = gets.chomp

  if name_input == USER_NAME && password_input == PASSWORD
    puts 'Welcome!'
    break
  else
    puts '>> Authorization failed!'
  end
end
