number_a = 0
number_b = 0

loop do
  puts "number_a is #{number_a += rand(2)}"
  puts "number_b is #{number_b += rand(2)}"
  puts "--------------------"
  next unless number_a == 5 || number_b == 5
  puts "5 reached!"
  break
end
