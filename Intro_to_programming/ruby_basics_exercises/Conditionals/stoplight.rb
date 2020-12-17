stoplight = ['green', 'yellow', 'red'].sample

result = case stoplight
when 'green' then 'Go!'
when 'yellow' then 'Slow down!'
else 'Stop!'
end

puts result
