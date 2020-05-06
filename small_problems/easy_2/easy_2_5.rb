# Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.


def greeting(name)
  # check whether last char of name is an !
  # if so, shout back, if not give standard response

  puts name.end_with?('!') ? "HI #{name.chop.upcase}. WHY ARE WE SCREAMING?" : "Hello #{name}."

end

print "Hi there, what is your name? "
name = gets.chomp

greeting(name)