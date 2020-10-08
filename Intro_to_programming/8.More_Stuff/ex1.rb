# ex1.rb

def check_for_lab_in(word)
  puts /lab/.match(word) ? "#{word} has 'lab' in it " : "no natch"
end

check_for_lab_in("laboratory")
check_for_lab_in("experiment")
check_for_lab_in("Pans Labyrinth")
check_for_lab_in("elaborate")
check_for_lab_in("polar bear")

puts "--------------option 2------------------"
def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "no match"
  end
end

check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")
