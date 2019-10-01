puts"Enter allergic store:"
sc=gets.to_i
puts"Enter Item:"
item=gets.chomp
$list = Array.new;
$num_list=[128,64,32,16,8,4,2,1]
$item_list=['cats','pollen','chocolate','tomatoes','strawberries','shellfish','peanuts','eggs']
    def foo(score)
         #ignore non-listergen numbers
     score = score % 256
     for i in 0 .. 7
         if(score >=$num_list[i])
             score=score-($num_list[i])
             $list.push($item_list[i])
               
         end
     end


     $list.reverse()        
    end
    def is_allergic_to(items)
     allergic=false
     if ($list.each { |t|
            # puts t
        if(t.to_s == items.to_s)
             allergic =   true 
             break;
         else
             allergic = false
                        
        end
         })
        

     end
    return  allergic
    end
    
        
foo(sc); 
yes_or_no = is_allergic_to(item)
puts yes_or_no

puts "The given list of allergies"
$list.each {|ty|
puts ty}