module CollatzConjecture
    def self.steps(n, count = 0)
        if(n<=0)
            return "Enter a positive number.";
        else
            while(n>0)
                if(n==1)
                    break;
                elsif(n%2==0)
                    n=n/2;
                    count = count+1;
                else
                    n=3*n+1;
                    count = count+1;
                end
            end
            return count;
        end
    end
end