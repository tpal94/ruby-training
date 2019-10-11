class Allergies
    def initialize(item)
     @item=item
     @list = Array.new;
     @hash={cats:128,pollen:64,chocolate:32,tomatoes:16,strawberries:8,shellfish:4,peanuts:2,eggs:1}
    end
    
    def allerge_score(score)
         score = score % 256
        @hash.each do |key, value|
         if (score>=value) 
         score=score-value
         @list.push(key)
         end
     end
     @list.reverse()        
     end
     def is_allergic_to
         allergic=false
         if (@list.each { |t|
         if(t.to_s == @item.to_s)
              allergic =  true 
              break;
         else
              allergic = false
                        
         end
          })
         end
        return  puts allergic
    end
    def list_of_allergies
    return puts @list
    end
end 
puts"Enter allergic store:"
sc=gets.to_i
puts"Enter Item:"
item=gets.chomp 
allergies=Allergies.new(item) 
allergies.allerge_score(sc)
allergies.is_allergic_to
allergies.list_of_allergies
