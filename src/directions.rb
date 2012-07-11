module Directions  
  
  class North
    def turn_left
      Navigator::WEST
    end
    
    def turn_right
      Navigator::EAST
    end
    
    def move(currentPosition)
      x = currentPosition[0]
      y = currentPosition[1] + 1
    
      [x, y]
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
      x = currentPosition[0] - 1
      y = currentPosition[1]
   
      [x, y]
    end
  end

  class South
    def turn_left
      Navigator::WEST
    end
    
    def turn_right
      Navigator::EAST
    end
    
    def move(currentPosition)
      x = currentPosition[0]
      y = currentPosition[1] - 1
      
      [x, y]
    end  
  end
  
  class East
  end  
  
end
