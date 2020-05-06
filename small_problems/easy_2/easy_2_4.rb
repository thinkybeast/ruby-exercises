# Build a program that displays when the user will retire and how many years she has to work till retirement.
require 'date'

CURRENT_YEAR = Date.today.year


def print_retire_date(age, target_age)
  # calc difference between target age and current age (years_left)
  # get current year
  # add years_left to current year to get target_date
  years_left = target_age - age
  puts "It is #{CURRENT_YEAR}. You will retire in #{CURRENT_YEAR + years_left}."
  puts "Only #{years_left} more years to go!"

end


puts "How old are you?"
age = gets.chomp.to_i
puts "What age would you like to retire?"
target_age =gets.chomp.to_i

print_retire_date(age, target_age)
