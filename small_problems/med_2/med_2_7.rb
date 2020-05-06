require 'date'

# Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.


def friday_13th(year)
# Input integer (year)
# Output  integer (count of friday 13ths)
# create a date obj on jan 13, year
# step through months, iterate a counter when month 13th is friday
# return count

  count = 0
  month = 1
  date = Date.new(year, month, 13)
  
  loop do
    count += 1 if Date.new(year, month, 13).friday?
    month += 1
    break if month > 12
  end

  count
end

def find_last_friday(date)
  date = date.next_month
  loop do
    date = date.prev_day
    break if date.friday?
  end
  date
end

def five_fridays(year)
  count = 0

  1.upto(12) do |month|
    date = find_last_friday(Date.new(year, month, 1))
    count += 1 if date.mday >= 29
  end

  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2


p five_fridays(2020)


