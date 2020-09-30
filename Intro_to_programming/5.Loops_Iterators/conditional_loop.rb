i = 0
 loop do
   i += 2
   next if i == 4 # skip the rest of the code in this iteration
   puts i
   break if i == 10
 end

# the execution will exit the loop when Ruby encounters the break keyword
