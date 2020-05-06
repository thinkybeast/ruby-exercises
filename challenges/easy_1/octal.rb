class Octal
  attr_reader :octal
  def initialize(oct)
    @octal = oct
  end

  def to_decimal
    invalid_octal? ? 0 : calculate_decimal    
  end

  private

  def invalid_octal?
    octal.match?(/[^0-7]/)
  end

  def calculate_decimal
    octal.to_i.digits.map.with_index do |num, idx|
      num * 8**idx
    end.reduce(&:+)
  end

end