class Rover
  attr_accessor :direction, :position
  
  def initialize(direction, position=[0,0])
    @direction = direction
  end
  
  def turn_left
    @direction = :west
  end
  
  def turn_right
    @direction = :east
  end
  
  def move
    @position = [0,1]
  end  
end            
