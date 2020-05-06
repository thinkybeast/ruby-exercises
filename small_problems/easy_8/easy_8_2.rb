# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.


print "Enter a noun: "
noun = gets.chomp
print "Enter a verb: "
verb = gets.chomp
print "Enter an adjective: "
adj = gets.chomp
print "Enter a adverb: "
adv = gets.chomp

puts "Do you #{verb} your #{noun} #{adv}? That's #{adj}!"