# Complete the Program - Cats!
# Consider the following program.

class Pet
  attr_reader :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Pet
  attr_reader :color
  
  def initialize(name, age, color)
    super(name, age)
    @color = color
  end

  def to_s
    "My cat #{name} is #{age} years old and has #{color} fur."
  end
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch

=begin 
Further Exploration
An alternative approach to this problem would be to modify the Pet class to accept a colors parameter. If we did this, we wouldn't need to supply an initialize method for Cat.

Why would we be able to omit the initialize method? Would it be a good idea to modify Pet in this way? Why or why not? How might you deal with some of the problems, if any, that might arise from modifying Pet?

-- If we modified in this way, we would not need to define an initialize method for Cat because the initialize for Pet would automatically be called and receive the relavant arguments.

This is not a good modification to make unless we were sure that all types of pets had a color. If this was the case for most - but not all - subclasses of Pets, then we might provide a default value for the color parameter in the initialize definition, e.g. 'none', which could be specified by subclasses that require color as an argument.


=end