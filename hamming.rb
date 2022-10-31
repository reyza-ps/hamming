module BioRubyCorp
  class Hamming
    def self.compute(dna_1_string, dna_2_string)
      @dna_strand_1 = Generics::Strand.new(dna_1_string)
      @dna_strand_2 = Generics::Strand.new(dna_2_string)

      InformationTheory.hamming_distance(@dna_strand_1, @dna_strand_2)
    end
  end
end

module Generics
  class Strand
    def initialize(dna_string)
      @dna_string = dna_string
    end

    def to_s
      @dna_string
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
end

module InformationTheory
  def self.hamming_distance(string_1, string_2)
    raise ArgumentError if ! string_1.length_equal?(string_2)
    string_1.nucleotides_chars.zip(string_2.nucleotides_chars).count{|l, r| ! l.eql?(r) }
  end
end

Hamming = BioRubyCorp::Hamming