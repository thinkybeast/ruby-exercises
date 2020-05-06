class PigLatin
  # grab first three letters
    # see if they match any defined sounds
    # if so, return word[3..-1] + word[0..2] + 'ay'
  # grab first two letters
    # see if they match any defined sounds
    # if so, return word[2..-1] + word[0..1] + 'ay'
  # grab first letter
    # see if it matches any defined sounds
    # if so, return word[1..-1] + word[0] + 'ay'
      # special case: x(consonant) or y(consonant), then return word + 'ay' (or reject)
  # else, return word + 'ay'

  # break phrase into array of words and map pigged word

  AY = 'ay'

  LETTER_SOUNDS = {
    3 => %w[squ sch spl str thr thw phr chr ],
    2 => %w[bl br ch cr qu th sh sl st sw sc sp fr dr gh gl gr kl kr pr pl ph wr ],
    1 => %w[b c d f g h j k l m n p q r s t v w x y z]
  }
  
  def self.translate(phrase)
    phrase.split(' ').map { |word| pigged(word) }.join(' ')
  end


  private

  def self.pigged(word)

    return word + AY if word[0, 2].match?(/xr|yt/)

    LETTER_SOUNDS.each do |key, sounds|
      if sounds.include?(word[0, key])
        return word[key..-1] + word[0..(key - 1)] + AY
      end
    end      
    
    word + AY
  end

end

 # p PigLatin.translate "pig"