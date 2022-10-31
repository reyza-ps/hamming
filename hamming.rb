class Hamming
  def self.compute(dna_1_string, dna_2_string)
    @dna_strand_1 = Strand.new(dna_1_string)
    @dna_strand_2 = Strand.new(dna_2_string)
    raise ArgumentError if ! @dna_strand_1.length_equal?(@dna_strand_2)

    @dna_strand_1.nucleotides_chars.zip(@dna_strand_2.nucleotides_chars).count{|l, r| ! l.eql?(r) }
  end
end

class Strand
  def initialize(dna_string)
    @dna_string = dna_string
  end

  def length
    @dna_string.length
  end

  def length_equal?(other_strand)
    @dna_string.length.equal?(other_strand.length)
  end

  def nucleotides_chars
    @dna_string.chars
  end
end