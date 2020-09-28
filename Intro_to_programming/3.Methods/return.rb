# return.rb

def add_three(number)
  return number + 3 # explicitly returning the evaluated result of the expression
  number + 4 # this line is ommitted from execution
end

returned_value = add_three(4)
puts returned_value


# the return reserved word is not required in order to return something from a method
# Ruby methods always return the evaluated result of the last line of expression unless an explict return comes before it.
