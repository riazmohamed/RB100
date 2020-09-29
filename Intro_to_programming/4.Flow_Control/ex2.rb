def capitals(words)
  return words.upcase if words.length > 10
  words
end

puts capitals("Helloooooooooooooooo")
