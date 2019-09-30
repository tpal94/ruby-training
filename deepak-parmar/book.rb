puts "enter no.of books in each category"
e=Array.new(5)
$counter=0
$sum=0;
for a in 0..4 do
     e[a]=gets.to_i
end

for a in 0..4 do
    if(e[a]>0)
    $counter = $counter+1

    end
end
    for a in 0..4 do
   
$sum=$sum+e[a]            
        end
    if($counter==5)
       $sum=$sum*8
        $sum = $sum-($sum*0.25)
    end

puts $sum



