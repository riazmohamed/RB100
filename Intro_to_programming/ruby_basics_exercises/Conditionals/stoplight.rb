stoplight = ['green', 'yellow', 'red'].sample

result = case stoplight
when 'green' then 'Go!'
when 'yellow' then 'Slow down!'
when 'red' then 'Stop!'
end

puts result
