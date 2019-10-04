module Atbash


# puts "Enter text to decode or decode"
# @@str = gets.chomp.downcase.gsub(/\s+/, "");

def self.decode(str)
plain = Array("a".."z");
cipher = Array.new;
    i = 0;
    j = 0;    
    while(i<str.length)
        j=0;
        while(j<plain.length)
            if(str[i]==plain[j])
                 cipher.insert(i, plain[25-j]);
                break;
            else
            j=j+1;
            end
        end
            i=i+1;
    end
    ch = cipher[0];
    i=1
    while(i<cipher.length)
        ch = ch + cipher[i];
        i=i+1;
    end
return ch;

# rescue NoMethodError => e
#     print_exception(e, true)
# rescue => e
#     print_exception(e,false)


end #function
end #class

# obj = Atbash.new
# obj.decode