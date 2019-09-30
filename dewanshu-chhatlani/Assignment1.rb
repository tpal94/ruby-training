def poem()
    i = 99;
    while(i>0)
        if(i>2)
            puts "#{i} bottles of beer on the wall, #{i} bottles of beer.";
            puts "Take one down and pass it around, #{i-1} bottles of beer on the wall.";
            puts " ";
        elsif(i==2)
            puts "#{i} bottles of beer on the wall, #{i} bottles of beer.";
            puts "Take one down and pass it around, #{i-1} bottle of beer on the wall.";
            puts " ";
        else
            puts "#{i} bottle of beer on the wall, #{i} bottle of beer.";
            puts "Take one down and pass it around, no more bottles of beer on the wall.";
            puts " ";
            puts "No more bottles of beer on the wall, no more bottles of beer."
            puts "Go to the store and buy some more, #{i+98} bottles of beer on the wall."
        end
        i=i-1;
    end
end
poem();
# i=0;
# counter = 0;
# exm = Array("a".."z");
# # my_string = gets.chomp();
# my_string = "The quick Brown Fox jumps over the lazy dog"
# downstr =my_string.downcase;
# while(i<exm.length)
#     unless(downstr.include?exm[i])
#         counter = 1;
#         break;
#     end
#     i=i+1;
# end 
# puts  (counter==0?"Pangram": "Not Pangram");

