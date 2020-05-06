class BeerSong


  def verse(num_bottles)
    case num_bottles
    when 0
      <<~VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    when 1
      <<~VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
      VERSE
    when 2
      <<~VERSE
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
      VERSE
    else
      <<~VERSE
#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer.
Take one down and pass it around, #{num_bottles - 1} bottles of beer on the wall.
      VERSE
    end

  end
  
  def verses(num_bottles, limit)
    num_bottles.downto(limit).map {|num| verse(num) }.join("\n")
  end

  def lyrics
    verses(99, 0)
  end

end


