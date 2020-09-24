# ex4.rb
films = Hash.new
films[:first] = 1975
films[:second] = 2004
films[:third] = 2013
films[:fourth] = 2001
films[:fifth] = 1981

year_array = []
films.each { |film, year| year_array << year }
puts year_array[0]
puts year_array[1]
puts year_array[2]
puts year_array[3]
puts year_array[4]
