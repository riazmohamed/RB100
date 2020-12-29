pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2], pets[3] # => ['fish', "lizard"]
puts "I have a pet #{my_pets[0]} and a #{my_pets[1]}"

# other option
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
puts "I have a pet #{my_pets[0]} and a #{my_pets[1]}"

# other option
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets.select {|pet| pet == 'fish' || pet == 'lizard'}
puts "I have a pet #{my_pets[0]} and a #{my_pets[1]}"

# other option
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2,2]
puts "I have a pet #{my_pets[0]} and a #{my_pets[1]}"
