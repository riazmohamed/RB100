words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

new_hsh = Hash.new

words.each do |ele|
  word = ele.split("").sort.join("")
  if
    new_hsh.has_key?(word)
    new_hsh[word] << ele
  elsif new_hsh.has_key?(word) == false
      new_hsh[word] = [ele]
  end
end

new_hsh.values.each { |val| p val }
