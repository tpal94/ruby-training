
my_string = "listen"
my_string.split

#my_string = "listen";
counter = 0;
counter1 = 0;
counter2 = 0;
counter3 = 0;

w = "enlists";
x = "google";
y = "inlets";
z = "banana";

i=0;
if(w.length == my_string.length)
while (i<my_string.length) 
   if (w.include?my_string[i])
    counter = counter+1;
   end
    i= i+1;
    #puts counter;
end
end
if (counter == my_string.length)
    puts "#{w} is an anagram of #{my_string}";
else
    puts "#{w} is not an anagram of #{my_string}";
end





i=0;
if(x.length == my_string.length)
while (i<my_string.length) do
    if (x.include?my_string[i])
     counter1 = counter1+1;
    end
     i= i+1;
end
 #puts counter1
end
if (counter1 == my_string.length)
    puts "#{x} is an anagram of #{my_string}";
else
    puts "#{x} is not an anagram of #{my_string}";

end




i=0;
if(y.length == my_string.length)
while (i<my_string.length) do
    if (y.include?my_string[i])
     counter2 = counter2+1;
    end
     i= i+1;
end
 #puts counter2
end
if (counter2 == my_string.length)
    puts "#{y} is an anagram of #{my_string}";
else
    puts "#{y} is not an anagram of #{my_string}";
end




i=0;
if(z.length == my_string.length)
while (i<my_string.length) 
    if (z.include?my_string[i])
     counter3 = counter3+1;
    end
     i= i+1;
end
 #puts counter3
end 
if (counter3 == my_string.length)
    puts "#{z} is an anagram of #{my_string}";
else
    puts "#{z} is not an anagram of #{my_string}";
end