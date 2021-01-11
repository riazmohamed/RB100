=begin
  To write a method that changes the first arithmetic operator
  ie (+, -, *, /) to a '?'
=end

def mystery_math(string)
  string.sub(/[\+\-\*\/]/, "?")
end

p mystery_math('4 + 3 - 5 = 2')
p mystery_math('(4 * 3 + 2) / 7 - 1 = 1')
