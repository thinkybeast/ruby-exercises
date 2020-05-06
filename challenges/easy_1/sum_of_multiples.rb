class SumOfMultiples
  
  def self.to(limit)
    self.new(3, 5).to(limit)
  end

  def initialize(*nums)
    @nums = nums
  end

  def to(limit)
    # input: int
    # output: int (result)
    # find all multiples and add to array
      # from 1 to limit - 1
      # if current % num == 0, add to array
      # nums.any? {|num| current % num}
    # reduce array, return result

    multiples = [0]
    ((@nums.min)...limit).each do |current|
      multiples << current if @nums.any? {|num| current % num == 0 }
    end

    multiples.reduce(&:+)
  end


end