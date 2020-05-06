class BeerSong

  def initialize
    @verses = [VerseNoneLeft.new, VerseOneLeft.new, VerseTwoLeft.new]
    @verses.concat((3..99).map {|num| VerseStandard.new(num) })
  end

  def verse(num_bottles)
    @verses[num_bottles].sing
  end
  
  def verses(num_bottles, limit)
    num_bottles.downto(limit).map {|num| verse(num) }.join("\n")
  end

  def lyrics
    verses(99, 0)
  end

end

class VerseStandard
  attr_reader :num_bottles

  def initialize(num_bottles)
    @num_bottles = num_bottles
  end

  def sing
  <<~VERSE
#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer.
Take one down and pass it around, #{num_bottles - 1} bottles of beer on the wall.
  VERSE
  end
end

class VerseTwoLeft
  def sing
    <<~VERSE
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
    VERSE
  end
end

class VerseOneLeft
  def sing
      <<~VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
      VERSE
    end
end

class VerseNoneLeft
  def sing
      <<~VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    end
end
