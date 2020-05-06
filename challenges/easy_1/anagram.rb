class Anagram
  attr_reader :word, :key
  
  def initialize(word)
    @word = word
    @key = get_key(word)
  end

  def match(candidates)
    candidates.each_with_object([]) do |candidate, anagrams|
        next if word.downcase == candidate.downcase
        anagrams << candidate if key == get_key(candidate) 
    end

  end

  private

  def get_key(w)
    w.downcase.split('').sort
  end

end