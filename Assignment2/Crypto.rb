class Crypto
  def initialize
    @freq=Array.new
  end
  def solveCryptoGraphic(s1,s2,s3)
    l1=s1.length
    l2=s2.length
    l3=s3.length
    count=0
    pair=Hash.new
   for i in 0..(l1-1)
    @freq.push(s1[i])
   end
   for i in 0..(l2-1)
    @freq.push(s2[i])
   end
   for i in 0..(l3-1)
    @freq.push(s3[i])
   end
   @freq=@freq.uniq
   #puts freq
   count=@freq.length()
   #puts count
   if count>10
    puts "Invalid String"
   end
#  i in 0..(count-1)
#     pair[freq[i]]=0
#     puts pair
    return permutation(count, pair, 0, s1, s2, s3); 
  end
 
  def permutation(count,pair,n,s1,s2,s3)
    use=Array.new(count)
    for i in 0..count-1
      use[i]=0
    end
    if n == count - 1
    # check all numbers not used yet 
    for  i in 0..count-1
    if use[i] ==0
      pair[@freq[n]] = i 
      if (check(pair, count, s1, s2, s3) == 1) 
        puts "Solution found: " 
             # j in 0..count-1 
              puts pair
            # end
              return true; 
        end
      end
    end 
    return false; 
  end 
    for i in 0..count-1
     # integer not used yet 
    if use[i]==0 
      #/ assign char at index n integer i 
      pair[@freq[n]] = i
          # puts pair
      # mark it as not available other char 
      use[i] = 1
     permutation(count,pair, n + 1, s1, s2, s3)
        return true
    
      # backtrack all other possible solutions 
      use[i] =0     
   end
  end
  return false
  end 
  def check(pair, count,s1, s2,s3) 
     val1 = 0
     val2 = 0
     val3 = 0
     m = 1
     l1=s1.length
     l2=s2.length
    l3=s3.length
   x=l1-1
    y=l2-1
   z= l3-1
#calculate number corresponding to first string 
while x >= 0 
 ch = s1[x]; 
for j in 0..count-1
if pair[j] == ch
break
end
val1 += m * pair[@freq[j]] 
m *= 10; 
end
x=x-1
m = 1; 
end
# calculate number corresponding to second string 
while y >= 0 
  ch = s1[y]; 
 for j in 0..count-1
 if pair[j] == ch 
 break
 end
 val2 += m * pair[@freq[j]] 
 m *= 10; 
 end
 y=y-1
 m = 1; 
 end
# calculate number corresponding to third string 
while z >= 0 
  ch = s1[z]; 
 for j in 0..count-1
 if pair[j] == ch 
 break
 end
 val3 += m * pair[@freq[j]] 
 m *= 10; 
 end
 z=z-1
 m = 1; 
 end
end
end
puts "Enter Strings"
s1=gets.chomp 
s2=gets.chomp 
s3=gets.chomp 
crypto=Crypto.new
crypto.solveCryptoGraphic(s1,s2,s3)