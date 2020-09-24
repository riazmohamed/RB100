# ex5.rb factorial!

def numbers(number)
  num = number
  counter = 1
  until num <= 0
    counter *= num
    num -= 1
  end
  "The factorial value for the number #{number} = #{counter}."
end

puts numbers(5)
puts numbers(6)
puts numbers(7)
puts numbers(8)
