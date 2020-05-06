=begin
For this exercise, we'll be learning and practicing our knowledge of the arity of lambdas, procs, and implicit blocks. Two groups of code also deal with the definition of a Proc and a Lambda, and the differences between the two. Run each group of code below: For your answer to this exercise, write down your observations for each group of code. After writing out those observations, write one final analysis that explains the differences between procs, blocks, and lambdas.
=end

=begin OBSERVATIONS
1. procs do not enforce arity. that can be called with or without the correct number of arguments. unassigened parameters are given the value nil
2. Procs are a class; Lambdas are not a class and cannot be instantiated
3. Lambdas are a type of proc
4. Lambdas enforce arity. They must be called with the same number of arguments as params in their definition
5. yielding to a block when no block has been passed results in a LocalJumpError

=end


# Group 1
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc
puts my_proc.class
my_proc.call
my_proc.call('cat')


puts "-----\n\n"
# Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}." }
my_second_lambda = -> (thing) { puts "This is a #{thing}." }
puts my_lambda
puts my_second_lambda
puts my_lambda.class
my_lambda.call('dog')
# my_lambda.call # Wrong number of arguments (arity enforced)
#my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }  #name error, no class Lambda

puts "-----\n\n"

# Group 3
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."}
#block_method_1('seal') #LocalJumpError

puts "-----\n\n"


# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end

#animal = 'seal'  animal will be in scope for the block if initialized here
#block_method_2('turtle') { puts "This is a #{animal}."} #undefined local variable: argument not captured by block parameter; animal is not in scope

=begin
=end
