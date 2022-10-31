gem 'minitest'
require 'minitest/autorun'
require_relative 'hamming'

class HammingTest < Minitest::Test

  def test_identical_strands
    assert_equal 0, Hamming.compute('A', 'A')
  end
end