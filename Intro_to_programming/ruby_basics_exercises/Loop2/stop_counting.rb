# stop_counting.rb

5.times do |index|
  puts index
  break if index == 2
end
puts "----------------------"

5.times do |index|
  puts index
  break if index == 4
end
puts "----------------------"

5.times do |index|
  puts index
  break if index > 7
end
