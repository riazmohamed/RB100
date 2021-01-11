=begin
  write a method that changes the date format as shown
=end

def format_date(date)
  date = date.split(/\-/).reverse.join(".") if date.match(/\-/)
  p date
end

format_date('2016-06-17') # -> '17.06.2016'
format_date('2016/06/17') # -> '2016/06/17' (no change)
# the above is created using a mix of Ruby methods and Regex

# the following is using just Regex capture group
def format_date1(original_date)
  original_date.sub(/\A(\d\d\d\d)-(\d\d)-(\d\d)\z/, '\3.\2.\1')
end

format_date1('2016-06-17') # -> '17.06.2016'
format_date1('2016/06/17') # -> '2016/06/17' (no change)
