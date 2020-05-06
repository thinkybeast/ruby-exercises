#What output does this code print? Fix this class so that there are no surprises waiting in store for the unsuspecting developer.


class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{name.upcase}."
  end
end

name = 42
fluffy = Pet.new(name)
name += 1
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

=begin 
On line 16 we initialize name and assign in the value of integer 42
on line 17 we initialize the var fluffy. we then instantiate an instance of Pet, passing our variable name as an argument, and assign the new object to fluffy.
Inside the Pet initialize method, we invoke #to_s on parameter name, which returns a new string object, and assign that to the ivar @name.
On line 18, we increment the local name var by 1. name now references the integer  value 43. At this point, the local variable name and the instance variable @name point to different objects, so the instance variable is not affected by this.
On line 19, we invoke the instance method Pet#name, and output that to the screen. 
On line 20, we invoke the puts method, passing our pet object. The puts method automatically invokes the Pet#to_s instane method, which returns a string.
On line 21 we output the value of Pet#name again, which is identical to line 19, as no changes to the ivar @name have been made.
On line 22 we output the value of local variable name, which points to the integer 43
=end