# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.




def get_grade(test1, test2, test3)
# get mean
# case mean
  mean = [test1, test2, test3].reduce(:+) / 3
  case 
  when mean >= 100 then "A+"
  when mean >= 90 then  "A"
  when mean >= 80 then  "B"
  when mean >= 70 then  "C"
  when mean >= 60 then  "D"
  else                  "F"
  end
end




p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"