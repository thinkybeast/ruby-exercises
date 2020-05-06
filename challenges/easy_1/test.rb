require 'pry'
require 'pry-byebug'
class DNA
  attr_reader :strand

  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    distance = 0
    original = strand.each_char
    other = other_strand.each_char
    binding.pry
    loop do
      distance += 1 if original.next != other.next
    end
    distance
  end
end

DNA.new('ACT').hamming_distance('GGA')