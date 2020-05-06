name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# What does this print out? Can you explain these results?

# This prints BOB twice, because String#upcase! is a mutator method. mutator methods change the value stored at a given memory address. because name and save_name reference the same memory address, both point to the updated value.