class DNA
  attr_reader :strand

  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(distance)
    #input: string
    #output: int, number of differences
    # test lengths
    # if unequal length, take slice of whichever is longer
      # arr.max[0, arr.min.size]
    # 0 to length, increment counter if strand[idx] != distance[idx]
    # return counter

    strand_sample, dist_sample = get_equal_strands(distance)

    hamming = 0

    0.upto(strand_sample.size - 1) do |idx| 
      hamming += 1 if strand_sample[idx] != dist_sample[idx] 
    end

    hamming
  end

  private

  def get_equal_strands(distance)
    case strand.size <=> distance.size
    when 0
      strand_sample, dist_sample = strand, distance
    when 1
      strand_sample, dist_sample = strand.slice(0, distance.size), distance
    when -1
      strand_sample, dist_sample = strand, distance.slice(0, strand.size)
    end

    [strand_sample, dist_sample]
  end

end