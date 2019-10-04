class Poem
    def poem()
        puts "Enter the no of bottles:";
        bottles = gets.chomp.to_i;
        i = bottles;
        puts "Poem:";
        while(bottles>=0)
            if(bottles>2)
                puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.";
                puts "Take one down and pass it around, #{bottles-1} bottles of beer on the wall.";
                puts " ";
            elsif(bottles==2)
                puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.";
                puts "Take one down and pass it around, #{bottles-1} bottle of beer on the wall.";
                puts " ";
            elsif(bottles==1)
                puts "#{bottles} bottle of beer on the wall, #{bottles} bottle of beer.";
                puts "Take one down and pass it around, no more bottles of beer on the wall.";
                puts " ";
            else
                puts "No more bottles of beer on the wall, no more bottles of beer."
                puts "Go to the store and buy some more, #{i} bottles of beer on the wall."
            end
            bottles=bottles-1;
        end
    end
end
poem_obj = Poem.new;
poem_obj.poem();
