class Anagram

puts "Enter a string !!"
@@my_string = gets.chomp
@@my_string.split
@@x = Array.new(4)


def match

for a in 0..3

puts "Enter the word you want to check for anagram !!"
@@x = gets.chomp
    

i=0;
counter = 0;

if(@@x.length == @@my_string.length)
while (i<@@my_string.length) 
   if (@@x.include?@@my_string[i])
    counter = counter+1;
   end
    i= i+1;
end
end

if (counter == @@my_string.length)
    puts "#{@@x} is an anagram of #{@@my_string}";
else
    puts "#{@@x} is not an anagram of #{@@my_string}";
end

end #for end

end

end

object = Anagram.new
object.match


