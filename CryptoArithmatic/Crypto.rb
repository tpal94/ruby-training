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
count=@freq.length()
if count>10
puts "Invalid String"
end
return permutation(count, pair, 0, s1, s2, s3); 
end
 def permutation(count,pair,n,s1,s2,s3)
use=Array.new(count)
for i in 0..count-1
use[i]=0
end
if n == count - 1
for  i in 0..count-1
if use[i] ==0
pair[@freq[n]] = i 
if (check(pair, count, s1, s2, s3) == 1) 
puts "Solution found: " 
puts pair
return true; 
end
end
end 
return false; 
end 
for i in 0..count-1
if use[i]==0 
pair[@freq[n]] = i
use[i] = 1
permutation(count,pair, n + 1, s1, s2, s3)
return true
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
  1=s1.length
  l2=s2.length
  l3=s3.length
  x=l1-1
  y=l2-1
  z= l3-1
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
if(val3 == (val1 + val2)) 
return 1; 
return 0; 
end
end 
end
puts "Enter Strings"
s1=gets.chomp 
s2=gets.chomp 
s3=gets.chomp 
crypto=Crypto.new
puts crypto.solveCryptoGraphic(s1,s2,s3)
