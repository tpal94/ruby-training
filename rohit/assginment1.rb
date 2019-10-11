# Program to find prangram

counter=0;
flag = 0;
puts "enter the string "
alpha_rang = Array("a".."z");
my_string = gets.chomp()
downstr = my_string.downcase

while(counter<alpha_rang.length)
	unless(downstr.include?alpha_rang[counter])
		flag = 1
		break;
    end
    counter=counter+1
end 

puts(flag==0?"Sentence is Pangram": "Sentence is not Not Pangram")
