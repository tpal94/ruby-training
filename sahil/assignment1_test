require 'minitest/autorun'
require_relative 'Gadi'

class GadiTest < MiniTest::Unit::TestCase
  

  def test_check_hours
    clock1 = Gadi.new
    clock1.set_times(11, 9)
    assert_equal "11:9", clock1.to_print
  end

  def test_check_add_minutes
    clock2 = Gadi.new
    clock2.set_times(10) 
    clock2.add_minutes(3)
    assert_equal "10:3", clock2.to_print
  end


  def test_check_subtract_minutes
    clock3 = Gadi.new
    clock3.set_times(10)
    clock3.subtract_minutes(30)
    assert_equal "9:30", clock3.to_print
  end

  def test_check_equal
    clock4 = Gadi.new
    clock5 = Gadi.new
    
     clock4.set_times(15, 37)
     clock5.set_times(15, 37)
    assert_equal clock4.to_print, clock5.to_print
  end



end
