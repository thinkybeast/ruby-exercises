# Update this class so you can use it to determine the lowest ranking and highest ranking cards in an Array of Card objects:

class Card
  include Comparable
  attr_reader :rank, :suit
  SUIT_VALUE = {
                 'Diamonds' => 2,
                 'Clubs' => 4,
                 'Hearts' => 6,
                 'Spades' => 8               
                }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def <=>(other_card)
    value <=> other_card.value
  end

  def to_s
    "#{rank} of #{suit}"
  end

  protected

  def value
     base_val = case rank
                when 'Ace' then 14
                when 'King' then 13
                when 'Queen' then 12
                when 'Jack' then 11
                else
                  rank
                end

    base_val *= 10 
    base_val += SUIT_VALUE[suit]
    base_val
  end
end




cards = [Card.new(2, 'Hearts'),
         Card.new(10, 'Diamonds'),
         Card.new('Ace', 'Clubs')]
puts cards
puts cards.min == Card.new(2, 'Hearts')
puts cards.max == Card.new('Ace', 'Clubs')

cards = [Card.new(5, 'Hearts')]
puts cards.min == Card.new(5, 'Hearts')
puts cards.max == Card.new(5, 'Hearts')

cards = [Card.new(4, 'Hearts'),
         Card.new(4, 'Diamonds'),
         Card.new(10, 'Clubs')]
puts cards.min.rank == 4
puts cards.min == Card.new(4, 'Diamonds')

cards = [Card.new(7, 'Diamonds'),
         Card.new('Jack', 'Diamonds'),
         Card.new('Jack', 'Spades')]
puts cards.min == Card.new(7, 'Diamonds')
puts cards.max.rank == 'Jack'

cards = [Card.new(8, 'Diamonds'),
         Card.new(8, 'Clubs'),
         Card.new(8, 'Spades')]
puts cards.min 
puts cards.max 
