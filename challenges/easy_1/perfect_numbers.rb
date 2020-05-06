class PerfectNumber

  def self.classify(num)
    # get the divisors for num
    # sum them
    # compare sum to num
    # return string  perfect, abundant or deficient.

    raise RuntimeError.new if num <= 0

    sum_of_divisors = get_divisors(num).reduce(&:+)
   
    case sum_of_divisors <=> num
    when 0 then 'perfect'
    when 1 then 'abundant'
    when -1 then 'deficient'
    end

  end


  private

  def self.get_divisors(num)
    (1..(num / 2)).select { |div| num % div == 0 }
  end
end