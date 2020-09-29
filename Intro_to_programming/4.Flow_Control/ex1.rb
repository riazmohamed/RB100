p (32 * 4) >= 129 # => false
p false != !true # => false
p true == 4 # => false - 4 is a truthy value but is not equal to the boolean true
p false == (847 == '847') # => true
p (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false # => true
