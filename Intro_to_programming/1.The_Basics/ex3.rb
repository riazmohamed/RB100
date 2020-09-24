# ex.rb => hash list of movies

movies = {
  "jungle_book" => 1975,
  "terminator" => 2004,
  "The independence day" => 2013,
  "Batman begins" => 2001,
  "The Gladiator" => 1981
}

movies.each { |movie, year| puts year }
