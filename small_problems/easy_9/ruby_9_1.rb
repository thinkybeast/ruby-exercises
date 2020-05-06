# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title.


def greetings(name_arr, title_hsh)
  puts "Hello #{name_arr.join(' ')}! Nice to have a "\
  "#{title_hsh.values.join(' ')} around."
end



greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })