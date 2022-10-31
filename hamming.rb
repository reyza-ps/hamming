class Hamming
  def self.compute(dna_1_string, dna_2_string)
    dna_1_string.chars.zip(dna_2_string.chars).count{|l, r| l != r}
  end
end