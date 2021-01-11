# to write a method that changes the date format 2016-06-17 or 2016/06/17 to the format 17.06.2016

def format_date(original_date)
  original_date.sub(/\A(\d\d\d\d)-(\d\d)-(\d\d)\z/, '\3.\2.\1')
               .sub(/\A(\d\d\d\d)\/(\d\d)\/(\d\d)\z/, '\3.\2.\1')
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2017/05/03') # -> '03.05.2017'
p format_date('2015/01-31') # -> '2015/01-31' (no change)


puts "OPTION 2 --------------->"
def format_date1(original_date)
  original_date.sub(/\A(\d\d\d\d)([\-\/])(\d\d)\2(\d\d)\z/, '\4.\3.\1')
end
p format_date1('2016-06-17') # -> '17.06.2016'
p format_date1('2017/05/03') # -> '03.05.2017'
p format_date1('2015/01-31') # -> '2015/01-31' (no change)
