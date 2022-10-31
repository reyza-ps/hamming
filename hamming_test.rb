gem 'minitest'
require 'minitest/autorun'
require_relative 'hamming'

class HammingTest < Minitest::Test

  def test_identical_strands
    assert_equal 0, Hamming.compute('A', 'A')
  end

  def test_long_identical_strands
    assert_equal 0, Hamming.compute("GGACTGA", "GGACTGA")
  end

  def test_complete_distance_in_single_nucleotide_strands
    assert_equal 1, Hamming.compute("A", "G")
  end

  # def test_disallow_first_strand_longer
  #   assert_raises(ArgumentError) { Haming.compute("AATG", "AAA") }
  # end
end