# Program to get sum of multiple of a number
class Number
  @num
  
  def initialize(num)
    @num=num
  end
  
  def getMultSum
      addition = @num
      counter = 1
      while counter <= @num/2  do
        
        if(@num%counter==0)
          addition+=counter
        end
        
        counter+=1
      end
    
      return addition
  end

end

puts "Please Enter the number for which you want multiples"
num = gets.chomp
obj = Number.new(num.to_i)
puts "sum of multiple of " + num+" : " + obj.getMultSum.to_s
