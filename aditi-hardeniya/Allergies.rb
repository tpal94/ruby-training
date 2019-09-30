
  $list = Array.new;
    def foo(score)
           # $list = Array.new;
        $score=score
            #ignore non-$listergen numbers
            $score = $score % 256
            
            if $score >= 128
                $list.push('cats')
                $score -= 128
            end
            if $score >= 64
                $list.push('pollen') 
                $score -= 64
            end
            if $score >= 32
             $list.push('chocolate')
                $score -= 32
            end
            if $score >= 16
                $list.push('tomatoes')
                $score -= 16
            end
            if $score >= 8
                $list.push('strawberries')
                $score -= 8
            end
            if $score >= 4
                $list.push('shellfish')
                $score -= 4
            end
            if $score >= 2
                $list.push('peanuts')
                $score -= 2
            end
            if $score >= 1
                $list.push('eggs')
            end
            $list.reverse()        
        end
        def is_allergic_to(item)
            $allergic=false

            if (
                $list.each { |ty|
                    puts ty
                    if(ty.to_s == item.to_s)
                        $allergic =   true 
                        break;
                    else
                        $allergic = false
                        
                    end
                }
            )

            end
   return  $allergic
        end
    
        
    foo(130); 
pp = is_allergic_to("cats")
   puts pp

puts "The given list of allergies:"
 $list.each {|ty|
    puts ty}