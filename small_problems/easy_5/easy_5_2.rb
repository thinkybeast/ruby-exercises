# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.


MIDNIGHT = Time.new(2018,9,30)


def get_time(hh, mm)
  "#{sprintf('%02d', hh)}:#{sprintf('%02d', mm)}"
end


def time_of_day(minutes)
# given an integer which represents a number of minutes
# calculate how many hours (60) and minutes (remainder) have elapsed
# if number is negative, subtract hours from 23 and minutes from 60
# if number is positive, add hours from 0 and minutes from 0
# convert that number to a string
  hh, mm = minutes.abs.divmod(60)
  hh = hh.divmod(24)[1]

  case minutes <=> 0
  when 1
    get_time(hh, mm)
  when -1
    get_time(23 - hh, 60 - mm)
  else
    "00:00"
  end

end

# solution using Time class. a bit simpler!
def day_and_time(minutes)
  day = MIDNIGHT + (minutes * 60)
  day.strftime("%A, %H:%M")
end




p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

p day_and_time(0) #== "00:00"
p day_and_time(-3) #== "23:57"
p day_and_time(35) #== "00:35"
p day_and_time(-1437) #== "00:03"
p day_and_time(3000) #== "02:00"
p day_and_time(800) #== "13:20"
p day_and_time(-4231) #== "01:29"

