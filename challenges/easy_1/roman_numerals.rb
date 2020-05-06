class Integer
  ROMAN = {
    1000  => 'M',
    900   => 'CM',
    500   => 'D',
    400   => 'CD',
    100   => 'C',
    90    => 'XC',
    50    => 'L',
    40    => 'XL',
    10    => 'X',
    9     => 'IX',
    5     => 'V',
    4     => 'IV',
    1     => 'I'
  }

  def to_roman
    remaining = self
    roman_str = ''

    ROMAN.keys.each do |value|
      multiples, remaining = remaining.divmod(value)
      roman_str += ROMAN[value] * multiples
    end

    roman_str
  end

end