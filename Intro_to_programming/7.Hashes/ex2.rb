# merge

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
residence = {country: 'United Kingdom'}

person.merge(residence)
p person # here the merge method does not mutate the caller

puts "____________________"

person.merge!(residence)
p person # here the merge method mutates the caller
