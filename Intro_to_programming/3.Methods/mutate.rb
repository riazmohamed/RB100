a = [1, 2, 3]

def no_mutate(array)
  array.last # the lasr method does not mutates the caller permanently
end

p "Before mutate method: #{a}" # => [1, 2, 3]
no_mutate(a)
p "After mutate method: #{a}" # => [1, 2, 3]
