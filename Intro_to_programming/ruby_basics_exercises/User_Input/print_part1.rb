puts ">> Do you want to print something? (y/n)"
input = gets.chomp.downcase
puts input == 'y' ? 'something' : ''
puts "something" if input == 'y'
