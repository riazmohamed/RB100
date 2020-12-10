numbers = [7, 9, 13, 25, 18]

puts ">........Option 1."
until numbers.size == 0
  puts numbers.shift
end

puts ">........Option 2."
numbers = [7, 9, 13, 25, 18]
count = 0
until count == numbers.length
  puts numbers[count]
  count += 1
end
