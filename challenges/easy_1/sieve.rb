class Sieve

  def initialize(n)
    @arr = (2..n).to_a
  end

  def primes
    result = @arr.clone

    2.upto(@arr.size) do |num|
      result.delete_if {|i| i % num == 0 && i != num } if result.include?(num)
    end

    result
  end
end