count = 1

loop do
  break if count > 5
  puts count % 2 == 0 ? "#{count} is even!" : "#{count} is odd!"
  count += 1
end
