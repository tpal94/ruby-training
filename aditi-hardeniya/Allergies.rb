class Allergies
    def initialize
        @list = Array.new;
        @num_list=[128,64,32,16,8,4,2,1]
        @item_list=['cats','pollen','chocolate','tomatoes','strawberries','shellfish','peanuts','eggs']
    end
    
    def allerge_score(score)
         #ignore non-listergen numbers
         score = score % 256
         for i in 0 .. 7
         if(score >=@num_list[i])
             score=score-(@num_list[i])
             @list.push(@item_list[i])
               
         end
    end


    @list.reverse()        
    end
    def is_allergic_to(items)
         allergic=false
         if (@list.each { |t|
         if(t.to_s == items.to_s)
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
allergies=Allergies.new 
allergies.allerge_score(sc); 
allergies.is_allergic_to(item)
allergies.list_of_allergies

