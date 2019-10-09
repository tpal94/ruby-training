

class Gadi 
    
    Total_min = 24*60
    @minutes=0
    def set_times(hours, minutes = 0)
        @minutes=60 * hours + minutes     
        @minutes
   
    end
  
    def add_minutes(minutes)
      @minutes = (@minutes + minutes) % Total_min
    end

    def subtract_minutes(minutes)
        @minutes = (@minutes - minutes) % Total_min
     
    end

    
    def to_print
      "#{@minutes / 60}:#{@minutes % 60}"
    end
  
   
  end
  
