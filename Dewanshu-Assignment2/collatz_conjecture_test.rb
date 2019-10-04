require 'minitest/autorun'
require_relative 'collatz_conjecture'

class CollatzConjectureTest < Minitest::Test
  def test_zero_steps_for_one
    collatz = CollatzConjecture.new(1)
    assert_equal 0, collatz.steps()
  end

  def test_divide_if_even
    collatz = CollatzConjecture.new(20)
    assert_equal 7, collatz.steps()
  end

  def test_even_and_odd_steps
    collatz = CollatzConjecture.new(12)
    assert_equal 9, collatz.steps()
  end

  def test_large_number_of_even_and_odd_steps
    collatz = CollatzConjecture.new(1_000_000)
    assert_equal 152, collatz.steps()
  end

  def test_zero_is_an_error
    collatz = CollatzConjecture.new(0)
    assert_equal "Enter a positive number.", collatz.steps()
  end

  def test_negative_value_is_an_error
    collatz = CollatzConjecture.new(-15)
    assert_equal "Enter a positive number.", collatz.steps()
  end
end
