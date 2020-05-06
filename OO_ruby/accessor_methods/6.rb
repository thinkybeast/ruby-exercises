# Using the following code, add the appropriate accessor methods so that @name is capitalized upon assignment.

class Person
  attr_reader :name

  def name=(the_name)
    @name = the_name.capitalize
  end
end

person1 = Person.new
person1.name = 'eLiZaBeTh'
puts person1.name