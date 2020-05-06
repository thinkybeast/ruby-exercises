class Trinary
  def initialize(trinary)
    @trinary = trinary
  end

  def to_decimal
    return 0 if invalid_trinary?
   
    digits = @trinary.to_i.digits

    digits.map.with_index {|num, idx| num * 3**idx }.reduce(&:+)
  end

  def invalid_trinary?
    @trinary.match?(/[^0-2]/)
  end

end