a = 7

def my_value(b)
  b = a + a # the vaiable a is not initialised within the scope of the method
end
# Mehods are self contained and hence cannot reference the variables initialised outside of its scope.

my_value(a)
puts a
