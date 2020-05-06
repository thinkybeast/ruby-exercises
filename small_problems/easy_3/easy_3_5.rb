# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).



def multiply(num1, num2)
  num1 * num2
end

def square(num)
 multiply(num, num)
end

def power(num, pow)
  return multiply(num, power(num, pow - 1)) unless pow <= 2
  multiply(num, num)
end


p square(5)
p square(-8) == 64

p power(3, 4)

# What if we wanted generalize this method to a "power to the n" type method: cubed, to the 4th power, to the 5th, etc. How would we go about doing so while still using the multiply method?

 