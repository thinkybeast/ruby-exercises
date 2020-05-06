# Write a program that will take a string of digits and give you all the possible consecutive number series of length n in that string.

class Series
  attr_accessor :num_str

  def initialize(num_str)
    @num_str = num_str
  end

  def slices(n)
    # input: int
    # output: array of slices of string
    # split string into digits and map to_i
    # add each_cons(n) slice of array to result array
    # return result
    raise ArgumentError.new "Invalid argument. Please provide an argument less than or equal to number of items in series" if n > num_str.size
    
    result =[]
    num_array.each_cons(n) { |slice| result << slice }
    result
  end

  private

  def num_array
    @num_str.split('').map(&:to_i)
  end

end