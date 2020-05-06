# Write a program that asks the user for their age in years, and then converts that age to months.

def age_in_months(years)
  years * 12
end


puts "Hey, how old are you by the way?"
months_age = age_in_months(gets.chomp.to_i)
puts "You've lived #{months_age} months! すごい！"
