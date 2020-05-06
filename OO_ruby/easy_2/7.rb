# Write the classes and methods that will be necessary to make this code run, and print the following output:
require 'pry'
require 'pry-byebug'

class Pet
  attr_reader :type, :name
  def initialize(type, name)
    @type = type
    @name = name
  end

  def to_s
    "a #{type} named #{name}"
  end
end

class Owner
  attr_reader :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def number_of_pets
    pets.size
  end

  def add_pet(pet)
    pets << pet
  end

  def print_pets
    pets.each {|pet| puts pet }
  end
end

class Shelter < Owner
  def initialize(name)
    @owner_list =[]
    super(name)
  end

  def adopt(owner, pet)
    owner.add_pet(pet)
    owner_list << owner unless owner_list.include?(owner)
  end

  def print_adoptions
    owner_list.each do |owner|
      puts "#{owner.name} has adopted the following pets:"
      owner.print_pets
      puts
    end
  end

  def available_pets
    puts "The Animal Shelter has the following unadopted pets"
    print_pets
  end

  private
  attr_reader :owner_list

end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new('Animal Shelter')
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."



shelter.add_pet(Pet.new('dog', 'Asta'))
shelter.add_pet(Pet.new('dog', 'Rocky'))
shelter.add_pet(Pet.new('cat', 'Meowth'))
shelter.add_pet(Pet.new('lizard', 'Brang'))
shelter.add_pet(Pet.new('cat', 'Purrfs'))
shelter.add_pet(Pet.new('cat', 'Bongo'))
shelter.add_pet(Pet.new('lizard', 'Brop'))
shelter.available_pets
puts "#{shelter.name} has #{shelter.number_of_pets} unadopted pets."

