class Diamond

     p = ("a".."z").to_a

       puts "Diamond for letter"
        str=gets.chomp.to_s

for i in 0..25
if (str.eql?p[i])

break;
end
end

for j in 0..(i)
for k in 0..(2*i)

    if( j==0 )
        if(k == i )

         print " #{p[j]} "
         else
         print " . "
         end
    else

        if(k==i-j || k==i+j )

            print " #{p[j]} "
         else 
         print " . "
         end

    end

end
puts "\n"
end


    while(j>0)
      q=0
        while(q<=2*i)

            if(j==1)
        
               
                if(q == i )

                print " #{p[j-1]} " 
  
                else
                print " . "
                end
            else

                  if(q==i+j-1 || q==i-(j-1))
                 print " #{p[j-1]} " 
                  else
                  print " . "
                 end

            end    
            q=q+1
  
          end
         puts"\n"
          j=j-1
     end
end 
