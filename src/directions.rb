module Directions  
  
  class North
    def turn_left
      Directions::WEST
    end
    
    def turn_right
      Directions::EAST
    end
    
    def move(currentPosition)
      x = currentPosition[0]
      y = currentPosition[1] + 1
    
      [x, y]
    end  
  end
  
  class West
    def turn_left
      Directions::SOUTH
    end
  
    def turn_right
      Directions::NORTH
    end
 
    def move(currentPosition)
      x = currentPosition[0] - 1
      y = currentPosition[1]
   
      [x, y]
    end
  end

  class South
    def turn_left
      Directions::WEST
    end
    
    def turn_right
      Directions::EAST
    end
    
    def move(currentPosition)
      x = currentPosition[0]
      y = currentPosition[1] - 1
      
      [x, y]
    end  
  end
  
  class East
  end  
  
  
  NORTH = North.new
  WEST = West.new
  EAST = East.new
  SOUTH = South.new
end