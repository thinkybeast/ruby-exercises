# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

MIDNIGHT = Time.new(2018)


def get_time(time)
  hh, mm = time.split(':')
  [hh.to_i, mm.to_i]
end

def time_in_minutes(hh, mm)
  hh.abs * MINUTES_PER_HOUR + mm.abs
end

def after_midnight(time)
  # get the time
  # split the time into hours and minutes
  # then i get the number of minutes by multiplying hours my 60 and adding it to minutes
  # then i add those minutes to 0
  # then i mod by 1440 to get account for multiple days


  hh, mm = get_time(time)
  time_in_minutes(hh, mm) % MINUTES_PER_DAY
end

def before_midnight(time)
  # get the time
  # split the time into hours and minutes
  # multuply hours by 60 and add minutes
  # subtract those minutes from 1440
  # then mod by 1440

  hh, mm = get_time(time)
  (MINUTES_PER_DAY - time_in_minutes(hh, mm)) % MINUTES_PER_DAY
end

def before_midnight_dt(time)
  hh, mm = get_time(time)
  delta_time = (MIDNIGHT - time_in_minutes(hh % 24, mm))  
  delta = (MIDNIGHT - delta_time) / 60
  delta.to_i
end
def after_midnight_dt(time)
  hh, mm = get_time(time)
  delta_time = (MIDNIGHT + time_in_minutes(hh % 24, mm)) 
  delta = (delta_time - MIDNIGHT) / 60
  delta.to_i
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

p after_midnight_dt('00:00') == 0
p before_midnight_dt('00:00') == 0
p after_midnight_dt('12:34') == 754
p before_midnight_dt('12:34') == 686
p after_midnight_dt('24:00') == 0
p before_midnight_dt('24:00') == 0