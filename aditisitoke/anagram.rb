class Anagram
    attr_accessor :x,:my_string
      def initialize(x , my_string)
      @x = x
      @my_string = my_string
      end
     
      def match
      if (my_string.downcase.chars.sort == x.downcase.chars.sort && my_string.length == x.length)
          puts "#{x} is an anagram"
      else
          puts "#{x} is not an anagram"
      end
      end
  end
  puts "Enter a string !!"
  my_string = gets.chomp
  
      for a in 0..3
      puts "Enter the word you want to check for anagram !!"
      x = gets.chomp
      object = Anagram.new(x,my_string)
     
      object.match
      end