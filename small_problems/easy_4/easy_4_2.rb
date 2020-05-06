# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

=begin
1 st
2 nd
3 rd
4 - 10 th
11, 12, 13 th
=end


def append_suffix(num)
  suffix =  case num % 10
            when 1 then 'st'
            when 2 then 'nd'
            when 3 then 'rd'
            else 'th'
            end

  suffix = 'th' if (11..13).include?(num % 100)
  num.to_s + suffix
  
end

def century(num)
  # given a number
  # calculate the 'century' numer of that number
  # append proper suffix and return string

  century = (num + 99) / 100 
  append_suffix(century)

end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'