class CollatzConjecture
    def initialize(n)
        @num=n;
    end
    def steps(count = 0)
        if(@num<=0)
            return "Enter a positive number.";
        else
            while(@num>0)
                if(@num==1)
                    break;
                elsif(@num%2==0)
                    @num=@num/2;
                    count = count+1;
                else
                    @num=3*@num+1;
                    count = count+1;
                end
            end
            return count;
        end
    end
end
