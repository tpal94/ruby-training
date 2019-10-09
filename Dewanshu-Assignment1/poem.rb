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
                puts "#{@bottles>0?@bottles : "No more"} bottles of beer on the wall, #{@bottles>0 ? @bottles : "No more"} bottles of beer"
                print "#{@bottles>0?"Take one down and pass it around, ":"Go to the store and buy some more, "}"
                puts "#{@bottles==1? "No more" : @bottles>1?@bottles-1:i} bottles of beer on the wall"
                puts " "
                count = count + 2;
                @bottles=@bottles-1;
            end
            return count;
        end
    end
end
