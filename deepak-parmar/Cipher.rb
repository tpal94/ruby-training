
class Cipher
    
    def encoding(str,inc)
        @char = ''
        @str = str
        @inc = inc
        arr = Array.new
        q = Array.new
        arr = @str.chomp.downcase.split('')
        i=0

        while i<@str.length                                           
            q[i] = arr[i].ord + @inc                      #increase the char value
            if q[i]>122
              q[i] = q[i]-26
            end
          i=i+1
        end

        for a in 0..@str.length-1 do
        @char = @char +  q[a].chr                       
        end 
        @char                                           #final encoded string
    end

  def decoding(st,inn)
        @decode = st 
        @in=inn
        arr = Array.new
        q = Array.new
        arr = @decode.chomp.downcase.split('')
        i=0

        while i<@decode.length
          q[i] = arr[i].ord - @in
            if q[i]<97
             q[i] = q[i]+26
            end
          i=i+1
        end

        @decoded=''
        for a in 0..@decode.length-1 do
        @decoded = @decoded + q[a].chr
        end
        @decoded                              #decoded string 
    end

    def key(k)
          @k_str = k
          
            if @k_str.include? "aaaa"
                @str
            elsif @k_str.include? "dddd"
                @decoded
            end
    end
end   
