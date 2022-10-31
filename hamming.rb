class Hamming
  def self.compute(dna_1_string, dna_2_string)
    raise ArgumentError if different_lengt?(dna_1_string, dna_2_string)

    dna_1_string.chars.zip(dna_2_string.chars).count{|l, r| ! l.eql?(r) }
  end

  def self.different_lengt?(dna_1_string, dna_2_string)
    ! dna_1_string.length.equal?(dna_2_string.length)
  end
end