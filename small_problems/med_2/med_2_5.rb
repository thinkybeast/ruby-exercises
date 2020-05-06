
# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.


def sum_of_sides(one, two)
  one + two
end

def invalid?(sides)
  sides.any? { |side| side <= 0 } ||
    sides.first(2).sum < sides.last
end

def scalene?(sides)
  sides == sides.uniq
end

def isoceles?
  sides.uniq
end

def triangle(*sides)
  sides.sort!

  return :invalid if invalid?(sides)
  
  case sides.uniq.size
  when 3 then :scalene
  when 2 then :isosceles
  when 1 then :equilateral
  end

end


p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid