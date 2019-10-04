require 'minitest/autorun'
require_relative 'poem'

class PoemTest < Minitest::Test
  def test_even_no
    # skip
    assert_equal 90, Poem.steps(44)
  end

  def test_odd_no
    # skip
    assert_equal 72, Poem.steps(35)
  end

  def test_for_zero
    # skip
    assert_equal 2, Poem.steps(0)
  end

  def test_for_negative_no
    # skip
    assert_equal "Enter positive number of bottles.", Poem.steps(-14)
  end
end
