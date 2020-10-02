names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody' # this is the syntax for reassigning the value for a key/value pair within a hash. To fix this do the following

names[names.index('margaret')] = 'jody' # same as names[3] = 'jody'

p names
