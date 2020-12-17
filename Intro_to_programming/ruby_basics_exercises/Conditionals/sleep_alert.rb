status = ['awake', 'tired'].sample
result = status == 'awake' ? 'Be productive!' : 'Go to sleep!'
puts result

result1 = if status == 'awake'
            'Be productive!'
          else
            'Go to sleep!'
          end

puts result1
