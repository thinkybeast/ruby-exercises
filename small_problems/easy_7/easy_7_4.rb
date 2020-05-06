# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.


def swapcase(str)
  ch_array = str.chars.map do |ch|
      case ch
      when /[a-z]/
        (ch.ord - 32).chr
      when /[A-Z]/
        (ch.ord + 32).chr
      else
        ch
      end
    end

    ch_array.join
end


p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'