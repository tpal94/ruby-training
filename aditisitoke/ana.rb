class Anagram
  attr_reader :word, :letters
  def initialize(word)
    @word    = word.downcase
    @letters = word.downcase.chars
  end

  def match(x)
    x.select { |x| x.downcase.chars.sort == letters.sort && word != x.downcase }
  end
end