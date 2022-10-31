class Hamming
  def self.compute(dna_1_string, dna_2_string)
    @dna_strand_1 = Strand.new(dna_1_string)
    @dna_strand_2 = Strand.new(dna_2_string)
    raise ArgumentError if ! @dna_strand_1.length.equal?(@dna_strand_2.length)

    @dna_strand_1.chars.zip(@dna_strand_2.chars).count{|l, r| ! l.eql?(r) }
  end
end

class Strand
  def initialize(dna_string)
    @dna_string = dna_string
  end

  def length
    @dna_string.length
  end

  def chars
    @dna_string.chars
  end
end