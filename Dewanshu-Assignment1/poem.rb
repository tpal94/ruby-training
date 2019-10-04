class Poem
    def initialize(b)
        @bottles = b;
    end
    def steps(count=0)
        i = @bottles;
        if(@bottles<0)
            return "Enter positive number of bottles.";
        else
            while(@bottles>=0)
                if(@bottles>2)
                    puts "#{@bottles} bottles of beer on the wall, #{@bottles} bottles of beer.";
                    puts "Take one down and pass it around, #{@bottles-1} bottles of beer on the wall.";
                    puts " ";
                    count = count + 2;
                elsif(@bottles==2)
                    puts "#{@bottles} bottles of beer on the wall, #{@bottles} bottles of beer.";
                    puts "Take one down and pass it around, #{@bottles-1} bottle of beer on the wall.";
                    puts " ";
                    count = count + 2;
                elsif(@bottles==1)
                    puts "#{@bottles} bottle of beer on the wall, #{@bottles} bottle of beer.";
                    puts "Take one down and pass it around, no more bottles of beer on the wall.";
                    puts " ";
                    count = count + 2;
                else
                    puts "No more bottles of beer on the wall, no more bottles of beer."
                    puts "Go to the store and buy some more, #{i} bottles of beer on the wall."
                    count = count + 2;
                end
                @bottles=@bottles-1;
            end
            return count;
        end
    end
end
