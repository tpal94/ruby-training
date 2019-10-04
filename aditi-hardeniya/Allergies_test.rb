require 'minitest/autorun'
require_relative 'Allergies'

class AllergiesTest < MiniTest::Unit::TestCase
  def test_ignore_non_allergen_score_parts
allergies=Allergies.new
allergies.allerge_score(509)
  assert_equal ['eggs', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'pollen', 'cats'], allergies.list_of_allergies
  end

 def test_no_allergies_at_all
  allergies=Allergies.new
    allergies.allerge_score(0)
    assert_equal [], allergies.list_of_allergies
  
  end

  def test_allergic_to_just_eggs
    allergies=Allergies.new
    allergies.allerge_score(1)
    assert_equal ['eggs'], allergies.list_of_allergies
  
  end

  def test_allergic_to_just_peanuts
    allergies=Allergies.new
    allergies.allerge_score(2)
    assert_equal ['peanuts'], allergies.list_of_allergies
  
  end

  def test_allergic_to_eggs_and_peanuts
    allergies=Allergies.new
    allergies.allerge_score(3)
    assert_equal ['eggs', 'peanuts'], allergies.list_of_allergies
  
  end

  def test_allergic_to_lots_of_stuff
    allergies=Allergies.new
    allergies.allerge_score(248)
    assert_equal ['strawberries', 'tomatoes', 'chocolate', 'pollen', 'cats'], allergies.list_of_allergies
  
  end

  def test_allergic_to_everything
    allergies=Allergies.new
    allergies.allerge_score(255)
    assert_equal ['eggs', 'peanuts', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'pollen', 'cats'], allergies.list_of_allergies
  
  end

  # def test_no_allergies_means_not_allergic
  #   allergies=Allergies.new
  #   allergies = Allerge_score.new(0)
  #   refute allergies.is_allergic_to('peanuts')
  #   refute allergies.is_allergic_to('cats')
  #   refute allergies.is_allergic_to('strawberries')
  # end

  # def test_is_allergic_to_eggs
  #   allergies=Allergies.new
  #   allergies.Allerge_score(1)
  #   assert allergies.is_allergic_to('eggs')
  # end

  def test_allergic_to_eggs_in_addition_to_other_stuff
    allergies=Allergies.new
    allergies.allerge_score(5)
    assert allergies.is_allergic_to('eggs')
    assert allergies.is_allergic_to('shellfish')
    refute allergies.is_allergic_to('strawberries')
  end
end