# ex.rb => hash list of movies

movies = {
  "jungle_book" => 1975,
  "terminator" => 2004,
  "The independence day" => 2013,
  "Batman begins" => 2001,
  "The Gladiator" => 1981
}

movies.each { |movie, year| puts year }

# alternative syntax for the same
puts "-----------------------------------------"
puts "-----------------------------------------"
puts "-----------------------------------------"

films = Hash.new
films[:first] = 1975
films[:second] = 2004
films[:third] = 2013
films[:fourth] = 2001
films[:fifth] = 1981

films.each { |film, year| puts year }
