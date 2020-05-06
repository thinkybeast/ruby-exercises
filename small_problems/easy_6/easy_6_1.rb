# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# Given a measurement of degree in integer
##  num.divmod(1) to get degrees and minutes_pct
## degress = degrees.floor % 360 (to account for > 360)
# Multiply minutes_pct by 60 to get minutes 
# minutes.divmod(1) to get minutes and seconds.pct. 
# seconds_pct * 60 to get the remaining seconds
# Format all numbers to two digits and convert to string, adding the appropriate symbols.
# return a string

DEGREE = "\xC2\xB0"

def dms(num)

modnum = num > 0 ? 1 : -1
degrees, minutes_dec = num.divmod(modnum)
degrees = degrees % 360 
minutes, seconds_dec = (minutes_dec * 60).divmod(modnum)
seconds = (seconds_dec * 60).abs
if seconds.round == 60
  seconds = 0
  minutes += 1
end



# puts "#{degrees}, #{minutes}, #{seconds}"
"#{degrees}#{DEGREE}#{format('%02d', minutes)}'#{format('%02d', seconds)}\""

end




p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(-76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")