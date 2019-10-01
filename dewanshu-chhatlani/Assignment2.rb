class Collatz
    def conjecture()
        n = gets.chomp.to_i;
        while(n>0)
            if(n==1)
                puts n;
                break;
            elsif(n%2==0)
                puts n;
                n=n/2;
            else
                puts n;
                n=3*n+1;
            end
        end
    end
end
c = Collatz.new;
c.conjecture();