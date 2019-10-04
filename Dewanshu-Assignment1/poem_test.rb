require 'minitest/autorun'
require_relative 'Poem'

class PoemTest < Minitest::Test
  def test_even_no
    poem = Poem.new(44)
    assert_equal 90, poem.steps()
  end

  def test_odd_no
    poem = Poem.new(35)
    assert_equal 72, poem.steps()
  end

  def test_for_zero
    poem = Poem.new(0)
    assert_equal 2, poem.steps()
  end

  def test_for_negative_no
    poem = Poem.new(-14)
    assert_equal "Enter positive number of bottles.", poem.steps()
  end
end
