require 'pry'
require 'pry-byebug'
# Make a madlibs program that reads in some text from a text file that you have created, and then plugs in a selection of randomized nouns, verbs, adjectives, and adverbs into that text and prints it. You can build your lists of nouns, verbs, adjectives, and adverbs directly into your program, but the text data should come from a file or other external source. Your program should read this text, and for each line, it should place random words of the appropriate types into the text, and print the result.

WORD_BANK = {
  'noun' => %w(cat dog anus cars jeans electrons investments eggsacs smartphone ladyboys guitar),
  'verb' => %w(swimming frying flying cycling thrusting tooting hustling snorting cheating braying wishing bloviating suckling),
  'adjective' => %w(hot sad painful spicy tired frantic hilarious erotic bittersweet elegiac lusty tangy crunchy brusque)
}

# Input filename
# Output: String
# Open the filename and read line by line
# for each line, grab the type of variable required
# from the appropriate list, select and pull a word and store as a local var
# output line with var(s) to screen
# read next line

File.foreach( 'madlibs.txt' ) do |line|
  replaced = line.split(' ').map! do |word|
    if word[0] == '#'
      type = word.match(/#(\w*)/)[1]
      # binding.pry
      word.gsub(/#(\w*)/, WORD_BANK[type].sample)
    else 
      word
    end
  end.join(' ')
  puts replaced
  gets
end