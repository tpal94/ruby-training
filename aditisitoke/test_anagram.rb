require_relative 'anagram'
require 'minitest/autorun'

class TestAnagram < Minitest::Test

# def test_no_matches
#         # skip
#         detector = Anagram.new('diaper')
#         anagrams = detector.match(["hello", "world", "zombies", "pants"])
#         expected = []
#         assert_equal expected, anagrams
# end

def test_detects_anagram
        skip
        detector = Anagram.new('listen')
        anagrams = detector.match(["enlists", "google", "inlets", "banana"])
        expected = ["inlets"]
        assert_equal expected, anagrams
end

def test_detects_two_anagrams
    skip
    detector = Anagram.new('master')
    anagrams = detector.match(["stream", "pigeon", "maters"])
    expected = ["maters", "stream"]
    assert_equal expected, anagrams.sort
  end



end