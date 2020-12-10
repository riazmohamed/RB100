a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each { |b| a += b }
end

my_value(array)
puts

# => undefined method `+' for nil:NilClass (NoMethodError)
