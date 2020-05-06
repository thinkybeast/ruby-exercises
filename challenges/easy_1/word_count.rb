class Phrase

  def initialize(phrase)
    @phrase = phrase.downcase
  end

  def word_count
    #break phrase on spaces
    #strip punctuation at beginning/end
    # initialize hash word count
    # iterate through word array and increment hash at key word

    count = Hash.new(0)
    words = @phrase.split(/[^a-z0-9']+/)

    words.each { |word| count[strip_quotes(word)] += 1 }

    count
  end


  private

  def strip_quotes(word)
    word.match?(/\'[\w]+\'/) ? word[1..-2] : word
  end
end