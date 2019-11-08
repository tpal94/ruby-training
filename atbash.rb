class Atbash

    puts "Enter text to decode or decode"
    @@str = gets.chomp.downcase.gsub(/\s+/, "");
    
    def decode
    plain = @@str.reverse
    cipher = Array.new;
        i = 0;
        while(i<@@str.length)
           @@str[i]=plain[i]
                     cipher.insert(i, @@str[i]);
                i=i+1;
        end
    
    puts cipher;
    
    end #function
    end #class
    
    obj = Atbash.new
    obj.decode