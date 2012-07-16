module Directions  
  def self.from_s(direction)
     case
       when direction == 'N'
         Navigator::NORTH
       when direction == 'E'
         Navigator::EAST
       when direction == 'W'
         Navigator::WEST
       when direction == 'S'
         Navigator::SOUTH
      end 
  end 
  
  class North
    def turn_left
      Navigator::WEST
    end
    
    def turn_right
      Navigator::EAST
    end
    
    def move(currentPosition)
      x = Integer(currentPosition[0])
      y = Integer(currentPosition[1]) + 1
    
      [x, y]
    end 
    
    def to_s
      "N"
    end
  end
  
  class West
    def turn_left
      Navigator::SOUTH
    end
  
    def turn_right
      Navigator::NORTH
    end
 
    def move(currentPosition)
      x = Integer(currentPosition[0]) - 1
      y = Integer(currentPosition[1])
   
      [x, y]
    end
    
    def to_s
      "W"
    end
  end

  class South
    def turn_left
      Navigator::EAST
    end
    
    def turn_right
      Navigator::WEST
    end
    
    def move(currentPosition)
      x = Integer(currentPosition[0])
      y = Integer(currentPosition[1]) - 1
      
      [x, y]
    end 
    
    def to_s
      "S"
    end
  end
  
  class East 
    def turn_left
      Navigator::NORTH
    end
    
    def turn_right
      Navigator::SOUTH
    end
    
    def move(currentPosition)
      x = Integer(currentPosition[0]) + 1
      y = Integer(currentPosition[1])
      
      [x, y]
    end
    
    def to_s
      "E"
    end
  end  
  
end
